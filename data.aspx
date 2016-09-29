<%@ Page Language="C#" AutoEventWireup="true" CodeFile="data.aspx.cs" Inherits="data" %>
<%
    
    ClassLibrary1.Class1 obj = new ClassLibrary1.Class1();
    String msg = Request.QueryString["path"];
     
    List<ClassLibrary1.Class1.filedetail> files = obj.Search(msg);
   
    System.Text.StringBuilder sb = new System.Text.StringBuilder();
    System.Web.Script.Serialization.JavaScriptSerializer json=new System.Web.Script.Serialization.JavaScriptSerializer();
    json.Serialize(files,sb);
    Response.Write(sb.ToString());
    
    
    
     %>