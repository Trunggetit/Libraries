using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using FirebirdSql.Data.FirebirdClient;

namespace Connections
{
    public sealed class ServerContext
    {

        public static string GetDatabase(string database)
        {
            DataTable table = new DataTable();

            string folder = Environment.SpecialFolder.CommonApplicationData.ToString();

            string connectionstring = @"User=SYSDBA;Password=masterkey;Database=C:\DATA\GDBTest.gdb;DataSource=localhost; Port=3050;Dialect=3;Charset=NONE;Role=;Connection lifetime=15;Pooling=true; MinPoolSize=0;MaxPoolSize=50;Packet Size=8192;ServerType=0;";

            FbConnection connect = new FbConnection(connectionstring);

            FbCommand cmd = new FbCommand();

            cmd.Connection = connect;

            cmd.CommandText = "Select * from Sysconfig";

            connect.Open();

            table.Load(cmd.ExecuteReader());

            connect.Close();

            //call database
            //search table for settings

            Dictionary<string, string> Settings = new Dictionary<string, string>();

            foreach (DataRow drow in table.Rows)
            {
                foreach (DataColumn dcol in table.Columns)
                {
                    Settings.Add(dcol.ColumnName, drow.Field<string>(dcol.ColumnName));
                }
            }

            if (Settings.ContainsValue(database))
            {
                return Settings["SETTING"];
            }
            else
            {
                return string.Empty;
            }
        }

    }

}
