/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package electicity.billing;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author SVS
 */
public class transactionhistory extends javax.swing.JFrame {

    Connection con1;
    
    public transactionhistory(String s1) {
        initComponents();
        show_user(s1);
        userList(s1);
        
    }
    public transactionhistory() {
        initComponents();
    }

   public ArrayList<user2> userList(String kp){
        ArrayList<user2> usersList=new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con1=DriverManager.getConnection("jdbc:mysql://localhost/electricitybilling","hrushi","kp@143" );
            String q="select * from paymenthistory where meterno="+kp;
            Statement st=con1.createStatement();
            ResultSet rs=st.executeQuery(q);
            user2 user;
            while(rs.next()){
                user=new user2(rs.getString("Customername"),rs.getString("meterno"),rs.getString("cardno"),rs.getString("Amount"),rs.getString("date"));
                usersList.add(user);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Unitshistory.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Unitshistory.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usersList;
    }
    
    public void show_user(String kp){
        ArrayList<user2> list=userList(kp);
        DefaultTableModel model= (DefaultTableModel) thistory.getModel();
        Object[] row=new Object[7];
        for(int i=0;i<list.size();i++){
           row[0]=list.get(i).getCustomername();
           row[1]=list.get(i).getmeterno();
           row[2]=list.get(i).getcardno();
           row[3]=list.get(i).getAmount();
           row[4]=list.get(i).getdate();
           model.addRow(row);
           
        }
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        thistory = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        thistory.setBackground(new java.awt.Color(0, 255, 255));
        thistory.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 153), 1, true));
        thistory.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        thistory.setForeground(new java.awt.Color(255, 0, 51));
        thistory.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Customername", "meterno", "cardno", "Amount", "date"
            }
        ));
        thistory.setSelectionBackground(new java.awt.Color(255, 255, 255));
        thistory.setSelectionForeground(new java.awt.Color(255, 0, 51));
        thistory.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                thistoryKeyPressed(evt);
            }
        });
        jScrollPane1.setViewportView(thistory);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 685, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 275, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void thistoryKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_thistoryKeyPressed
       setVisible(false);
    }//GEN-LAST:event_thistoryKeyPressed

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
            java.util.logging.Logger.getLogger(transactionhistory.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(transactionhistory.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(transactionhistory.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(transactionhistory.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new transactionhistory().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable thistory;
    // End of variables declaration//GEN-END:variables
}
