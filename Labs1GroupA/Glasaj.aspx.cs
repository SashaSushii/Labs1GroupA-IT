using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Labs1GroupA
{
	public partial class Glasaj : System.Web.UI.Page
	{
		private string[] subjects = { "Веб Програмирање", "Структурно Програмирање", "Математика 1", "Објектно-Ориентирано Програмирање" };
		private string[] professors= { "Проф. Др. Иванчо", "Проф. Др. Петре", "Проф. Др. Марија", "Проф. Др. Александар" };
        private string[] credits = { "6", "5.5", "5.5", "6" }; 

        protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
                foreach(string subject in subjects)
				{
					ListBox1.Items.Add(subject);
				}
				foreach(string credit in credits)
				{
					ListBox2.Items.Add(credit);
				}
            }
        }


        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
		{
			int selectedIndex = ListBox1.SelectedIndex;
			if (selectedIndex >= 0 && selectedIndex < professors.Length)
			{
				Label1.Text = "Професор: " + professors[selectedIndex];
			}
		}

		protected void Button_Clicked(object sender, EventArgs e)
		{
			Response.Redirect("UspeshnoGlasanje.aspx");
		}
    }
}