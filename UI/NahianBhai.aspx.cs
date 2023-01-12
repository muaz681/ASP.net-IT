using IT_BLL.DBInfo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utility;

using System.Data;
using DataTable = System.Data.DataTable;

namespace UI.IT
{
    public partial class NahianBhai : System.Web.UI.Page
    {
        DatabaseInfoBLL readTest = new DatabaseInfoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                readData();
                typeReadData();
            }

        }


        protected void editBtnClick(object sender, EventArgs e)
        {

            char[] delimiterChars = { '^' };
            string temp = ((Button)sender).CommandArgument.ToString();
            string[] datas = temp.Split(delimiterChars);

            String param = "Viewdetails('" + datas[0].ToString() + "')";
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "StartupScript", param, true);
        }

        protected void dltBtnClick(object sender, EventArgs e)
        {


        }
        protected void btnClick(object sender, EventArgs e)
        {
            //string name = NameText.Text.Trim();
            //int enrollInt = int.Parse(EnrollText.Text.Trim());
            //string val = TypeList.SelectedValue.Trim();
            //int typeInt = int.Parse(TypeList.SelectedValue.Trim());
            //readTest.GetDataTestTable(name, enrollInt, typeInt);
            try
            {
                string name = NameText.Text.Trim();
                int enrollInt = int.Parse(EnrollText.Text.Trim());
                int typeInt = int.Parse(TypeList.SelectedValue.Trim());
                DatabaseInfoBLL obj = new DatabaseInfoBLL();
                DataTable dt = obj.GetDataTestTable(name, enrollInt, typeInt);

                NameText.Text = "";
                EnrollText.Text = "";
                TypeList.SelectedIndex = 0;
                readData();
            }
            catch
            {
                Labe4.Text = "Error! please enter carefully";
            }


        }
        private void readData()
        {
            DataTable myDataTable = readTest.GetReadDataTestTable();
            dgvlist.DataSource = myDataTable;
            dgvlist.DataBind();
        }
        private void typeReadData()
        {
            DataTable myDataTable = readTest.GetTypeDataTestTable();
            TypeList.DataSource = myDataTable;
            TypeList.DataValueField = "intLeaveTypeID";
            TypeList.DataTextField = "strLeaveType";
            TypeList.DataBind();
        }

    }
}