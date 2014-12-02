﻿<%@ Page Language="C#" %>

<%

    string mscorlib = "mscorlib.js";
    string wwtlib = "wwtlib.js";
    
    string[] values = Request.QueryString.GetValues("debug");
    if (values != null && values.Length > 0 && values[0] == "true")
    {
        mscorlib = "mscorlib.debug.js";
        wwtlib = "wwtlib.debug.js";
    }

    Response.WriteFile(mscorlib);
    Response.Write(";");
    Response.WriteFile(wwtlib);


%>