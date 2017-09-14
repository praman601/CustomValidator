using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomValidator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void txtCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value == "")
            {
                args.IsValid = false;
            }
            else
            {
                int number;
                bool isnumber = int.TryParse(args.Value, out number);


                if (isnumber && number>0 && number % 2 == 0)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            if(Page.IsValid)
            {
                lblStatus.Text = "Data Saved";
                lblStatus.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblStatus.Text = "Data not Saved";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}