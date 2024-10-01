using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


public class sqlsinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-32Q9FH5;Initial Catalog=DbYemekTarifi;Integrated Security=True;");
        baglan.Open();
        return baglan;
    }
}