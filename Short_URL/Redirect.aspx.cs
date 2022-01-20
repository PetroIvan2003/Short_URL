using Short_URL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Short_URL
{
    public partial class Redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    String ShortLink = "";
                    ShortLink = Page.RouteData.Values["ShortLink"] as String;
                    String originalUrl = Functions.GetOriginUrl(ShortLink);
                    if (originalUrl != null)
                    {
                        result_area.InnerHtml = @"<h4>Your link is ready</h4>
                                        <a class='btn btn-primary' href='" + originalUrl + "'>Get Link</a>";
                    }
                    else
                    {
                        result_area.InnerHtml = @"<h4>Page Not Found</h4>";
                    }
                }
                catch (Exception)
                {

                    Response.Redirect("~/");
                }
            }
        }
    }
}