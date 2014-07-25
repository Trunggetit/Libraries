<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Processing.aspx.cs" Inherits="WebApplication7.Processing" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>

    <title></title>
    <script type="text/javascript">
        
        $(document).ready(function ()
        {

            var name = "<%=NameClient.Value%>";
            var quantity = "<%=QuantityClient.Value%>";

            $("#name").val(name);
            $("#quantity").val(quantity);

        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField runat="server" ID="NameClient"></asp:HiddenField>
    <asp:HiddenField runat="server" ID="QuantityClient"></asp:HiddenField>

<div style="margin: 0 auto; height: 150px; width:150px;">
        Name: <input type="text" id="name"/>
        Quantity: <input type="text" id="quantity"/>
    <asp:Button runat="server" ID ="btnSubmitXML" Text="Save"/>
</div>
    </form>
</body>
</html>
