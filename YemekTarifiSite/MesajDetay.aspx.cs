using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    sqlsinif bgl=new sqlsinif();
    string mesajid = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        mesajid = Request.QueryString["Mesajid"];

       
            SqlCommand komut = new SqlCommand("select * from Tbl_Mesajlar where Mesajid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", mesajid);
            SqlDataReader dr= komut.ExecuteReader();
            while (dr.Read())
            {
                txtgonderen.Text = dr[1].ToString();
                txtbaslik.Text = dr[2].ToString();
                txtmail.Text = dr[3].ToString();
                txticerik.Text = dr[4].ToString();
            }
            bgl.baglanti().Close();

        
    }
}