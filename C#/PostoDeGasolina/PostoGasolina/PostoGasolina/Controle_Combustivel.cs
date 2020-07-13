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
    public partial class Controle_Combustivel : Form
    {
        public Controle_Combustivel()
        {
            InitializeComponent();
            Conexao con = new Conexao();
            ArrayList dados = con.buscarCombustivel(1);
            txb_est_gasolina.Text = dados[3].ToString();
            txb_vl_gasolina.Text = dados[2].ToString();
            con.fecharConexao();
            ArrayList dados2 = con.buscarCombustivel(2);
            txb_est_aditivada.Text = dados2[3].ToString();
            txb_vl_aditivada.Text = dados2[2].ToString();
            con.fecharConexao();
            ArrayList dados3 = con.buscarCombustivel(3);
            txb_est_etanol.Text = dados3[3].ToString();
            txb_vl_etanol.Text = dados3[2].ToString();
            con.fecharConexao();
            ArrayList dados4 = con.buscarCombustivel(4);
            txb_est_diesel.Text = dados4[3].ToString();
            txb_vl_diesel.Text = dados4[2].ToString();
            con.fecharConexao();
            ArrayList dados5 = con.buscarCombustivel(5);
            txb_est_gnv.Text = dados5[3].ToString();
            txb_vl_gnv.Text = dados5[2].ToString();
            con.fecharConexao();
        }

        private void btn_vl_alt_gasolina_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 1;
                float preco = float.Parse(txb_vl_alt_gasolina.Text);
                con.attPreco(num, preco);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_vl_gasolina.Text = dados[2].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_es_alt_gasolina_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 1;
                
                float qt = float.Parse(txb_est_alt_gasolina.Text) + float.Parse(txb_est_gasolina.Text);
                con.attQt(num, qt);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_est_gasolina.Text = dados[3].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_vl_alt_aditivada_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 2;
                float preco = float.Parse(txb_vl_alt_aditivada.Text);
                con.attPreco(num, preco);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_vl_aditivada.Text = dados[2].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_est_alt_aditivada_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 2;

                float qt = float.Parse(txb_est_alt_aditivada.Text) + float.Parse(txb_est_aditivada.Text);
                con.attQt(num, qt);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_est_aditivada.Text = dados[3].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_vl_alt_etanol_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 3;
                float preco = float.Parse(txb_vl_alt_etanol.Text);
                con.attPreco(num, preco);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_vl_etanol.Text = dados[2].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_est_alt_etanol_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 3;

                float qt = float.Parse(txb_est_alt_etanol.Text) + float.Parse(txb_est_etanol.Text);
                con.attQt(num, qt);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_est_etanol.Text = dados[3].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_vl_alt_diesel_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 4;
                float preco = float.Parse(txb_vl_alt_diesel.Text);
                con.attPreco(num, preco);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_vl_diesel.Text = dados[2].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_est_alt_diesel_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 4;

                float qt = float.Parse(txb_est_alt_diesel.Text) + float.Parse(txb_est_diesel.Text);
                con.attQt(num, qt);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_est_diesel.Text = dados[3].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_vl_alt_gnv_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 5;
                float preco = float.Parse(txb_vl_alt_gnv.Text);
                con.attPreco(num, preco);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_vl_gnv.Text = dados[2].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_est_alt_gnv_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = 5;

                float qt = float.Parse(txb_est_alt_gnv.Text) + float.Parse(txb_est_gnv.Text);
                con.attQt(num, qt);
                con.fecharConexao();
                ArrayList dados = con.buscarCombustivel(num);
                txb_est_gnv.Text = dados[3].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }

        private void btn_ctrl_voltar_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            Start inicio = new Start();
            inicio.ShowDialog();
        }
    }
}
