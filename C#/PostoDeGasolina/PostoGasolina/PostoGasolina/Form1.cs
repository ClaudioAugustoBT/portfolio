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
using System.Collections;


namespace PostoGasolina
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btn_login_Click(object sender, EventArgs e)
        {
            string usuario = txb_usuario.Text;
            string senha = txb_senha.Text;
            Conexao con = new Conexao();
            try
            {
                ArrayList dados = con.acessoConta(usuario, senha);
                con.fecharConexao();
                new Start().Visible = true;
                this.Hide();

                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco!\n\nUsuario e/ou senha Invalidos!\n\n" + ex.ToString());
            }

        }
    }
}
