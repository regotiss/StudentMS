using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddStudentCourse : System.Web.UI.Page
{
    DBhandler db;
    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBhandler();
        if (Session["role"] == null || !(Session["role"].ToString().Equals("admin")))
            Response.Redirect("Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        db.assignStudentCourse(TextBoxPRN.Text,TextBoxCourseId.Text);
        Response.Redirect("StudentCourses.aspx");
    }
}