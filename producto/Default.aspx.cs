using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace producto
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex =
                                         Int32.Parse(RadioButtonList1.SelectedValue);

        }

        protected void consulta_Click(object sender, EventArgs e)
        {
            InfoProducto.Text = " Información de Producto:  " + " Nombre: " + nombre.Text + " Codigo: " + codigo.Text + " Cantidad: " + cantidad.Text + " Precio: " + precio.Text;
        }

        protected void consultacli_Click(object sender, EventArgs e)
        {
            InfoCli.Text= " Información de Cliente:  " + " Nombre: " + nombrecli.Text + " Apellido: " + apellidocli.Text + " Codigo: " + codigocli.Text + " Dirección: " + direccioncli.Text;
        }
        protected void consultapro_Click(object sender, EventArgs e)
        {
            InfoPro.Text = " Información de Proveedor:  " + " Nombre: " + nombrepro.Text + " Apellido: " + apellidopro.Text + " Codigo: " + codigopro.Text + " RUC: " + ruc.Text;
        }
    }
}