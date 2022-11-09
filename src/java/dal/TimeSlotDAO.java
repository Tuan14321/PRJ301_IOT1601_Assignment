/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.TimeSlot;

/**
 *
 * @author tuann
 */
public class TimeSlotDAO extends DBContext<TimeSlot> {

    @Override
    public ArrayList<TimeSlot> list() {
        ArrayList<TimeSlot> slots = new ArrayList<>();
        try {
            String sql = "SELECT tid,[description] FROM TimeSlot";
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                TimeSlot slot = new TimeSlot();
                slot.setId(rs.getInt("tid"));
                slot.setDescription(rs.getString("description"));
                slots.add(slot);
            }

        } catch (SQLException ex) {
            Logger.getLogger(TimeSlotDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return slots;
    }

    @Override
    public void Insert(TimeSlot model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(TimeSlot model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(TimeSlot model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public TimeSlot get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
