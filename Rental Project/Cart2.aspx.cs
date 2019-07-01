using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMake.Text = Request.QueryString["Make"].ToString();
        lblModel.Text = Request.QueryString["Model"].ToString();
        lblRentalPrice.Text = Request.QueryString["Rental Price"].ToString();

    }

    protected void btnCheckout1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Checkout.aspx?" + lblRentalPrice.Text);
    }
}