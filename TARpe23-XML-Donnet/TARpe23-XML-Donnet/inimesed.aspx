<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Andmete leht</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <%-- Enamus asjad mis siin inimeste projektis faili on on võimalik ka autode projekt failiga eriti universaalesed ülesanded sisu--%>

            <%--<asp:Xml ID="xml1" runat="server" DocumentSource="~/inimesed.xml"
                TransformSource="~/inimesed1.xsl" />

            <asp:Xml ID="xml2" runat="server" DocumentSource="~/inimesed.xml"
                TransformSource="~/inimesed.xsl" />

            <asp:Xml ID="xml3" runat="server" DocumentSource="~/inimesed.xml"
                TransformSource="~/kujunduskordus.xsl" />--%>

            <asp:Xml ID="xml3" runat="server" DocumentSource="~/inimesed.xml"
                TransformSource="~/universaalne_struktuuri_vaade.xslt" />

            <asp:Xml ID="xml1" runat="server" DocumentSource="~/inimesed.xml"
                TransformSource="~/universaalne_tabeli_vaade.xslt" />

                    <asp:Xml ID="xml2" runat="server" DocumentSource="~/inimesed.xml"
                TransformSource="~/universaalne_loetelu_vaade_nimed.xslt" />

                <asp:Xml ID="xml4" runat="server" DocumentSource="~/inimesed.xml"
            TransformSource="~/universaalne_loetelu_vaade.xslt" />



        </div>
    </form>
</body>
</html>
