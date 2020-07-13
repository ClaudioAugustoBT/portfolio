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

namespace Pokedex_Claudio_RM06286
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        //Buscar Pokemon
        private void button1_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num;
                if(tbNum.Text == "")
                {
                    num = 1;
                }else
                {
                    num = int.Parse(tbNum.Text);
                    if(num <= 0)
                    {
                        num = 1;
                    }
                }
                ArrayList dados = con.buscarPokemon(num);
                tbNum.Text = dados[0].ToString();
                tbName.Text = dados[1].ToString();
                tbHP.Text = dados[2].ToString();
                tbAtk.Text = dados[3].ToString();
                tbDef.Text = dados[4].ToString();
                tbSpAtk.Text = dados[5].ToString();
                tbSpDef.Text = dados[6].ToString();
                tbSpeed.Text = dados[7].ToString();
                tbType1.Text = dados[8].ToString();
                tbType1Name.Text = dados[9].ToString();
                tbType2.Text = dados[10].ToString();
                tbType2Name.Text = dados[11].ToString();
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }
        //alterar Pokemon
        private void button4_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = int.Parse(tbNum.Text);
                con.atualizarPokemon(tbName.Text, int.Parse(tbHP.Text), int.Parse(tbAtk.Text), int.Parse(tbDef.Text), int.Parse(tbSpAtk.Text), int.Parse(tbSpDef.Text), int.Parse(tbSpeed.Text), int.Parse(tbType1.Text), int.Parse(tbType2.Text), num);
                MessageBox.Show("Dados do Pokemon Alterado!!");

                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }
        //cadastrar
        private void button2_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                int num = con.autoincrement();
                con.inserirPokemon(num, tbName.Text, int.Parse(tbHP.Text), int.Parse(tbAtk.Text), int.Parse(tbDef.Text), int.Parse(tbSpAtk.Text), int.Parse(tbSpDef.Text), int.Parse(tbSpeed.Text), int.Parse(tbType1.Text), int.Parse(tbType2.Text));
                MessageBox.Show("Pokemon Cadastrado!!");
                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Problema na conexão com o banco! \n" + ex.ToString());
            }
        }
        //busca tipo1
        private void button5_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                if(tbType1.Text == "")
                {
                    MessageBox.Show("DIGITE UM NUMERO!");
                }else
                {
                    int num = int.Parse(tbType1.Text);
                    ArrayList tipo = con.buscaTipo(num);
                    tbType1Name.Text = tipo[1].ToString();
                }
               

                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Numero Invalido ou Problema na conexão com o banco! \n\n" + ex.ToString());
            }
        }
        //busca tipo 2
        private void button7_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                if (tbType2.Text == "")
                {
                    MessageBox.Show("DIGITE UM NUMERO!");
                }
                else
                {
                    int num = int.Parse(tbType2.Text);
                    ArrayList tipo = con.buscaTipo(num);
                    tbType2Name.Text = tipo[1].ToString();
                }
                

                con.fecharConexao();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Numero Invalido ou Problema na conexão com o banco! \n\n" + ex.ToString());
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            new Form3().Visible = true;
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Conexao con = new Conexao();
            try
            {
                if (tbNum.Text == "")
                {
                    MessageBox.Show("DIGITE UM NUMERO!");
                }
                else
                {
                    int num = int.Parse(tbNum.Text);
                    con.deletePokemon(num);
                    con.fecharConexao();
                    ArrayList dados = con.buscarPokemon(1);
                    tbNum.Text = dados[0].ToString();
                    tbName.Text = dados[1].ToString();
                    tbHP.Text = dados[2].ToString();
                    tbAtk.Text = dados[3].ToString();
                    tbDef.Text = dados[4].ToString();
                    tbSpAtk.Text = dados[5].ToString();
                    tbSpDef.Text = dados[6].ToString();
                    tbSpeed.Text = dados[7].ToString();
                    tbType1.Text = dados[8].ToString();
                    tbType1Name.Text = dados[9].ToString();
                    tbType2.Text = dados[10].ToString();
                    tbType2Name.Text = dados[11].ToString();
                    con.fecharConexao();
                }
                
                
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Numero Invalido ou Problema na conexão com o banco! \n\n" + ex.ToString());
            }
        }
    }
}
