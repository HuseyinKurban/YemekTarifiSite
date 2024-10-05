using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string tarifid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        tarifid = Request.QueryString["Tarifid"];
        if (Page.IsPostBack == false)
        {

            //kategori listesi
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

            //tarif listesi
            SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", tarifid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txttarifad.Text = dr[1].ToString();
                txttarifmalzeme.Text = dr[2].ToString();
                txtyapilis.Text = dr[3].ToString();

                txtoneren.Text = dr[5].ToString();
                txtonerenmail.Text = dr[6].ToString();
            }
            bgl.baglanti().Close();
        }
    }

    protected void btnOnayla_Click(object sender, EventArgs e)
    {
        //durum güncelleme
        SqlCommand komut = new SqlCommand("update  Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", tarifid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //yemeği ana sayfaya ekleme
        SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4) ", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", txttarifad.Text);
        komut2.Parameters.AddWithValue("@p2", txttarifmalzeme.Text);
        komut2.Parameters.AddWithValue("@p3", txtyapilis.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();

        //kategori adet arttırma
        SqlCommand komut3=new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1",bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();

        txttarifad.Text = "";
        txttarifmalzeme.Text = "";
        txtyapilis.Text = "";
        txtoneren.Text = "";
        txtonerenmail.Text = "";
    }
}