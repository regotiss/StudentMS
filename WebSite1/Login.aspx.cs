using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DBhandler db;
    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBhandler();
        if (Session["username"] != null)
            Response.Redirect("Home.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String role = db.login(TextBoxUN.Text,TextBoxPass.Text);

        if (role == null)
        {
            Response.Write("<div class=show style=\"margin-top: 40px\" ><center>Login failed</center></div>");
        }
        else {
            if (role.Equals("admin"))
                Session["username"] = "admin";
            else
                Session["username"] = TextBoxUN.Text;
            Session["role"] = role;
            Response.Redirect("Home.aspx");
        }
    }
}