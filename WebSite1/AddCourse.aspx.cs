using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCourse : System.Web.UI.Page
{
    DBhandler db;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        db = new DBhandler();
        db.addCourse(TextBoxBranch.Text,TextBoxID.Text,TextBoxCourse.Text,TextBoxSem.Text);

        Response.Redirect("Course.aspx"); 

    }
}