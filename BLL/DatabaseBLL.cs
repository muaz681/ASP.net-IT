public DataTable GetInsertPerTable(string category, string remark)
        {
            tblInternetPermissionCategoryTableAdapter obj = new tblInternetPermissionCategoryTableAdapter();
            DataTable dt = obj.GetPerInsertData(category, remark);
            return dt;
        }
        public DataTable GetShowPerTable()
        {
            tblInternetPermissionCategory1TableAdapter obj = new tblInternetPermissionCategory1TableAdapter();
            DataTable dt = obj.GetPerShowData();
            return dt;
        }
        public DataTable GetUpDctTable(int id)
        {
            tblInternetPermissionCategory2TableAdapter obj = new tblInternetPermissionCategory2TableAdapter();
            DataTable dt = obj.GetYsnDctData(id);
            return dt;
        }
        public DataTable GetUpActTable(int id)
        {
            tblInternetPermissionCategory3TableAdapter obj = new tblInternetPermissionCategory3TableAdapter();
            DataTable dt = obj.GetYsnActData(id);
            return dt;
        }

        public DataTable GetUpdtPermisTable(string category, string remark, int id)
        {
            tblInternetPermissionCategory4TableAdapter obj = new tblInternetPermissionCategory4TableAdapter();
            DataTable dt = obj.GetUpdPermisTblData(category, remark, id);
            return dt;
        }

        public DataTable GetDataTestTable(string name, int enroll, int type)
        {
           
            tblTestMuazTableAdapter obj = new tblTestMuazTableAdapter();
            DataTable dt = obj.GetData(name, enroll, type);
            return dt;
        }
        public DataTable GetReadDataTestTable()
        {
            tblTestMuaz1TableAdapter readObj = new tblTestMuaz1TableAdapter();
            DataTable result = readObj.ReadData();
            return result;
        }
        public DataTable GetTypeDataTestTable()
        {
            DataTable5TableAdapter typeObj = new DataTable5TableAdapter();
            DataTable result = typeObj.GetTypeData();
            return result;
        }
        public DataTable GetEditDataTestTable(int id)
        {
            DataTable6TableAdapter editObj = new DataTable6TableAdapter();
            DataTable result = editObj.GetEditData(id);
            return result;
        }
        public DataTable GetUpdateDataTestTable(string name, int enrollID, int typeValue, int primary)
        {

            DataTable7TableAdapter updateObj = new DataTable7TableAdapter();
            DataTable result = updateObj.GetUpdateData(name, enrollID, typeValue,primary);
            return result;
        }