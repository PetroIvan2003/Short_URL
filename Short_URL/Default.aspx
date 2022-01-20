<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Short_URL.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>short link</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />
	
	<style>
input[type="url"]:focus,button:focus,.btn:focus,.btn:active{   
  border-color: none;
  box-shadow: none;
  outline: 0 none;
}
.container{
  width:50%;
  margin-top:120px;
}
.capatcha-skip{
	background:#fff;
	padding:20px;
	border-radius:10px;
	border-top: 5px solid #3498DB;
}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <<div class="container text-center">
     <h1>Short URL</h1></br>
	 <h2> Paste the Url to be shortened</h2></br>
	 <div class="input-group">
	  <input type="url" id="url" class="form-control rounded-0" placeholder="Enter the link here" style="padding:18px" runat="server"/>
	  <span class="input-group-btn" style="height:56px">
		<asp:LinkButton id="Button1" class="btn btn-primary form-control rounded-0" runat="server" OnClick="Button1_Click">
		  <i class="fas">Shorten URL</i>
		</asp:LinkButton>
	  </span>
	 </div>
	 <div id="data_place" style="margin-top:15px;" runat="server">
	 </div> 
  </div>
    </form>
</body>
</html>
