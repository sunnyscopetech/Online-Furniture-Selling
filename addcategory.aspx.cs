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

public partial class addcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            //blString.Text = Session["FirstName"];
            lbl1.Text = Session["uname"].ToString();
        }  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Connect cun = new Connect();

        int p = cun.getMax("Select isnull(MAX(cat_id),0)+1 from category");

        string sq = "insert into category values(" + p + ", '" + TextBox1.Text + "', '" + FileUpload1.FileName + "')";

        FileUpload1.SaveAs(MapPath("~") + "\\cat\\" + FileUpload1.FileName);

        cun.addupdel(sq);
        TextBox1.Text = "";

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
}
