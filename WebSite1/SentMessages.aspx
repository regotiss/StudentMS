<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SentMessages.aspx.cs" Inherits="SentMessages" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
               style="margin-bottom:70px;margin-top:30px" >
        <asp:GridView style="width:100%;font-size:18px;height:100%" ID="GridView1" runat="server" AutoGenerateColumns="False" Cellspacing="10" CellPadding="10" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Both">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="COURSEID" HeaderText="COURSEID" ReadOnly="True" SortExpression="COURSEID" />
                <asp:BoundField DataField="MESSAGE" HeaderText="MESSAGE" SortExpression="MESSAGE" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select COURSEID,MESSAGE from Message,Teaches where Message.teachesid = Teaches.tid and username='tsmriti';"></asp:SqlDataSource>
        </div>
       </div>
</asp:Content>
