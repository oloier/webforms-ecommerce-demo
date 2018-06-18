﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OmniModels;

public partial class Admin_Customer : System.Web.UI.Page
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

    // Model binding method to get List of Product entries
    // USAGE: <asp:ListView SelectMethod="GetData">
    public IQueryable<OmniModels.Customer> GetData()
    {
        return _db.Customers;
    }
}