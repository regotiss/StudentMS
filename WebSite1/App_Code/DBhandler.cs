using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

/// <summary>
/// Summary description for DBhandler
/// </summary>
public class DBhandler
{

    OracleConnection con;
	public DBhandler()
	{
       
        
	}
    public String login(String username,String password) {

        String role,query;
        int cnt = 0;
        if (username.Equals("Admin") && password.Equals("password"))
        {
            role = "admin";

        }
        else {

            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            if (username.StartsWith("t"))
            {
                query = "select count(*) from Teacher where username='" + username + "' and password='" + password + "'";
                role = "teacher";
            }
            else {
                query = "select count(*) from Student where PRNNo='" + username + "' and password='" + password + "'";
                role = "student";
            }
            OracleCommand cmd = new OracleCommand(query, con);
            cnt = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (cnt == 0)
            {
                role = null;
            }
            
        }
        return role;
        
    }
    public void add(String branchname) {

        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String getIDQuery = "select max(BranchId) from Branch";
            OracleCommand cmd = new OracleCommand(getIDQuery, con);

            int cnt = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            cnt++;
            String insertuser = "insert into Branch values(" + cnt + ",'" + branchname + "')";


            cmd = new OracleCommand(insertuser, con);
            cmd.ExecuteNonQuery();
       
            con.Close();
        }
        catch (Exception e1) {
            Console.Write(e1);
        }
        
    }
    public void addStudent(String prnno,String name,String branch,String contact,String addr,String email,String pass) { 
        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String getIDQuery = "select BranchId from Branch where BranchName='"+branch+"'";
            OracleCommand cmd = new OracleCommand(getIDQuery, con);

            int bid = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            
            String insertQuery = "insert into Student values('"+prnno+"','"+name+"',"+bid+",'"+contact+"','"+addr+"','"+
                                email+"','"+pass+"')";

            cmd = new OracleCommand(insertQuery, con);
            cmd.ExecuteNonQuery();
       
            con.Close();
        }
        catch (Exception e1) {
            Console.Write(e1);
        }
        
    }

    public void addTeacher(String name, String email,String qualif,String contact, String addr,String un, String pass)
    {
        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            
            
            String insertQuery = "insert into Teacher values('" + name + "','" + email + "','" + qualif + "','" + contact + "','" + addr + "','" +
                                un + "','" + pass + "')";

            OracleCommand cmd = new OracleCommand(insertQuery, con);
            cmd.ExecuteNonQuery();

            con.Close();
        }
        catch (Exception e1)
        {
            Console.Write(e1);
        }

    }
    public void addCourse(String branch, String courseID,String courseName, String sem) { 
        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String getIDQuery = "select BranchId from Branch where BranchName='"+branch+"'";
            OracleCommand cmd = new OracleCommand(getIDQuery, con);

            int bid = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            
            String insertQuery = "insert into Course values("+courseID+",'"+courseName+"',"+bid+","+sem+")";

            cmd = new OracleCommand(insertQuery, con);
            cmd.ExecuteNonQuery();
       
            con.Close();
        }
        catch (Exception e1) {
            Console.Write(e1);
        }
        
    }
    public void assignTeacherCourse(String username,String courseId) {
        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String getIDQuery = "select max(tid) from Teaches";
            OracleCommand cmd = new OracleCommand(getIDQuery, con);

            int cnt = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            cnt++;
            String insertuser = "insert into Teaches values(" + cnt + ",'" + username + "',"+courseId+")";


            cmd = new OracleCommand(insertuser, con);
            cmd.ExecuteNonQuery();

            con.Close();
        }
        catch (Exception e1)
        {
            Console.Write(e1);
        }
        
    }

    public void assignStudentCourse(String prnno, String courseId)
    {
        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            String insertuser = "insert into StudentCourse values('" + prnno + "'," + courseId + ")";

            OracleCommand cmd = new OracleCommand(insertuser, con);
            cmd.ExecuteNonQuery();

            con.Close();
        }
        catch (Exception e1)
        {
            Console.Write(e1);
        }

    }
    public void saveMessage(String username, String message,String courseId) {
        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String getIDQuery = "select max(mid) from Message";
            OracleCommand cmd = new OracleCommand(getIDQuery, con);

            int cnt = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            cnt++;

            String insertuser = "insert into Message(MID,TEACHESID,MESSAGE,SENTTIME) select "+cnt+",tid,'"+message+"',sysdate from Teaches where username='"+username+"' and CourseId="+courseId;


            cmd = new OracleCommand(insertuser, con);
            cmd.ExecuteNonQuery();

            con.Close();
        }
        catch (Exception e1)
        {
            Console.Write(e1);
        }
        
    }
    public String updateBranch(String bid,String bname) {

        String q="--";
        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            String insertuser = "UPDATE BRANCH SET BRANCHNAME='"+bname+"' WHERE BRANCHID="+bid;
            q = insertuser;
            OracleCommand cmd = new OracleCommand(insertuser, con);
            cmd.ExecuteNonQuery();

            con.Close();
        }
        catch (Exception e1)
        {
            Console.Write(e1);
        }
        return q;
    }
    public String deleteBranch(String bname)
    {

        String q = "--";
        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            String deleteq = "DELETE FROM BRANCH WHERE BRANCHNAME='"+bname+"'";
            q = deleteq;
            OracleCommand cmd = new OracleCommand(deleteq, con);
            cmd.ExecuteNonQuery();

            con.Close();
        }
        catch (Exception e1)
        {
            Console.Write(e1);
        }
        return q;
    }
    public String deleteStudent(String prnno)
    {

        String q = "--";
        try
        {
            con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            String deleteq = "DELETE FROM STUDENT WHERE PRNNO='"+prnno+"'";
            q = deleteq;
            OracleCommand cmd = new OracleCommand(deleteq, con);
            cmd.ExecuteNonQuery();

            con.Close();
        }
        catch (Exception e1)
        {
            Console.Write(e1);
        }
        return q;
    }

}