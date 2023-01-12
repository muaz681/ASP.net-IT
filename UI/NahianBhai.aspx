<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NahianBhai.aspx.cs" Inherits="UI.IT.NahianBhai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"><%: Scripts.Render("~/Content/Bundle/jqueryJS") %></asp:PlaceHolder>
    <webopt:BundleReference ID="BundleReference2" runat="server" Path="~/Content/Bundle/defaultCSS" />
    <webopt:BundleReference ID="BundleReference3" runat="server" Path="~/Content/Bundle/hrCSS" />
    <script src="../Content/JS/datepickr.min.js"></script>
    <script type="text/javascript">
        function Viewdetails(id, type) {
            window.open('NahianBhaiDetails.aspx?type=' + id + '&ID=' + id, '', 'height=375, width=830, scrollbars=yes, left=250, top=200, resizable=no, title=Preview');
            /* window.open('SalesReturnDetails.aspx?ID=' + id, '', "height=375, width=830, scrollbars=yes, left=250, top=200, resizable=no, title=Preview");*/
        }
        function ViewPolicy(id) { window.open('NahianBhaiDetails.aspx?ID=' + id + "height=550, width=850, scrollbars=yes, left=300, top=250, resizable=yes, title=Preview"); }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card mt-3">
                            <div class="card-header">
                                Form
                                <asp:Label ID="Labe4" class="d-block" runat="server" Text="" BorderColor="#CCCCCC" ForeColor="White" Style="background-color: #9D4D26; text-align: center"></asp:Label>
                            </div>

                            <div class="card-body p-3">
                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                <asp:TextBox class="form-control" type="text" ID="NameText" runat="server"></asp:TextBox>

                                <asp:Label ID="Label2" runat="server" Text="Enroll"></asp:Label>
                                <asp:TextBox class="form-control" type="number" ID="EnrollText" runat="server"></asp:TextBox>

                                <asp:Label ID="Label3" runat="server" Text="Type"></asp:Label>
                                <asp:DropDownList class="form-select form-select-sm mb-3" ID="TypeList" runat="server">
                                </asp:DropDownList>
                                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                    <asp:Button class="btn btn-outline-success" ID="Button1" runat="server" OnClick="btnClick" Text="Submit" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card mt-3">
                            <div class="card-header">
                                Your List
                            </div>
                            <div class="card-body p-3">
                                <asp:GridView ID="dgvlist" runat="server" AutoGenerateColumns="False" Font-Size="12px" ShowFooter="True" CellPadding="3" FooterStyle-Font-Bold="true" FooterStyle-HorizontalAlign="Right" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" CssClass="auto-style5" Width="100%">
                                    <Columns>

                                        <asp:TemplateField HeaderText="Name" SortExpression="srId">
                                            <ItemTemplate>
                                                <asp:Label ID="txtName" Font-Size="Medium" runat="server" Text='<%# Bind("strName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Enroll" SortExpression="intId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblintId" Font-Size="Medium" runat="server" Text='<%# Bind("intEnroll") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type" SortExpression="srId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblType" Font-Size="Medium" runat="server" Text='<%# Bind("strLeaveType") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Action" SortExpression="srId">
                                            <ItemTemplate>
                                                <div class="btn-group btn-group-sm" role="group" aria-label="Basic mixed styles example">
                                                    <asp:Button ID="btnEdit" runat="server" class="btn btn-sm btn-success" AutoPostBack="false" CommandArgument='<%# Eval("intID") %>' Text="Edit" OnClick="editBtnClick" />
                                                    <asp:Button class="btn btn-sm btn-warning" ID="btnDlt" runat="server" OnClick="dltBtnClick" Text="Delete" CommandArgument='<%# Eval("intId") %>' />
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
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
