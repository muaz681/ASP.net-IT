using IT_BLL.DBInfo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataTable = System.Data.DataTable;
using System.Xml.Linq;
using System.ComponentModel;
using Utility;

namespace UI.IT
{
    public partial class NahianBhaiDetails : System.Web.UI.Page
    {
        DatabaseInfoBLL readTest = new DatabaseInfoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                edit_List();
                
            }
        }
        
        protected void btnUpdateClick(object sender, EventArgs e)
        {
            try 
            {
                //if (Request.QueryString["type"] == "id")
                //{

                //}
                string clickHist = ((Button)sender).ClientID.ToString();
                string[] chars;
                chars = clickHist.Split('_');
                int clickedRow = int.Parse(chars[2]);

                int srid = int.Parse(((Button)sender).CommandArgument.ToString());
                TextBox name = (TextBox)updateItem.Rows[clickedRow].FindControl("txtName");
                string namelabel = name.Text.Trim();
                TextBox enroll = (TextBox)updateItem.Rows[clickedRow].FindControl("txtEnroll");
                int enrollId = int.Parse(enroll.Text.Trim());
                DropDownList type = (DropDownList)updateItem.Rows[clickedRow].FindControl("typeList");
                int typeId = int.Parse(type.SelectedValue.Trim());
                int primaryID =  int.Parse(Request.QueryString["ID"]);

                DatabaseInfoBLL updateObj = new DatabaseInfoBLL();
                DataTable dt = updateObj.GetUpdateDataTestTable(namelabel, enrollId, typeId, primaryID);
                //typeReadData();
            }
            catch
            {
                
            }
        }
        private void edit_List()
        {
            //DatabaseInfoBLL obj = new DatabaseInfoBLL();
            int srId = int.Parse(Request.QueryString["ID"]);
            DataTable dt = readTest.GetEditDataTestTable(srId);
            updateItem.DataSource = dt;
            updateItem.DataBind();


            int type = int.Parse(dt.Rows[0]["intType"].ToString());

            typeReadData(type);
        }
        private void typeReadData(int dbType)
        {
            DataTable myDataTable = readTest.GetTypeDataTestTable();
            DropDownList ddl = (DropDownList)updateItem.Rows[0].FindControl("typeList");
            ddl.DataSource = myDataTable;
            ddl.DataValueField = "intLeaveTypeID";
            ddl.DataTextField = "strLeaveType";
            ddl.DataBind();


            ddl.SelectedValue = dbType.ToString();
        }
    }
}