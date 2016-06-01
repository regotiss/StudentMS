<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddStudentCourse.aspx.cs" Inherits="AddStudentCourse" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
     <div class="row">
            <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
               style="background-color:#eee;margin-bottom:70px;margin-top:30px" >
                  <div class="page-header">
                      <h1 class="text-center" style="color:blue"> Student Course </h1>
                  </div>
                  <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxPRN" placeholder="Student PRN number" runat="server" class="form-control input-lg"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPRN" ErrorMessage="Teacher Username required" ForeColor="#CC0000" style="font-size: large; "></asp:RequiredFieldValidator>
                    
                  </div>
                  <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxCourseId" placeholder="Course Id" runat="server" class="form-control input-lg"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCourseId" ErrorMessage="Course Id required" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>
                 
                  <div class="text-center">
                    <asp:Button ID="SubmitBtn" type="submit" runat="server" OnClick="Button1_Click" Text="Assign" class="btn btn-success btn-lg"/>
                    
                  </div>
             </div>
        </div>
 </asp:Content>