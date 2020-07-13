using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Collections;

namespace produtos_RM06286
{
    class Conexao
    {
        private string path = "server=localhost;port=3307;User Id=root;password=usbw;database=produtos";
        private MySqlConnection myCon;

        public Conexao()
        {
            myCon = new MySqlConnection(path);
        }

        public void abrirConexao()
        {
            myCon.Open();
        }
        
        public void fecharConexao()
        {
            myCon.Close();
        }

        public ArrayList buscarProdutos(int cd)
        {
            ArrayList produtos = new ArrayList();
            abrirConexao();

            MySqlCommand comando = new MySqlCommand("select * from produto where cd_produto=?", myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@cd_produto", MySqlDbType.Int32).Value = cd;

            MySqlDataReader dr;
            dr = comando.ExecuteReader();

            dr.Read();

            produtos.Add(dr.GetInt32(0));
            produtos.Add(dr.GetString(1));
            produtos.Add(dr.GetDouble(2));
            produtos.Add(dr.GetString(3));
            produtos.Add(dr.GetInt32(4));

            return produtos;
        }

        public void insertProduto(string nome, float preco, string data, int cd_categoria)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("INSERT INTO produto (cd_produto,nm_produto,vl_preco,ds_data,cd_categoria) VALUES (NULL, ?, ?, ?, ?)",myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@nm_produto", MySqlDbType.VarChar).Value = nome;
            comando.Parameters.Add("@vl_preco", MySqlDbType.Decimal).Value = preco;
            comando.Parameters.Add("@ds_data", MySqlDbType.VarChar).Value = data;
            comando.Parameters.Add("@cd_categoria", MySqlDbType.Int32).Value = cd_categoria;

            comando.ExecuteNonQuery();
        }

        public void updateProduto(int cd, string nome, float preco, string data, int cd_categoria)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("Update produto set nm_produto = ? ,vl_preco = ? , ds_data = ? , cd_categoria = ? where cd_produto = ?", myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@nm_produto", MySqlDbType.VarChar).Value = nome;
            comando.Parameters.Add("@vl_preco", MySqlDbType.Decimal).Value = preco;
            comando.Parameters.Add("@ds_data", MySqlDbType.VarChar).Value = data;
            comando.Parameters.Add("@cd_categoria", MySqlDbType.Int32).Value = cd_categoria;
            comando.Parameters.Add("@cd_produto", MySqlDbType.Int32).Value = cd;

            comando.ExecuteNonQuery();
        }

        public void deleteProduto(int cd)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("DELETE FROM produto WHERE cd_produto = ?", myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            
            comando.Parameters.Add("@cd_produto", MySqlDbType.Int32).Value = cd;

            comando.ExecuteNonQuery();
        }
    }
}

