<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sort.aspx.cs" Inherits="sort" %>

<% 
    ClassLibrary1.Class1 obj = new ClassLibrary1.Class1();
    String msg = Request.QueryString["path"];
    String oper = Request.QueryString["oper"];
    if (oper == "time") { 
   List<ClassLibrary1.Class1.filedetail> files = obj.Search(msg);
   List<ClassLibrary1.Class1.filedetail> temp = obj.sortbytime();
   if (temp != null)
   {
       files = obj.sortbytime();
   }
    System.Text.StringBuilder sb = new System.Text.StringBuilder();
    System.Web.Script.Serialization.JavaScriptSerializer json = new System.Web.Script.Serialization.JavaScriptSerializer();
    json.Serialize(files, sb);
    Response.Write(sb.ToString());
    }
    if (oper == "size")
    {
        List<ClassLibrary1.Class1.filedetail> files = obj.Search(msg);
        List<ClassLibrary1.Class1.filedetail> temp = obj.sortbysize();
        if (temp != null)
        {
            files = obj.sortbysize();
        }
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        System.Web.Script.Serialization.JavaScriptSerializer json = new System.Web.Script.Serialization.JavaScriptSerializer();
        json.Serialize(files, sb);
        Response.Write(sb.ToString());
    }
   
    
    %>
