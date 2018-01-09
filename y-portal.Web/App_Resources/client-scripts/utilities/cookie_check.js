
    var cookieEnabled = (navigator.cookieEnabled) ? true : false
    if (typeof navigator.cookieEnabled == "undefined" || !cookieEnabled)
    {
        document.cookie = "checkcookie"
        cookieEnabled = (document.cookie.indexOf("checkcookie") != -1) ? true : false
    }

    if (!cookieEnabled)
    {
        window.location = "no-cookie.aspx";
    }

