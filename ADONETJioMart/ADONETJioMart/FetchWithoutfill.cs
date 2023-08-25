using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace ADONETJioMart
{
    class FetchWithoutfill
    {
        public static DataTable FetchData(SqlConnection sqlConnection, string query)
        {
            DataTable dataTable = new DataTable();

            using (SqlCommand command = new SqlCommand(query, sqlConnection))
            using (SqlDataReader reader = command.ExecuteReader())
            {
                // Create columns in the DataTable based on the reader's schema
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    dataTable.Columns.Add(reader.GetName(i), reader.GetFieldType(i));
                }

                // Read rows from the reader and add them to the DataTable
                while (reader.Read())
                {
                    DataRow row = dataTable.NewRow();
                    for (int i = 0; i < reader.FieldCount; i++)
                    {
                        row[i] = reader[i];
                    }
                    dataTable.Rows.Add(row);
                }
            }

            return dataTable;
        }

        static void DisplayDataTable(DataTable dataTable)
        {
            Console.WriteLine($"Table: {dataTable.TableName}");
            Console.WriteLine("----------------------");

            foreach (DataColumn column in dataTable.Columns)
            {
                Console.Write($"{column.ColumnName,-15}");
            }
            Console.WriteLine();

            foreach (DataRow row in dataTable.Rows)
            {
                foreach (var item in row.ItemArray)
                {
                    Console.Write($"{item,-15}");
                }
                Console.WriteLine();
            }
        }
    }
}
/*
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString = "your_connection_string_here";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Fetch data from the database for Table1
                DataTable table1 = FetchData(connection, "SELECT * FROM Table1");

                // Fetch data from the database for Table2
                DataTable table2 = FetchData(connection, "SELECT * FROM Table2");

                // Display the contents of both DataTables
                DisplayDataTable(table1);
                Console.WriteLine("\n----------------------\n");
                DisplayDataTable(table2);
            }
        }

        
    }
}
*/