using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Collections;

namespace Pokedex_Claudio_RM06286
{
    class Conexao
    {
        private string path = "server=localhost;port=3307;User Id=root;database=db_pokedex;password=usbw";
        private MySqlConnection myCon;
        private string selectPoke = "SELECT `cd_poke` as 'NUM', `nm_poke` as 'NAME', `ds_hp` as 'HP', `ds_atk` as 'ATK', `ds_def` as 'DEF', `ds_spAtk` as 'Sp. ATK', `ds_spDef` as 'Sp. DEF', `ds_speed` as 'SPEED', `cd_tipo1`, t1.nm_tipo as tipo1, `cd_tipo2`, t2.nm_tipo as tipo2 FROM `tb_poke` as p inner join tb_tipo as t1 on t1.cd_tipo = p.cd_tipo1 inner join tb_tipo as t2 on t2.cd_tipo = p.cd_tipo2";

        public MySqlConnection MyCon
        {
            get
            {
                return myCon;
            }

            set
            {
                myCon = value;
            }
        }

        public string SelectPoke
        {
            get
            {
                return selectPoke;
            }

            set
            {
                selectPoke = value;
            }
        }

        public Conexao()
        {
            MyCon = new MySqlConnection(path);
        }

        public void abrirConexao()
        {
            MyCon.Open();
        }

        public void fecharConexao()
        {
            MyCon.Close();
        }

        public ArrayList buscarPokemon(int cd)
        {
            ArrayList pokemon = new ArrayList();
            abrirConexao();

            MySqlCommand comando = new MySqlCommand("SELECT `cd_poke`, `nm_poke`, `ds_hp`, `ds_atk`, `ds_def`, `ds_spAtk`, `ds_spDef`, `ds_speed`, `cd_tipo1`, t1.nm_tipo as tipo1, `cd_tipo2`, t2.nm_tipo as tipo2 FROM `tb_poke` as p inner join tb_tipo as t1 on t1.cd_tipo = p.cd_tipo1 inner join tb_tipo as t2 on t2.cd_tipo = p.cd_tipo2 where cd_poke=?", MyCon);
            comando.CommandType = System.Data.CommandType.Text;


            comando.Parameters.Clear();
            comando.Parameters.Add("@cd_poke", MySqlDbType.Int32).Value = cd;

            //Recebe o conteúdo do banco
            MySqlDataReader dr;
            dr = comando.ExecuteReader();

            dr.Read();
            pokemon.Add(dr.GetInt32(0));
            pokemon.Add(dr.GetString(1));
            pokemon.Add(dr.GetInt32(2));
            pokemon.Add(dr.GetInt32(3));
            pokemon.Add(dr.GetInt32(4));
            pokemon.Add(dr.GetInt32(5));
            pokemon.Add(dr.GetInt32(6));
            pokemon.Add(dr.GetInt32(7));
            pokemon.Add(dr.GetInt32(8));
            pokemon.Add(dr.GetString(9));
            pokemon.Add(dr.GetInt32(10));
            pokemon.Add(dr.GetString(11));

            return pokemon;
        }

        public ArrayList buscaTipo(int cd)
        {
            ArrayList tipopoke = new ArrayList();
            abrirConexao();

            MySqlCommand comando = new MySqlCommand("SELECT `cd_tipo`, `nm_tipo` FROM tb_tipo where cd_tipo=?", MyCon);
            comando.CommandType = System.Data.CommandType.Text;


            comando.Parameters.Clear();
            comando.Parameters.Add("@cd_tipo", MySqlDbType.Int32).Value = cd;

            //Recebe o conteúdo do banco
            MySqlDataReader dr;
            dr = comando.ExecuteReader();

            dr.Read();
            tipopoke.Add(dr.GetInt32(0));
            tipopoke.Add(dr.GetString(1));

            return tipopoke;
        }

        public void inserirPokemon(int cd,string nome, int hp, int atk, int def, int spAtk, int spDef, int speed, int tipo1, int tipo2)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("INSERT INTO `tb_poke`(`cd_poke`, `nm_poke`, `ds_hp`, `ds_atk`, `ds_def`, `ds_spAtk`, `ds_spDef`, `ds_speed`, `cd_tipo1`, `cd_tipo2`) VALUES (?,?,?,?,?,?,?,?,?,?)", MyCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@cd_poke", MySqlDbType.Int32).Value = cd;
            comando.Parameters.Add("@nm_poke", MySqlDbType.VarChar).Value = nome;
            comando.Parameters.Add("@ds_hp", MySqlDbType.Int32).Value = hp;
            comando.Parameters.Add("@ds_atk", MySqlDbType.Int32).Value = atk;
            comando.Parameters.Add("@ds_def", MySqlDbType.Int32).Value = def;
            comando.Parameters.Add("@ds_spAtk", MySqlDbType.Int32).Value = spAtk;
            comando.Parameters.Add("@ds_spDef", MySqlDbType.Int32).Value = spDef;
            comando.Parameters.Add("@ds_speed", MySqlDbType.Int32).Value = speed;
            comando.Parameters.Add("@cd_tipo1", MySqlDbType.Int32).Value = tipo1;
            comando.Parameters.Add("@cd_tipo2", MySqlDbType.Int32).Value = tipo2;

            comando.ExecuteNonQuery();

        }

        public void atualizarPokemon(string nome, int hp, int atk, int def, int spAtk, int spDef, int speed, int tipo1, int tipo2, int cod)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("UPDATE `tb_poke` SET `nm_poke`=?,`ds_hp`=?,`ds_atk`=?,`ds_def`=?,`ds_spAtk`=?,`ds_spDef`=?,`ds_speed`=?,`cd_tipo1`=?,`cd_tipo2`=? WHERE `cd_poke`=?", MyCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@nm_poke", MySqlDbType.VarChar).Value = nome;
            comando.Parameters.Add("@ds_hp", MySqlDbType.Int32).Value = hp;
            comando.Parameters.Add("@ds_atk", MySqlDbType.Int32).Value = atk;
            comando.Parameters.Add("@ds_def", MySqlDbType.Int32).Value = def;
            comando.Parameters.Add("@ds_spAtk", MySqlDbType.Int32).Value = spAtk;
            comando.Parameters.Add("@ds_spDef", MySqlDbType.Int32).Value = spDef;
            comando.Parameters.Add("@ds_speed", MySqlDbType.Int32).Value = speed;
            comando.Parameters.Add("@cd_tipo1", MySqlDbType.Int32).Value = tipo1;
            comando.Parameters.Add("@cd_tipo2", MySqlDbType.Int32).Value = tipo2;
            comando.Parameters.Add("@cd_poke", MySqlDbType.Int32).Value = cod;

            comando.ExecuteNonQuery();
        }

        public void deletePokemon(int cd)
        {
            abrirConexao();
            MySqlCommand comando = new MySqlCommand("DELETE FROM `tb_poke` WHERE `cd_poke`=?", MyCon);
            comando.CommandType = System.Data.CommandType.Text;

            comando.Parameters.Clear();
            comando.Parameters.Add("@cd_poke", MySqlDbType.Int32).Value = cd;

            comando.ExecuteNonQuery();
        }

        public int autoincrement()
        {
            abrirConexao();
            int cd = 0;
            MySqlCommand comando = new MySqlCommand("SELECT cd_poke FROM `tb_poke` order by cd_poke desc limit 1", MyCon);
            comando.CommandType = System.Data.CommandType.Text;
            comando.Parameters.Clear();
            //Recebe o conteúdo do banco
            MySqlDataReader dr;
            dr = comando.ExecuteReader();
            dr.Read();
            cd = dr.GetInt32(0);
            cd++;
            fecharConexao();
            return cd;
        }
        
    }
}
