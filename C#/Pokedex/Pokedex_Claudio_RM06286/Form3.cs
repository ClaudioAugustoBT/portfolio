using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Pokedex_Claudio_RM06286
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            MySqlDataAdapter sqlDa = new MySqlDataAdapter(con.SelectPoke, con.MyCon);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);

            datagrid.DataSource = dtbl;
        }
    }
}
