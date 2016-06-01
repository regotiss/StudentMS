<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
        <div class="row">
        <div class="col-xs-12 col-smx-6 col-sm-offset-1 col-md-10 col-md-offset-1"
               style="margin-bottom:70px;margin-top:30px" >
        <asp:GridView style="width:100%;font-size:18px;height:100%" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="PRNNO" HeaderText="PRNNO" SortExpression="PRNNO" />
                <asp:BoundField DataField="STUDENTNAME" HeaderText="STUDENTNAME" SortExpression="STUDENTNAME" />
                <asp:BoundField DataField="CONTACTNO" HeaderText="CONTACTNO" SortExpression="CONTACTNO" />
                <asp:BoundField DataField="BRANCHNAME" HeaderText="BRANCHNAME" SortExpression="BRANCHNAME" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;2013BIT039&quot;.STUDENT.PRNNO, &quot;2013BIT039&quot;.STUDENT.STUDENTNAME, &quot;2013BIT039&quot;.STUDENT.CONTACTNO, &quot;2013BIT039&quot;.BRANCH.BRANCHNAME, &quot;2013BIT039&quot;.STUDENT.ADDRESS, &quot;2013BIT039&quot;.STUDENT.EMAILID FROM &quot;2013BIT039&quot;.STUDENT INNER JOIN &quot;2013BIT039&quot;.BRANCH ON &quot;2013BIT039&quot;.STUDENT.BRANCHID = &quot;2013BIT039&quot;.BRANCH.BRANCHID INNER JOIN &quot;2013BIT039&quot;.BRANCH BRANCH_1 ON &quot;2013BIT039&quot;.STUDENT.BRANCHID = BRANCH_1.BRANCHID"></asp:SqlDataSource>
        </div>
        </div>
  </asp:Content>
