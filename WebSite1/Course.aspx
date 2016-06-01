<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12 col-smx-6 col-sm-offset-2 col-md-8 col-md-offset-2"
               style="margin-bottom:70px;margin-top:30px" >
        <asp:GridView ID="GridView1" style="width:100%;font-size:18px;height:100%" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="BRANCHNAME" HeaderText="BRANCHNAME" SortExpression="BRANCHNAME" />
                <asp:BoundField DataField="COURSEID" HeaderText="COURSEID" SortExpression="COURSEID" ReadOnly="True" />
                <asp:BoundField DataField="COURSENAME" HeaderText="COURSENAME" SortExpression="COURSENAME" ReadOnly="True" />
                <asp:BoundField DataField="BRANCHID" HeaderText="BRANCHID" SortExpression="BRANCHID" ReadOnly="True" />
                <asp:BoundField DataField="SEMESTER" HeaderText="SEMESTER" ReadOnly="True" SortExpression="SEMESTER" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;2013BIT039&quot;.BRANCH.BRANCHNAME, &quot;2013BIT039&quot;.COURSE.* FROM &quot;2013BIT039&quot;.BRANCH INNER JOIN &quot;2013BIT039&quot;.COURSE ON &quot;2013BIT039&quot;.BRANCH.BRANCHID = &quot;2013BIT039&quot;.COURSE.BRANCHID"></asp:SqlDataSource>
    </div>
    </div>
</asp:Content>
