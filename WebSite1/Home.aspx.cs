using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Session["username"] != null)
        {
            LabelWelcome.Text += Session["username"].ToString();
        }
        else
        {
            //Response.Redirect("Login.aspx");
            LabelWelcome.Text += "";
        }

    }
    
}