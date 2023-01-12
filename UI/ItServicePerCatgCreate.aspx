<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItServicePerCatgCreate.aspx.cs" Inherits="UI.IT.ItServicePerCatgCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/CSS/bootstrap5.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card mt-3">
                        <h3 class="card-header">IT Service Permission
                            <asp:Label ID="Labe4" class="d-block" runat="server" Text="" BorderColor="#CCCCCC" ForeColor="White" Style="background-color: #9D4D26; text-align: center"></asp:Label>
                        </h3>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
                                    <asp:TextBox class="form-control" type="text" ID="CategoryText" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label2" runat="server" Text="Remarks"></asp:Label>
                                    <asp:TextBox class="form-control" type="text" ID="RemarksText" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row py-3">
                                <div class="col-md-12">
                                    <div class="btn-group btn-group-sm d-flex" role="group" aria-label="Basic mixed styles example">
                                        <asp:Button ID="btnSubmit" runat="server" class="btn btn-sm btn-success" AutoPostBack="false" Text="Submit" OnClick="submitBtnClick" />
                                        <asp:Button class="btn btn-sm btn-warning" ID="btnModify" runat="server" OnClick="modifyBtnClick" Text="Modify" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <h4 class="card-header">Permission Category List</h4>
                        <div class="card-body">
                            <asp:GridView ID="dgvlist" runat="server" AutoGenerateColumns="False" Font-Size="12px" ShowFooter="True" CellPadding="3" FooterStyle-Font-Bold="true" FooterStyle-HorizontalAlign="Right" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" CssClass="auto-style5" Width="100%">
                                <Columns>

                                    <asp:TemplateField HeaderText="SL No." SortExpression="srId">
                                        <ItemTemplate>
                                            <asp:Label ID="intId" Font-Size="Medium" runat="server" Text='<%# Bind("intID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="left" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Category" SortExpression="intId">
                                        <ItemTemplate>
                                            <asp:TextBox class="form-control" Text='<%# Bind("strPermissionCategory") %>' ID="categoryName" runat="server"></asp:TextBox>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="left" Width="33%" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Remarks" SortExpression="srId">
                                        <ItemTemplate>
                                            <asp:TextBox class="form-control" ID="remarksDes" runat="server" Text='<%# Bind("strRemarks") %>'></asp:TextBox>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="left" Width="33%" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Action" SortExpression="srId">
                                        <ItemTemplate>
                                            <div class="btn-group btn-group-sm" role="group" aria-label="Basic mixed styles example">
                                                <asp:Button class='<%#Eval("ysnActive").ToString()=="False" ? "btn btn-sm btn-info" : "d-none" %>' ID="btnActID" runat="server" OnClick="actBtnClk" CommandArgument='<%# Eval("intID") %>' Text="Active" />
                                                <asp:Button class='<%#Eval("ysnActive").ToString()=="True" ? "btn btn-sm btn-warning" : "d-none" %>' ID="btnDctID" runat="server" Text="Deactive" OnClick="dctBtnClk" CommandArgument='<%# Eval("intID") %>' />
                                                <asp:Button class="btn btn-sm btn-success" ID="btnUpdID" runat="server" Text="Update" OnClick="updBtnClk" CommandArgument='<%# Eval("intID") %>' />
                                            </div>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="left" />
                                    </asp:TemplateField>
                                </Columns>

                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                <SortedDescendingHeaderStyle BackColor="#93451F" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="../Content/JS/bootstrap.min.js"></script>
</body>
</html>
