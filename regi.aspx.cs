using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class regi : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=LAPTOP-B807N658;Initial Catalog=dbfurniture;Integrated Security=True");
        con.Open();
        cmd = new SqlCommand("insert into regi(unm,pswd,address,mb) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + mb.Text + "')", con);
        cmd.ExecuteNonQuery();
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox1.Text = "";
            


    }
}