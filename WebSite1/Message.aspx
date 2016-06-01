<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" MasterPageFile="~/MasterPage.master"%>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
               style="background-color:#eee;margin-bottom:70px;margin-top:30px" >
                <div class="page-header">
                      <h1 class="text-center" style="color:blue">Message</h1>
                </div>
                <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxCourseId" placeholder="Course ID" runat="server" class="form-control input-lg"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCourseId" ErrorMessage="CourseId required" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>
                    
                  </div>
                <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxMessage" placeholder="Message" runat="server"  TextMode="MultiLine" class="form-control input-lg" Height="300px"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxMessage" ErrorMessage="Enter message" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>
                    
                 </div>
                 <div class="text-center">
                    <asp:Button ID="SubmitBtn" type="submit" runat="server" OnClick="Button1_Click" Text="SEND" class="btn btn-success btn-lg"/>
                    
                </div>  
                
            </div>
            
             
             
    </div>
</asp:Content>
