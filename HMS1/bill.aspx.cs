using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS1
{
    public partial class bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label9.Text = "Patient Name";
            Label10.Text = "Gender";
            Label11.Text = "Age";
            Label12.Text = "Doctor Fee";
            Label13.Text = "Service Charge per day";
            Label14.Text = "No. of days admitted";
            Label15.Text = "Medicine fee";
            Label16.Text = "GST(30% of Service Charge)";
            Label17.Text = "Total Amount";
            Label18.Text = TextBox1.Text;
            Label19.Text = TextBox2.Text;
            Label20.Text = TextBox3.Text;
            Label21.Text = "Rs. "+TextBox4.Text;
            Label22.Text = "Rs. "+TextBox5.Text;
            Label23.Text = TextBox7.Text;
            Label24.Text = "Rs. "+TextBox6.Text;
            int totalServiceCharge = int.Parse(TextBox5.Text) * int.Parse(TextBox7.Text);
            int gst = ((30 * totalServiceCharge) / 100);
            Label25.Text = "Rs. " + gst.ToString();

            int totalAmount=int.Parse(TextBox4.Text) + int.Parse(TextBox6.Text) + totalServiceCharge + gst;
            Label26.Text = "Rs. "+totalAmount.ToString();
            int count = 0;
            count = totalAmount;
            if (count >= 0)
            {
                Label8.Text = "Bill Generated Successfully!!!";
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

    }
}