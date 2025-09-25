<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="System.Xml.Xsl" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Autode andmed</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                string xmlPath = Server.MapPath("~/auto.xml");
                string[] xsltFiles = { "auto.xslt", "auto2.xslt", "auto3.xslt", "auto4.xslt", "auto5.xslt" };

                foreach (string xsltFile in xsltFiles)
                {
                    string xsltPath = Server.MapPath("~/" + xsltFile);
                    Response.Write("<h3>" + xsltFile + "</h3>");
                    if (!File.Exists(xsltPath))
                    {
                        Response.Write("<span style='color:red;'>XSLT file not found.</span><br />");
                    }
                    else
                    {
                        try
                        {
                            XslCompiledTransform xslt = new XslCompiledTransform();
                            xslt.Load(xsltPath);
                            using (StringWriter sw = new StringWriter())
                            {
                                xslt.Transform(xmlPath, null, sw);
                                Response.Write("<pre>" + Server.HtmlEncode(sw.ToString()) + "</pre>");
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write("<span style='color:red;'>Error: " + Server.HtmlEncode(ex.Message) + "</span><br />");
                        }
                    }
                }
            %>
        </div>
    </form>
</body>
</html>
