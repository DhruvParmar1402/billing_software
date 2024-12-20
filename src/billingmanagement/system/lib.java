/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package billingmanagement.system;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Dell
 */
public class lib {
    public static Connection getcon(JFrame f)
    {
        try
        {
            return (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bms", "root",""); 
            
        }
        catch(Exception e)
        {
            JOptionPane.showConfirmDialog(f,"error occured", "error", JOptionPane.ERROR_MESSAGE);
        }
        return null;
        
    }
    public static boolean check(String str[])
    {
        int i=0;
        for(i=0;i<str.length;i++)
        {
            if(str[i].equals(""))
            {
                return false;
            }
        
          
        }
          return true;
    }
    
    public static void fillTable(JFrame f, JTable table,Object data[][]) {
        String tableTitles[] = new String[]{"Id", "Name", "Category", "Quntity", "Price"};
        boolean cellEditable[] = new boolean[]{false, false, false, false, false, false};
        table.setModel(
            new DefaultTableModel(data, tableTitles)
            {
                @Override
                public boolean isCellEditable(int rowIndex, int columnIndex) {
                    return cellEditable[columnIndex];
                }
            }
        );
    }
}
