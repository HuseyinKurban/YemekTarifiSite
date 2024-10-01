using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununYemegi : System.Web.UI.Page
{

    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        SqlCommand baglan = new SqlCommand("Select * From Tbl_GununYemegi", bgl.baglanti());
        SqlDataReader oku = baglan.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();

    }
}