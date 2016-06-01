<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCourse.aspx.cs" Inherits="AddCourse"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
               style="background-color:#eee;margin-bottom:70px;margin-top:30px" >
                <div class="page-header">
                      <h1 class="text-center" style="color:blue"> Add Course</h1>
                </div>
                <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxBranch" placeholder="Branch name" runat="server" class="form-control input-lg"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxBranch" ErrorMessage="Branch name required" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>
                    
                 </div>
                <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxID" placeholder="Course ID" runat="server" class="form-control input-lg"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxID" ErrorMessage="CourseID required" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>
                    
                 </div>
                <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxCourse" placeholder="Course Name" runat="server" class="form-control input-lg"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxCourse" ErrorMessage="Course Name required" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>
                    
                 </div>
                <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxSem" placeholder="Semester" runat="server" class="form-control input-lg"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxSem" ErrorMessage="Enter semester number" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>
                    
                 </div>
                <div class="text-center">
                    <asp:Button ID="SubmitBtn" type="submit" runat="server" OnClick="Button1_Click" Text="ADD" class="btn btn-success btn-lg"/>
                    
                </div>
                
            </div>
    </div>
</asp:Content>
