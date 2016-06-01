<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddTeacher.aspx.cs" Inherits="AddTeacher" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
               style="background-color:#eee;margin-bottom:70px;margin-top:30px" >
                  <div class="page-header">
                      <h1 class="text-center" style="color:blue">Add Teacher</h1>
                  </div>
                  
                   <!-- Teacher Name -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxName" placeholder="Teacher Name" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNm" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Name required" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>
                  
                  <!-- Email -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxEmail" placeholder="Email Address" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email field required" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please Enter Valid EmailID" ForeColor="Red" style="font-size: large; text-align: center" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </div>

                  <!-- Qualification -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxQulf" placeholder="Qualification" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPRN" runat="server" ControlToValidate="TextBoxQulf" ErrorMessage="Enter qualification" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>
                  
                  
                   <!-- Contact Number -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxContact" placeholder="Contact Number" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorContact" runat="server" ControlToValidate="TextBoxContact" ErrorMessage="Contact number please" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>

  
                  <!-- Address -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxAddr" placeholder="Address" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddr" runat="server" ControlToValidate="TextBoxAddr" ErrorMessage="Provide Address" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>


                  <!-- Username --> 
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxUsername" placeholder="Username" runat="server" class="form-control input-sm"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSem" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Username required" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="username must start with t and more than 1 characters" ForeColor="#CC0000" style="font-weight: 700" ValidationExpression="^t[A-Za-z0-9]+"></asp:RegularExpressionValidator>
                    
                  </div>

                  
                <!-- Password -->
                 <div class="form-group">
                    
                       <asp:TextBox ID="TextBoxPass" placeholder="Password" runat="server" TextMode="Password" class="form-control input-sm"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter password" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                  </div>

                  <div class="text-center">
                    <asp:Button ID="SubmitBtn" type="submit" runat="server" OnClick="Button1_Click" Text="Register" class="btn btn-success btn-lg"/>
                    
                  </div>
             </div>
        </div>
</asp:Content>