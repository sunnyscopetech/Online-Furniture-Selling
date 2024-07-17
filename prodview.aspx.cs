using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class prodview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        if (Session["user"] == null)
        {
            Response.Redirect("User-login.aspx");
        }
        else
        {
            lbl1.Text = "Welcome....."+Session["user"].ToString();
        }
        Connect con = new Connect();
        DataTable dt = con.getRow("Select * From product where pro_id =" + Session["prd"].ToString() + "");
        lblnm.Text = dt.Rows[0]["pro_name"].ToString();
        Label1.Text = dt.Rows[0]["budget"].ToString();
        Label2.Text = dt.Rows[0]["pro_features"].ToString();
        Image1.ImageUrl = "prod/" + dt.Rows[0]["pro_images"].ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Connect cun = new Connect();

        int p = cun.getMax("Select isnull(MAX(inq_id),0)+1 from inquiry");

        string sq = "insert into inquiry values(" + p + ", '" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + lblnm.Text + "')";

          cun.addupdel(sq);
        TextBox1.Text = "";
        TextBox4.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Response.Redirect("Default.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Default.aspx");
    }
}
