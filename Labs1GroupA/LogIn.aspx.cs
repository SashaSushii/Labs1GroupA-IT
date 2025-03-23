using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Labs1GroupA
{
	public partial class LogIn : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			string ime = TextBox1.Text;
			string lozinka = TextBox2.Text;
			string mail = TextBox3.Text;

			string format = @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
			if(!string.IsNullOrEmpty(ime)&& !string.IsNullOrEmpty(lozinka) && !string.IsNullOrEmpty(mail) && Regex.IsMatch(mail, format))
			{
				Response.Redirect("Glasaj.aspx");
			}
			else
			{
				Response.Write("Невалидни податоци. Ве молиме проверете ги внесените информации.");
			}
			
		}
        
    }
}