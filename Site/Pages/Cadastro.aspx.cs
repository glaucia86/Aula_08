using System;
using DAL.Model;
using DAL.Persistence;

namespace Site.Pages
{
    public partial class Cadastroaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCadastrarCliente(object sender, EventArgs e)
        {
            try
            {
                var c = new Cliente()
                {
                    Nome            = txtNome.Text,
                    Email           = txtEmail.Text,
                    DataNascimento  = Convert.ToDateTime(txtDataNasc.Text),
                    Detalhes        = txtDetalhes.Text
                   
                };

                var d = new ClienteDal();
                d.Insert(c);

                lblMensagem.Text = "Cliente gravado com sucesso.";

                LimparCampos();
            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            }
        }

        private void LimparCampos()
        {
            txtNome.Text        = string.Empty;
            txtEmail.Text       = string.Empty;
            txtDetalhes.Text    = string.Empty;
            txtDataNasc.Text    = string.Empty;
            lblMensagem.Text    = string.Empty;
        }
    }
}