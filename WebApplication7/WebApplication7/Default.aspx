<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication7._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

	<style type="text/css">
		* { margin: 0; outline: none; }
		body { background-color: white; }
		.c { clear: both; }
		h2 { padding: 20px 0 10px 0; font-size: 24px; line-height: 40px; font-weight: normal; color: #adc276; text-shadow: 0 1px 3px #222222; }

	    fieldset 
        {
            padding: 10px; border: solid;

	    }

	    legend 
        {
            font-size: large;
            font-family: Verdana;
	    }

	    label 
        {
            font-size: medium;
            font-family: 'Times New Roman';
	    }

	</style>

    <script type="text/javascript" src="Scripts/xmlw3cdom.js"></script>
    <script type="text/javascript" src="Scripts/xmlsax.js"></script>
    <script type="text/javascript" src="Scripts/tinyxmlxpath.js"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>    

    <script type="text/javascript">

        var xml = '<%= XmlList %>';

        $(document).ready(function ()
        {



            var parser = new DOMImplementation();
            
            var domDoc = parser.loadXML(xml);
            var docRoot = domDoc.getDocumentElement();
            var nodes = docRoot.selectNodeSet("//items")

            $("#viewinstock").click(function () {
                console.log("test");
                $("#instock").css("display", "block");
                $("#outofstock").css("display", "none");

            });

            $("#viewoutofstock").click(function () {
                $("#instock").css("display", "none");

                $("#outofstock").css("display", "block");
            });


            var count = nodes.length;
            for (var x = 1; x < nodes.length; x++)
            {
                var nodename = nodes.item(x);
                var name = GetAttributeValue(nodename, "Name", '');
                var quantity = GetAttributeValue(nodename, "Instock", '');
                var imgNode = nodename.selectNodeSet("picture");

                    var button =
                        $(

                            '<div><Button id="' + x + '" name="' + name +'" value="Edit">Edit</Button><span>' + name + ' Instock: ' + quantity + '</span></br></br></div>'

                        );

                    var imagecontrol = '';

                    var div1 = $('<div></div>');

                    for (var pic = 0; pic < imgNode.length; pic++)
                    {
                        var value = imgNode.item(pic).getFirstChild().nodeValue;
                        imagecontrol =

                            $(
                                '<img src="' + value + '" width="250" height="125"/>'
                            );

                        imagecontrol.appendTo(div1);
                    }

                    div1.appendTo(button);


                    if (quantity > 0)
                    {
                        button.appendTo('#instock');
                    }
                    else if (quantity == 0)
                    {
                        button.appendTo('#outofstock');
                    }

                    $('#' + x).on("click", function ()
                    {

                        var selecteditem = docRoot.selectNodeSet("//items[@Name='" + (this.name) + "']");

                        var n = selecteditem.item(0);


                        var itemname = GetAttributeValue(n, "Name");

                        var iteminstock = GetAttributeValue(n, "Instock");

                        //Call dialog here and get the Name and Instock 
                        alert(itemname + ' ' + iteminstock);
                    });


            }


            function GetAttributeValue(node, name, defaultvalue)
            {
                if (node.getAttributes().getNamedItem(name) == null)
                {
                    return defaultvalue

                }

                return '' + node.getAttributes().getNamedItem(name).getNodeValue() + '';
            }


        });
    </script>

</head>
<body>

    <button id="viewinstock">View In Stock</button>
    <button id="viewoutofstock">View Out of Stock</button>

    <fieldset><legend>In Stock:</legend><div id="instock" style="display:none"/></fieldset>
    <fieldset><legend>Out Of Stock:</legend><div id="outofstock" style="display:none"/></fieldset>

</body>
</html>
