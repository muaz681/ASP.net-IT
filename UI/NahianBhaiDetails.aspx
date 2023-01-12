<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NahianBhaiDetails.aspx.cs" Inherits="UI.IT.NahianBhaiDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card mt-3">
                            <div class="card-header">
                                Update Section
                            </div>
                            <div class="card-body p-3">
                                <asp:GridView ID="updateItem" runat="server" AutoGenerateColumns="False" Font-Size="12px" ShowFooter="True" CellPadding="3" FooterStyle-Font-Bold="true" FooterStyle-HorizontalAlign="Right" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" CssClass="auto-style5" Width="100%">
                                    <Columns>
                                        <asp:TemplateField HeaderText="ID" SortExpression="intId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblintId" Font-Size="Medium" runat="server" Text='<%# Bind("intId") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="25%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name" SortExpression="srId">
                                            <ItemTemplate>
                                                <asp:TextBox class="form-control" ID="txtName" runat="server" Text='<%# Bind("strName") %>'></asp:TextBox>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="25%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Enroll" SortExpression="intId">
                                            <ItemTemplate>
                                                <asp:TextBox class="form-control" ID="txtEnroll" runat="server" Text='<%# Bind("intEnroll") %>'></asp:TextBox>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="25%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type" SortExpression="srId">
                                            <ItemTemplate>
                                                <%--<asp:TextBox class="form-control" ID="typeList" runat="server" Text='<%# Bind("intType") %>'></asp:TextBox>--%>
                                                <asp:DropDownList class="form-select form-select-sm mb-3" ID="typeList" runat="server">
                                                </asp:DropDownList>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="25%" />
                                        </asp:TemplateField>


                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Details">
                                            <ItemTemplate>
                                                <asp:Button class="btn btn-outline-success btn-sm" ID="btnUpdate" runat="server" OnClick="btnUpdateClick" CommandArgument='<%# Eval("intId") %>' Text="Update" />
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>

                                        <%--<asp:TemplateField HeaderText="Action" SortExpression="srId">
                                            <ItemTemplate>
                                                <div class="btn-group btn-group-sm" role="group" aria-label="Basic mixed styles example">
                                                
                                                    <asp:Button class="btn btn-success" ID="Edit" runat="server" OnClick="editBtnClick" Text="Edit" CommandArgument='<%# Eval("intId") %>' />
                                                </div>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>--%>
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
</body>
</html>
