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

public partial class addprod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Connect cun = new Connect();

        int p = cun.getMax("Select isnull(MAX(pro_id),0)+1 from product");

        string sq = "insert into product values(" + p + ", '" + TextBox1.Text + "', '" + DropDownList1.Text + "', '" + TextBox4.Text + "', '" + FileUpload1.FileName + "', '" + TextBox3.Text+ "')";

        FileUpload1.SaveAs(MapPath("~") + "\\prod\\" + FileUpload1.FileName);

        cun.addupdel(sq);
        TextBox1.Text = "";
        TextBox4.Text = "";
        TextBox3.Text = "";
    }
}
