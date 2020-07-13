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
    public partial class Controle_Conveniencia : Form
    {
        public Controle_Conveniencia()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            Start inicio = new Start();
            inicio.ShowDialog();
        }

        private void btn_buscar_prod_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int id = 0;
                if (txb_cod_prod.Text == "")
                {
                    txb_cod_prod.Text = 1.ToString();
                }
                id = int.Parse(txb_cod_prod.Text.ToString());
                if(id <= 0 )
                {
                    MessageBox.Show("Digite um numero valido!");
                }
                else { }
                ArrayList produtos = con.buscarProduto(id);
                //MessageBox.Show("Id: " + produtos[0] + " - Nome do produto: " + produtos[1]);
                txb_nome_prod.Text = produtos[1].ToString();
                txb_vl_prod.Text = produtos[2].ToString();
                txb_categoria_prod.Text = produtos[4].ToString();

                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco!" + ex.ToString());
            }
        }

        private void btn_inserir_prod_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                string nome = txb_nome_prod.Text;
                double preco = double.Parse(txb_vl_prod.Text);
                string data = "12/06/2019";
                int idCategoria = int.Parse(txb_categoria_prod.Text);
                con.inserirProduto(nome, preco, data, idCategoria);
                MessageBox.Show("Produto cadastrado com sucesso!");
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco!\n " + ex.ToString() );
            }
        }

        private void btn_alterar_prod_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int id = int.Parse(txb_cod_prod.Text);
                string nome = txb_nome_prod.Text;
                double preco = double.Parse(txb_vl_prod.Text);
                string data = "12/06/2019";
                int idCategoria = int.Parse(txb_categoria_prod.Text);
                con.atualizarProduto(id, nome, preco, data, idCategoria);
                MessageBox.Show("Produto atualizado!");
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
    }
}
