<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Branch.aspx.cs" Inherits="Branch" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script runat="server">
        

    </script>
    <div class="row">
        <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
               style="margin-bottom:70px;margin-top:30px" >
        <asp:GridView style="width:100%;font-size:18px;height:100%" ID="GridView1" runat="server" AutoGenerateColumns="False" Cellspacing="10" CellPadding="10" DataKeyNames="BRANCHID" DataSourceID="SqlDataSource1" 
            ForeColor="#333333"  autogenerateselectbutton="True" onselectedindexchanged="SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="BRANCHID" HeaderText="BRANCHID" ReadOnly="True" SortExpression="BRANCHID" />
                <asp:BoundField DataField="BRANCHNAME" HeaderText="BRANCHNAME" SortExpression="BRANCHNAME" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;BRANCH&quot;"></asp:SqlDataSource>

            <h2><asp:Label ID="Label" runat="server" style="text-align:center" Text="You have selected None"></asp:Label></h2>
            <div class="text-center">
                    <asp:Button ID="SubmitBtn" type="submit" runat="server" OnClick="Button1_Click" Text="Update" class="btn btn-success btn-lg"/>
                    
            </div>
        </div>
     </div>
     
     
  
</asp:Content>
