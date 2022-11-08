/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attandance;
import model.Group;
import model.Lecturer;
import model.Room;
import model.Session;
import model.Student;
import model.Subject;
import model.TimeSlot;

/**
 *
 * @author win
 */
public class StudentDBContext extends DBContext<Student> {

    public ArrayList<Session> filter(int sid, Date from, Date to) {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql = "SELECT"
                    + "             s.stdid,s.stdname,\n"
                    + "             ses.sesid,ses.[date],ses.[index],ses.attanded\n"
                    + "            ,l.lid,l.lname\n"
                    + "            ,g.gid,g.gname\n"
                    + "            ,sub.subid,sub.subname\n"
                    + "            ,r.rid,r.rname\n"
                    + "            ,t.tid,t.[description]\n"
                    + "             FROM [Session] ses \n"
                    + "             INNER JOIN Lecturer l ON l.lid = ses.lid\n"
                    + "              INNER JOIN [Group] g ON g.gid = ses.gid\n"
                    + "             INNER JOIN Student_Group sg ON sg.gid = g.gid\n"
                    + "		    INNER JOIN Student s ON s.stdid = sg.stdid\n"
                    + "              INNER JOIN [Subject] sub ON sub.subid = g.subid\n"
                    + "              INNER JOIN Room r ON r.rid = ses.rid\n"
                    + "               INNER JOIN TimeSlot t ON t.tid = ses.tid\n"
                    + "                    WHERE  \n"
                    + "	s.stdid = ?   AND ses.[date] >= ? AND ses.[date] <= ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            stm.setDate(2, from);
            stm.setDate(3, to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session session = new Session();
                Lecturer l = new Lecturer();
                Room r = new Room();
                Group g = new Group();
                TimeSlot t = new TimeSlot();
                Subject sub = new Subject();

                session.setId(rs.getInt("sesid"));
                session.setDate(rs.getDate("date"));
                session.setIndex(rs.getInt("index"));
                Boolean x = rs.getBoolean("attanded");
                session.setAttandated(x);

                l.setId(rs.getInt("lid"));
                l.setName(rs.getString("lname"));
                session.setLecturer(l);

                g.setId(rs.getInt("gid"));
                g.setName(rs.getString("gname"));
                session.setGroup(g);

                sub.setId(rs.getInt("subid"));
                sub.setName(rs.getString("subname"));
                g.setSubject(sub);

                r.setId(rs.getInt("rid"));
                r.setName(rs.getString("rname"));
                session.setRoom(r);

                t.setId(rs.getInt("tid"));
                t.setDescription(rs.getString("description"));
                session.setTimeslot(t);

                sessions.add(session);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("error get session");
        }
        return sessions;
    }

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Student> list() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public ArrayList<Student> list(int gid) {
        try {
            ArrayList<Student> students = new ArrayList<>();
            String sql = "SELECT DISTINCT s.stdid,s.stdname\n"
                    + "FROM [Session] ses \n"
                    + "	LEFT JOIN [Group] g ON g.gid = ses.gid\n"
                    + "	INNER JOIN [Student_Group] sg ON sg.gid = g.gid\n"
                    + "	INNER JOIN Student s ON sg.stdid = s.stdid\n"
                    + "WHERE g.gid = ?";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("stdid"));
                student.setName(rs.getString("stdname"));
                students.add(student);
            }
            return students;

        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Attandance> getPresent(int stdid) {
        try {
            ArrayList<Attandance> list = new ArrayList<>();
            String sql = "Select *\n"
                    + "from Attandance\n"
                    + "where stdid = ?";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, stdid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attandance a = new Attandance();
                Student s = new Student();
                Session ses = new Session();
                
                s.setId(rs.getInt("stdid"));
                a.setStudent(s);
               
                ses.setId(rs.getInt("sesid"));
                a.setSession(ses);
                
                a.setPresent(rs.getBoolean("present"));
                a.setDescription(rs.getString("description"));
                        
                list.add(a);
            }
            return list;

        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("error getPresent()");
        }
        return null;
    }

}
