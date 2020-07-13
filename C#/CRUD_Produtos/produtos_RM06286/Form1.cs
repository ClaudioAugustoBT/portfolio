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

namespace produtos_RM06286
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void bntBuscar_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int cd = int.Parse(txCod.Text.ToString());
                ArrayList produtos = con.buscarProdutos(cd);
                //MessageBox.Show("Id: " + produtos[0] + " - Nome do produto: " + produtos[1]);
                txNome.Text = produtos[1].ToString();
                txPreco.Text = produtos[2].ToString();
                txData.Text = produtos[3].ToString();
                txCategoria.Text = produtos[4].ToString();

                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco!" + ex.ToString());
            }
        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                string nome = txNome.Text;
                float preco = float.Parse(txPreco.Text);
                string data = txData.Text;
                int cd_categoria = int.Parse(txCategoria.Text);
                con.insertProduto(nome, preco, data, cd_categoria);
                MessageBox.Show("Produto cadastrado com sucesso!");
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco!\n" + ex.ToString());
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int cd = int.Parse(txCod.Text);
                con.deleteProduto(cd);
                MessageBox.Show("Produto DELETADO!");
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int cd = int.Parse(txCod.Text);
                string nome = txNome.Text;
                float preco = float.Parse(txPreco.Text);
                string data = txData.Text;
                int cd_categoria = int.Parse(txCategoria.Text);
                con.updateProduto(cd, nome, preco, data, cd_categoria);
                MessageBox.Show("Produto atualizado!");
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
    }
}
