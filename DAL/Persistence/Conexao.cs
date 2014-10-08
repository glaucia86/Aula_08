using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Odbc; //ADO.NET (ODBC)

namespace DAL.Persistence
{
    public class Conexao
    {
        protected OdbcConnection Con;
        protected OdbcCommand Cmd;
        protected OdbcDataReader Dr;

        protected void AbrirConexao()
        {
            Con = new OdbcConnection("DSN=AULA");
            Con.Open();
        }

        protected void FecharConexao()
        {
            if (Con != null)
                Con.Close();
        }
    }
}
