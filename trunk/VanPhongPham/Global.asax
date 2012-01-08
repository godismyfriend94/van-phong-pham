<%@ Application Language="C#" %> 
<%@ Import Namespace="System.IO" %> 
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Collections" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        //Kiểm tra nếu chưa tồn tại file thì tạo file Count_Visited.txt
        if (!File.Exists(Server.MapPath("Count_Visited.txt")))
            File.WriteAllText(Server.MapPath("Count_Visited.txt"), "0");
        Application["DaTruyCap"] = int.Parse(File.ReadAllText(Server.MapPath("Count_Visited.txt")));
        //Kiểm tra nếu chưa tồn tại file thì tạo file Count_Visited.txt
        if (!File.Exists(Server.MapPath("Count_Visited.txt")))
            File.WriteAllText(Server.MapPath("Count_Visited.txt"), "0");
        Application["DaTruyCap"] = int.Parse(File.ReadAllText(Server.MapPath("Count_Visited.txt"))); 
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown
    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
    }

    void Session_Start(object sender, EventArgs e) 
    {
        //// Code that runs when a new session is started

        // Tăng số đang truy cập lên 1 nếu có khách truy cập
        if (Application["DangTruyCap"] == null)
            Application["DangTruyCap"] = 1;
        else
            Application["DangTruyCap"] = (int)Application["DangTruyCap"] + 1;
        // Tăng số đã truy cập lên 1 nếu có khách truy cập
        Application["DaTruyCap"] = (int)Application["DaTruyCap"] + 1;
        File.WriteAllText(Server.MapPath("Count_Visited.txt"), Application["DaTruyCap"].ToString()); 

        /*For Admin*/
        Session["user_logined"] = null;
        Session.Timeout = 10;
        
    }

    void Session_End(object sender, EventArgs e) 
    {
        //Khi hết session hoặc người dùng thoát khỏi website thì giảm số người đang truy cập đi 1
        
        Application["DangTruyCap"] = (int)Application["DangTruyCap"] - 1;

        Session["user_logined"] = null;
        
    }
       
</script>
