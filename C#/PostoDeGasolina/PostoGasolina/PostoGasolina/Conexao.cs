using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Collections;


namespace PostoGasolina
{
    class Conexao
    {
        private string path = "server=localhost;port=3307;User Id=root;password=usbw;database=db_posto";
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

        public ArrayList acessoConta(string usuario, string senha)
        {
            ArrayList dados = new ArrayList();
            abrirConexao();

            MySqlCommand comando = new MySqlCommand("select * from tb_usuario where nm_usuario=? and ds_senha=?", myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@nm_usuario", MySqlDbType.String).Value = usuario;
            comando.Parameters.Add("@ds_senha", MySqlDbType.String).Value = senha;
            //receber o conteudo do banco
            MySqlDataReader dr;
            dr = comando.ExecuteReader();
            dr.Read();

            dados.Add(dr.GetString(0));
            dados.Add(dr.GetString(1));
            fecharConexao();
            return dados;
        }

        public ArrayList buscarProduto(int prod)
        {
            ArrayList dados = new ArrayList();
            abrirConexao();

            MySqlCommand comando = new MySqlCommand("select * from tb_produto where cd_produto=?", myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@cd_produto", MySqlDbType.Int32).Value = prod;
          
            //receber o conteudo do banco
            MySqlDataReader dr;
            dr = comando.ExecuteReader();
            dr.Read();

            dados.Add(dr.GetInt32(0));
            dados.Add(dr.GetString(1));
            dados.Add(dr.GetFloat(2));
            dados.Add(dr.GetString(3));
            dados.Add(dr.GetInt32(4));

            fecharConexao();
            return dados;
        }

        public void inserirProduto(string nome, double preco, string data, int idCategoria)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("INSERT INTO `tb_produto`(`cd_produto`, `nm_produto`, `vl_preco`, `ds_data`, `cd_categoria`) VALUES ( NULL, ?, ?, ?, ?)", myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@nm_produto", MySqlDbType.VarChar).Value = nome;
            comando.Parameters.Add("@vl_preco", MySqlDbType.Decimal).Value = preco;
            comando.Parameters.Add("@ds_data", MySqlDbType.VarChar).Value = data;
            comando.Parameters.Add("@cd_categoria", MySqlDbType.Int32).Value = idCategoria;

            comando.ExecuteNonQuery();

        }

        public void atualizarProduto(int id, string nome, double preco, string data, int idCategoria)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("UPDATE `tb_produto` SET `nm_produto`=?,`vl_preco`=?,`ds_data`=?,`cd_categoria`=? WHERE `cd_produto`=?", myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@nm_produto", MySqlDbType.String).Value = nome;
            comando.Parameters.Add("@vl_preco", MySqlDbType.Double).Value = preco;
            comando.Parameters.Add("@ds_data", MySqlDbType.String).Value = data;
            comando.Parameters.Add("@cd_categoria", MySqlDbType.Int32).Value = idCategoria;
            comando.Parameters.Add("@cd_produto", MySqlDbType.Int32).Value = id;

            comando.ExecuteNonQuery();

        }

        public ArrayList buscarCombustivel(int cd)
        {
            ArrayList dados = new ArrayList();
            abrirConexao();

            MySqlCommand comando = new MySqlCommand("select * from tb_combustivel where cd_combustivel=?", myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@cd_combustivel", MySqlDbType.Int32).Value = cd;

            //receber o conteudo do banco
            MySqlDataReader dr;
            dr = comando.ExecuteReader();
            dr.Read();

            dados.Add(dr.GetInt32(0));
            dados.Add(dr.GetString(1));
            dados.Add(dr.GetFloat(2));
            dados.Add(dr.GetFloat(3));

            fecharConexao();
            return dados;
        }

        public void attPreco(int cd, float preco)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("UPDATE `tb_combustivel` SET `vl_combustivel`=? WHERE `cd_combustivel`=?", myCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@vl_combustivel", MySqlDbType.Float).Value = preco;
            comando.Parameters.Add("@cd_combustivel", MySqlDbType.Int32).Value = cd;

            comando.ExecuteNonQuery();
        }

        public void attQt(int cd, float qt)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("UPDATE `tb_combustivel` SET `qt_combustivel`=? WHERE `cd_combustivel`=?", myCon);
            comando.CommandType = System.Data.CommandType.Text;
            comando.Parameters.Clear();
            
            comando.Parameters.Add("@qt_combustivel", MySqlDbType.Float).Value = qt;
            comando.Parameters.Add("@cd_combustivel", MySqlDbType.Int32).Value = cd;

            comando.ExecuteNonQuery();
        }


    }
}
