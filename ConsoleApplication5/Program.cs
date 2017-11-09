using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Data.SqlClient;

namespace ConsoleApplication5
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = "C:/Users/yhan3/Desktop/Mac_Report.txt";
            StreamReader sr = new StreamReader(path);
            string line;
            int count = 0;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=NetworkTrafficData;Integrated Security=True;Connect Timeout=1000;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");


            while ((line = sr.ReadLine()) != null)
            {
                string[] fields = line.Split('|');

                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Network_Traffic_Data](ID, MacAddress, Time, IPAddress, Switch, Port, ExternalIP, DNS, Username, WirelessController, AccessPoint, DescriptionForWired) VALUES (@ID, @MacAddress, @Time, @IPAddress, @Switch, @Port, @ExternalIP, @DNS, @Username, @WirelessController, @AccessPoint, @DescriptionForWired)", con);

                con.Open();
                cmd.Parameters.AddWithValue("@ID", count++);
                cmd.Parameters.AddWithValue("@MacAddress", fields[0].ToString());
                cmd.Parameters.AddWithValue("@Time", fields[1].ToString());
                cmd.Parameters.AddWithValue("@IPAddress", fields[2].ToString());
                cmd.Parameters.AddWithValue("@Switch", fields[3].ToString());
                cmd.Parameters.AddWithValue("@Port", fields[4].ToString());
                cmd.Parameters.AddWithValue("@ExternalIP", fields[5].ToString());
                cmd.Parameters.AddWithValue("@DNS", fields[6].ToString());
                cmd.Parameters.AddWithValue("@Username", fields[7].ToString());
                cmd.Parameters.AddWithValue("@WirelessController", fields[8].ToString());
                cmd.Parameters.AddWithValue("@AccessPoint", fields[9]);
                cmd.Parameters.AddWithValue("@DescriptionForWired", fields[10]);
                cmd.ExecuteNonQuery();
                con.Close();
            }            
        }
    }
}

