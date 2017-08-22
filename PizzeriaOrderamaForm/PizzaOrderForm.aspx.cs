using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzeriaOrderamaForm
{
    public partial class PizzaOrderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        double total = 0;

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            if (babyRadioButton.Checked)
            {
                total = 10;
            }
            else if (mamaRadioButton.Checked)
            {
                total = 13;
            }
            else
            {
                total = 16;
            }

            if (!thinRadioButton.Checked) 
            {
                total = total + 2;
            }

            if ((pepperoni.Checked && greenPeppers.Checked && anchovies.Checked) 
                || (pepperoni.Checked && redPeppers.Checked && onions.Checked))
            {
                total = total - 2;
            }

            if (pepperoni.Checked)
            {
                total = total + 1.5;
            }
            if (onions.Checked)
            {
                total = total + .75;
            }
            if (greenPeppers.Checked)
            {
                total = total + .5;
            }
            if (redPeppers.Checked)
            {
                total = total + .75;
            }
            if (anchovies.Checked)
            {
                total = total + 2;
            }

            totalLabel.Text = "$" + total.ToString();
        }
    }
}