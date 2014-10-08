using DAL.Model;
using DAL.Persistence;
using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Persistence
{
    public class ClienteDal : Conexao
    {
       //Método Insert:
        public void Insert(Cliente c)
        {
            try
            {
                AbrirConexao();

                Cmd = new OdbcCommand("insert into cliente values(null, ?,?,?,?)", Con);

                Cmd.Parameters.AddWithValue("nome", c.Nome);
                Cmd.Parameters.AddWithValue("email", c.Email);
                Cmd.Parameters.AddWithValue("datanascimento", c.DataNascimento);
                Cmd.Parameters.AddWithValue("detalhes", c.Detalhes);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao inserir o Cliente " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
