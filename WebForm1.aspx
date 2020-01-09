<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="txspell_aspnet.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <asp:Label runat="server" Text="Label">Please wait...</asp:Label>
                    </ProgressTemplate>
                </asp:UpdateProgress>
                
                <br />
                
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="CustomValidator" ControlToValidate="TextBox1" 
                    EnableClientScript="False" 
                    onservervalidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
