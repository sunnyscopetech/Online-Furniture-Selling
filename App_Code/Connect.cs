﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Connect
/// </summary>
public class Connect
{
    SqlConnection cn = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    SqlDataAdapter da = null;
    public Connect()
    {
       // cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\aaftab-2022\furniture\furn\App_Data\furn.mdf;Integrated Security=True;Connect Timeout=30");
        cn = new SqlConnection(@"Data Source=LAPTOP-B807N658;Initial Catalog=dbfurniture;Integrated Security=True");
    }
    public bool check_data(string sQ)
    {
        cn.Open();
        cmd = new SqlCommand(sQ, cn);
        dr = cmd.ExecuteReader();
        bool chk = dr.HasRows;
        dr.Close();
        cn.Close();
        return chk;
    }
    public void addupdel(string sQ)
    {
        cn.Open();
        cmd = new SqlCommand(sQ, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataTable getRow(string sQ)
    {
        da = new SqlDataAdapter(sQ, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public int getMax(string sQ)
    {
        int max = 0;
        cn.Open();
        cmd = new SqlCommand(sQ, cn);
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr[0].ToString() != "")
            max = int.Parse(dr[0].ToString());
        dr.Close();
        cn.Close();
        return max;
    }
}
