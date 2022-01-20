using Short_URL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Short_URL
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Functions.isValidUrl(url.Value))
            {
                string ShortLink = Functions.AddNewLinkToDB(url.Value);
                //get current domain name
                string HostName = Request.Url.Host;
                string domainName = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority);
                ShortLink = domainName + "/" + ShortLink;
                data_place.InnerHtml = @"<div class='alert alert-success'><a href ='" + ShortLink + "' target='blanc'>" + ShortLink + "</div>";
            }
            else
            {
                data_place.InnerHtml = @"<div class='alert alert-danger'>try whith a valid url</div>";
            }
        }
    }
}