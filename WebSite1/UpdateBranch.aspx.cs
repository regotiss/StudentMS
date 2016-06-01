using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateBranch : System.Web.UI.Page
{
    DBhandler db;
    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBhandler();

        String id=Request.QueryString["id"];
     

        if (id != null)
        {
            TextBoxBranchId.Text = id;
                   
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    { 
        String resp=db.updateBranch(TextBoxBranchId.Text,TextBoxBranchName.Text);
        
        Response.Redirect("Branch.aspx");
        //Response.Write(resp+" "+TextBoxBranchId.Text+"*"+TextBoxBranchName.Text);
    }
}