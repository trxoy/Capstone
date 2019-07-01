using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Coupes2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        Response.Redirect("Cart2.aspx?rollno=" + gr.Cells[0].Text + "&Make=" + gr.Cells[0].Text + "&Model=" + gr.Cells[1].Text + "&Rental Price=" + gr.Cells[6].Text);
    }
}
