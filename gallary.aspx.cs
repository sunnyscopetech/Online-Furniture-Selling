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

public partial class gallary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Connect con = new Connect();
        DataTable dt = con.getRow("Select * From category  ");
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["cate"] = e.CommandArgument.ToString();
        Response.Redirect("gallaryprd.aspx");
    }
}
