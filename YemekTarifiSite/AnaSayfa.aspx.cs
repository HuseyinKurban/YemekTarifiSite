using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AnaSayfa : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand baglan = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());
        SqlDataReader oku = baglan.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();
        
    }
}