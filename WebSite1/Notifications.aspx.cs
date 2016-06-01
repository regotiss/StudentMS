using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Notifications : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select CourseId,Message,Username from Message,Teaches where Message.teachesid = Teaches.tid and"+
            " Teaches.CourseId in (select CourseId from StudentCourse where PRNNo = '"+Session["username"]+"')";
    }
}