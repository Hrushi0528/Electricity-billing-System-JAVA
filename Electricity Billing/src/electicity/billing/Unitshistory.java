/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package electicity.billing;

import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;


public class Unitshistory extends javax.swing.JFrame {
    
    Connection con1;
    public Unitshistory(String s1) {
        initComponents();
        show_user(s1);
        userList( s1);
    }
    public Unitshistory() {
        initComponents();
    }

    public ArrayList<user1> userList(String s3){
        ArrayList<user1> usersList=new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con1=DriverManager.getConnection("jdbc:mysql://localhost/electricitybilling","hrushi","kp@143" );
            String q="select * from unitshistory where meterno="+s3;
            Statement st=con1.createStatement();
            ResultSet rs=st.executeQuery(q);
            user1 user;
            while(rs.next()){
                user=new user1(rs.getString("name"),rs.getString("meterno"),rs.getString("month"),rs.getString("year"),rs.getString("units"),rs.getString("totalcost"),rs.getString("status"));
                usersList.add(user);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Unitshistory.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Unitshistory.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usersList;
    }
    
    public void show_user(String s1){
        ArrayList<user1> list=userList(s1);
        DefaultTableModel model= (DefaultTableModel) uhistory.getModel();
        Object[] row=new Object[7];
        for(int i=0;i<list.size();i++){
           row[0]=list.get(i).getname();
           row[1]=list.get(i).getmeterno();
           row[2]=list.get(i).getmonth();
           row[3]=list.get(i).getyear();
           row[4]=list.get(i).getunits();
           row[5]=list.get(i).gettotalcost();
           row[6]=list.get(i).getstatus();
           model.addRow(row);
           
        }
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        textField1 = new java.awt.TextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        uhistory = new javax.swing.JTable();

        textField1.setText("textField1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        uhistory.setBackground(new java.awt.Color(0, 255, 255));
        uhistory.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 153), 1, true));
        uhistory.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        uhistory.setForeground(new java.awt.Color(255, 0, 51));
        uhistory.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "name", "meterno", "month", "year", "units", "totalcost", "status"
            }
        ));
        uhistory.setSelectionBackground(new java.awt.Color(255, 255, 255));
        uhistory.setSelectionForeground(new java.awt.Color(255, 0, 51));
        uhistory.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                uhistoryKeyPressed(evt);
            }
        });
        jScrollPane1.setViewportView(uhistory);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 743, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 327, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void uhistoryKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_uhistoryKeyPressed
        setVisible(false);
    }//GEN-LAST:event_uhistoryKeyPressed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Unitshistory.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Unitshistory.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Unitshistory.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Unitshistory.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Unitshistory().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private java.awt.TextField textField1;
    private javax.swing.JTable uhistory;
    // End of variables declaration//GEN-END:variables
}
