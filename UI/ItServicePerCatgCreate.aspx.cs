using IT_BLL.DBInfo;
using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Button = System.Web.UI.WebControls.Button;
using DataTable = System.Data.DataTable;
using TextBox = System.Web.UI.WebControls.TextBox;

namespace UI.IT
{
    public partial class ItServicePerCatgCreate : System.Web.UI.Page
    {
        DatabaseInfoBLL objData = new DatabaseInfoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                readData();
            }
            
        }

        protected void submitBtnClick(object sender, EventArgs e)
        {
            try
            {
                string categoryName = CategoryText.Text.Trim();
                string remarksDes = RemarksText.Text.Trim();
                DataTable dt = objData.GetInsertPerTable(categoryName, remarksDes);

                CategoryText.Text = "";
                RemarksText.Text = "";

            }
            catch
            {
                Labe4.Text = "Error! please enter carefully";
            }
        }

        protected void modifyBtnClick(object sender, EventArgs e)
        {

        }
        protected void actBtnClk(object sender, EventArgs e)
        {
            string clickHist = ((Button)sender).ClientID.ToString();
            string[] chars; ;
            chars = clickHist.Split('_');
            int clickedRow = int.Parse(chars[2]);

            int pkID = int.Parse(((Button)sender).CommandArgument.ToString());


            try
            {
                objData.GetUpActTable(pkID);
            }
            catch { }
        }
        protected void dctBtnClk(object sender, EventArgs e)
        {
            string clickHist = ((Button)sender).ClientID.ToString();
            string[] chars; ;
            chars = clickHist.Split('_');
            int clickedRow = int.Parse(chars[2]);

            int pkID = int.Parse(((Button)sender).CommandArgument.ToString());


            try
            {
                objData.GetUpDctTable(pkID);
            }
            catch { }
        }
        protected void updBtnClk(object sender, EventArgs e)
        {
            try
            {
                string clickHist = ((Button)sender).ClientID.ToString();
                string[] chars;
                chars = clickHist.Split('_');
                int clickedRow = int.Parse(chars[2]);
                int srid = int.Parse(((Button)sender).CommandArgument.ToString());
            
                TextBox name = (TextBox)dgvlist.Rows[clickedRow].FindControl("categoryName");
                string catName = name.Text.Trim();
                TextBox remark = (TextBox)dgvlist.Rows[clickedRow].FindControl("remarksDes");
                string catRemark = remark.Text.Trim();

                DataTable dt = objData.GetUpdtPermisTable(catName, catRemark, srid);
            }
            catch
            {

            }
        }
        private void readData()
        {
            DataTable dt = objData.GetShowPerTable();
            dgvlist.DataSource = dt;
            dgvlist.DataBind();
        }


       
    }
}