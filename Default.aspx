<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsApplication.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h3>Feature 1</h3>
        <asp:Button  ID="Feature1Button" Text="Login" runat="server" />
        <p>The feature1 button is visible at runtime because it is enabled in the app config.</p>

        <br />

        <h3>Feature 2 </h3>
        <asp:Button ID="Feature2Button" Text="Register" runat="server" />
        <p>The feature2 button is not visible at runtime because it is disabled in the app config.</p>

        <br />

        <%--<h3>Feature 3 - toggled using a EnabledOnOrAfterDateFeatureToggle toggle called NewYears3000Feature</h3>
        <asp:Button ID="NewYears3000FeatureButton" Text="Welcome to the year 3000!" runat="server" />
        <p>The NewYears3000Feature button is not visible at runtime because in in the app config the date is set to new years day 3000.</p>

        <br />

        <h3>Feature 4 - toggled using a EnabledOnOrAfterDateFeatureToggle toggle called NewYears2000Feature</h3>
        <asp:Button ID="NewYears2000FeatureButton" Text="Welcome to the year 2000!" runat="server" />
        <p>The Login button is visible at runtime because in in the app config the date is set to new years day 2000.</p>--%>

    </div>
    </form>
</body>
</html>
