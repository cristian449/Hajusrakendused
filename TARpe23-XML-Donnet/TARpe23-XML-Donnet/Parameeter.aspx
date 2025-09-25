<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Parameeter.aspx.cs"
    Inherits="TARpe23_XML_Donnet.Parameeter" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parameetritega leht</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <pre>
             <asp:Xml ID="xml1" runat="server" DocumentSource="~/inimesed.xml"
                        TransformSource="~/parameetreitega1.xslt" />
            </pre>
            <br />
            Otsitav tekst:

            <asp:TextBox ID="kast1" runat="server" /><br />
            Miinimumpikkus:

            <asp:TextBox ID="kast2" runat="server" /><br />
            <asp:Button runat="server" Text="Sisesta" />

            Miinimum sünniaasta:
            <asp:TextBox ID="kast3" runat="server" /><br />

            Maksimum sünniaasta:
            <asp:TextBox ID="kast4" runat="server" /><br />


        </div>
    </form>
</body>
</html>
