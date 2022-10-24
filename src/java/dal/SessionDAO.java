/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import jakarta.servlet.jsp.jstl.sql.Result;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendance;
import model.Group;
import model.Lecturer;
import model.Room;
import model.Session;
import model.Student;
import model.Subject;
import model.TimeSlot;

/**
 *
 * @author tuann
 */
public class SessionDAO extends DBContext<Session> {

    @Override
    public void Insert(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(Session model) {
         try {
            conn.setAutoCommit(false);
            String sql = "UPDATE [Session] SET attanded = 1 WHERE sesid = ?";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setInt(1, model.getId());
            stm.executeUpdate();

            //remove old attandances
            sql = "DELETE Attandance WHERE sesid = ?";
            PreparedStatement stm_delete = conn.prepareStatement(sql);
            stm_delete.setInt(1, model.getId());
            stm_delete.executeUpdate();

            //insert new attandances
            for (Attendance att : model.getAtts()) {
                sql = "INSERT INTO [Attandance]\n"
                        + "           ([sesid]\n"
                        + "           ,[stdid]\n"
                        + "           ,[present]\n"
                        + "           ,[description]\n"
                        + "           ,[record_time])\n"
                        + "     VALUES\n"
                        + "           (?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,GETDATE())";
                PreparedStatement stm_insert = conn.prepareStatement(sql);
                stm_insert.setInt(1, model.getId());
                stm_insert.setInt(2, att.getStudent().getId());
                stm_insert.setBoolean(3, att.isPresent());
                stm_insert.setString(4, att.getDescription());
                stm_insert.executeUpdate();
            }
            conn.commit();
        } catch (SQLException ex) {
            try {
                conn.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(SessionDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
            Logger.getLogger(SessionDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(SessionDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public void Delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Session get(int id) {
        try {
            String sql = "SELECT ses.sesid,ses.[index],ses.date,ses.attanded\n"
                    + "	,g.gid,g.gname\n"
                    + "	,r.rid,r.rname\n"
                    + "	,t.tid,t.[description] tdescription\n"
                    + "	,l.lid,l.lname\n"
                    + "	,sub.subid,sub.subname\n"
                    + "	,s.stdid,s.stdname\n"
                    + "	,ISNULL(a.present,0) present, ISNULL(a.[description],'') [description]\n"
                    + "		FROM [Session] ses\n"
                    + "		INNER JOIN Room r ON r.rid = ses.rid\n"
                    + "		INNER JOIN TimeSlot t ON t.tid = ses.tid\n"
                    + "		INNER JOIN Lecturer l ON l.lid = ses.lid\n"
                    + "		INNER JOIN [Group] g ON g.gid = ses.gid\n"
                    + "		INNER JOIN [Subject] sub ON sub.subid = g.subid\n"
                    + "		INNER JOIN [Student_Group] sg ON sg.gid = g.gid\n"
                    + "		INNER JOIN [Student] s ON s.stdid = sg.stdid\n"
                    + "		LEFT JOIN Attandance a ON s.stdid = a.stdid AND ses.sesid = a.sesid\n"
                    + "WHERE ses.sesid = ?";

            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();

            Session ses = null;
            while (rs.next()) {
                if (ses == null) {
                    ses = new Session();
                    Room r = new Room();
                    r.setId(rs.getInt("rid"));
                    r.setName(rs.getString("rname"));
                    ses.setRoom(r);

                    TimeSlot t = new TimeSlot();
                    t.setId(rs.getInt("tid"));
                    t.setDescription(rs.getString("tdescription"));
                    ses.setSlot(t);

                    Group g = new Group();
                    g.setId(rs.getInt("gid"));
                    g.setName(rs.getString("gname"));
                    ses.setGroup(g);

                    Lecturer l = new Lecturer();
                    l.setId(rs.getInt("lid"));
                    l.setName(rs.getString("lname"));
                    ses.setLecturer(l);

                    Subject sub = new Subject();
                    sub.setId(rs.getInt("subid"));
                    sub.setName(rs.getString("subname"));
                    g.setSubject(sub);

                    ses.setDate(rs.getDate("date"));
                    ses.setIndex(rs.getInt("index"));
                    ses.setAttanded(rs.getBoolean("attanded"));
                }

                Student s = new Student();
                s.setId(rs.getInt("stdid"));
                s.setName(rs.getString("stdname"));
                //read attandance
                Attendance a = new Attendance();
                a.setStudent(s);
                a.setSession(ses);
                a.setPresent(rs.getBoolean("present"));
                a.setDescription(rs.getString("description"));
                ses.getAtts().add(a);
            }
            return ses;
        } catch (SQLException ex) {
            Logger.getLogger(SessionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}