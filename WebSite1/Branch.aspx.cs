using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Branch : System.Web.UI.Page
{
    String select_id,select_name;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["bname"] != null)
        {
            Response.Redirect("UpdateBranch.aspx?id="+Session["bid"]);
        }
      
        
    }
    protected void SelectedIndexChanged(Object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        Label.Text = "You selected " + row.Cells[2].Text + ".";
        Session["bid"] = row.Cells[1].Text;
        Session["bname"] = row.Cells[2].Text;
    }
}