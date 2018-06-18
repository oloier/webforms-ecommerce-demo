﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using System.Data.Entity;
using OmniModels;

public partial class Admin_Products_Delete : System.Web.UI.Page
{
    protected OmniContext _db = new OmniContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        // Always check for login and administrator priveleges
        bool IsAdmin = false;
        if (Session["Customer"] != null)
        {
            Customer Customer = (Customer)Session["customer"];
            if (Customer.custadmin)
            {
                IsAdmin = true;
            }
        }
        // If they're not logged in or not admin and we're not on the login page, push them there
        if (!IsAdmin)
        {
            Response.Redirect("/Admin?report=Only administrators are allowed access to the administration panel");
        }

    }

    public void DeleteItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
    {
        using (_db)
        {
            var item = _db.Games.FirstOrDefault(m => m.gameid == Id);

            if (item != null)
            {
                _db.Games.Remove(item);
                _db.SaveChanges();
            }
        }
        Response.Redirect("../Default");
    }

    public Game GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
    {
        if (Id == null)
        {
            return null;
        }

        using (_db)
        {
            return _db.Games.FirstOrDefault(m => m.gameid == Id);
        }
    }

    protected void ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
        {
            Response.Redirect("../Default");
        }
    }
}