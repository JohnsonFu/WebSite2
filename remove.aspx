<%@ Page Language="C#" AutoEventWireup="true" CodeFile="remove.aspx.cs" Inherits="remove" %>

<%
    ClassLibrary1.Class1 obj = new ClassLibrary1.Class1();
    String msg = Request.QueryString["path"];
    String addr = Request.QueryString["name"];
    int result = obj.delete(addr);
    List<ClassLibrary1.Class1.filedetail> files = obj.Search(msg);

    System.Text.StringBuilder sb = new System.Text.StringBuilder();
    System.Web.Script.Serialization.JavaScriptSerializer json = new System.Web.Script.Serialization.JavaScriptSerializer();
    json.Serialize(files, sb);
    Response.Write(sb.ToString());
     %>
