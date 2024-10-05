using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class OnaylıYorumDuzenle : System.Web.UI.Page
{
    sqlsinif bgl=new sqlsinif();

    string yorumid = "";
    protected void Page_Load(object sender, EventArgs e)
    {


            yorumid = Request.QueryString["Yorumid"];

        


        SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_Yorumlar\r\ninner join Tbl_Yemekler\r\non Tbl_Yemekler.Yemekid=Tbl_Yorumlar.Yemekid\r\n where Yorumid=@p1 ", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", yorumid);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            txtad.Text = dr[0].ToString();
            txtmail.Text = dr[1].ToString();
            txticerik.Text = dr[2].ToString();
            txtyemek.Text = dr[3].ToString();

        }
        bgl.baglanti().Close();

    }



    protected void btnonaykaldir_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Tbl_Yorumlar  set YorumOnay=0  where Yorumid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", yorumid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        txtad.Text = "";
        txticerik.Text = "";
        txtmail.Text = "";
        txtyemek.Text = "";
    }
}