<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Autod.aspx.cs" Inherits="TARpe23_Auto_test_lk15.Autod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Autod</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Xml ID="Xml1" runat="server" DocumentSource="Autod.xml" TransformSource="Autod.xslt"></asp:Xml>
            <asp:Xml ID="Xml2" runat="server" DocumentSource="Autod.xml" TransformSource="Autod2.xslt"></asp:Xml>
            <asp:Xml ID="Xml3" runat="server" DocumentSource="Autod.xml" TransformSource="Autod3.xslt"></asp:Xml>
        </div>
    </form>
</body>
</html>
