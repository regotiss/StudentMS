<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teacher"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <div class="col-xs-12 col-smx-6 col-sm-offset-1 col-md-10 col-md-offset-1"
               style="margin-bottom:70px;margin-top:30px" >
        <asp:GridView ID="GridView1" style="width:100%;font-size:18px;height:100%" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="USERNAME" DataSourceID="SqlDataSource1" GridLines="Both" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" ReadOnly="True" SortExpression="USERNAME" />
                <asp:BoundField DataField="TEACHERNAME" HeaderText="TEACHERNAME" SortExpression="TEACHERNAME" />
                <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
                <asp:BoundField DataField="CONTACTNUMBER" HeaderText="CONTACTNUMBER" SortExpression="CONTACTNUMBER" />
                <asp:BoundField DataField="QUALIFICATION" HeaderText="QUALIFICATION" SortExpression="QUALIFICATION" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;USERNAME&quot;, &quot;TEACHERNAME&quot;, &quot;EMAILID&quot;, &quot;CONTACTNUMBER&quot;, &quot;QUALIFICATION&quot;, &quot;ADDRESS&quot; FROM &quot;TEACHER&quot;"></asp:SqlDataSource>
    </div>
    </div>
</asp:Content>