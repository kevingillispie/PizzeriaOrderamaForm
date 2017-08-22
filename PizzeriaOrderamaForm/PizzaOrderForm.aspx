<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PizzaOrderForm.aspx.cs" Inherits="PizzeriaOrderamaForm.PizzaOrderForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .heading {
            font-family: Arial, sans-serif;
        }
        
    </style>
    <title>Pizzeria Orderama</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="heading"><asp:Image ID="Image1" runat="server" ImageUrl="~/cheflogo.png" />Papa Bob's Pizzeria Orderama!</h1>
        </div>
        <div class="choices">
            <asp:RadioButton ID="babyRadioButton" runat="server" Text="Baby Bob Size (10&quot;) - $10" Checked="True" GroupName="PizzaSize" />
            <br />
            <asp:RadioButton ID="mamaRadioButton" runat="server" Text="Mama Bob Size (13&quot;) - $13" GroupName="PizzaSize" />
            <br />
            <asp:RadioButton ID="papaRadioButton" runat="server" Text="Papa Bob Size (16&quot;) - $16" GroupName="PizzaSize" />
            <br />
            <br />
            <asp:RadioButton ID="thinRadioButton" runat="server" Text="Thin Crust" Checked="True" GroupName="Thickness" />
            <br />
            <asp:RadioButton ID="deepRadioButton" runat="server" Text="Deep Dish (+$2)" GroupName="Thickness" />
            <br />
            <br />
            <asp:CheckBox ID="pepperoni" runat="server" Text="Pepperoni (+1.50)" />
            <br />
            <asp:CheckBox ID="onions" runat="server" Text="Onions (+$0.75)" />
            <br />
            <asp:CheckBox ID="greenPeppers" runat="server" Text="Green Peppers (+$0.50)" />
            <br />
            <asp:CheckBox ID="redPeppers" runat="server" Text="Red Peppers (+$0.75)" />
            <br />
            <asp:CheckBox ID="anchovies" runat="server" Text="Anchovies (+$2)" />
        </div>
        <div>
            <h3 class="heading">Papa Bob's <span style="color: red;">Special Deal</span></h3>
        </div>
        <div>
            <p>Save $2.00 when you add EITHER pepperoni, green peppers, and anchovies OR pepperoni, red peppers, and anchovies.</p>
        </div>
        <div>
            <asp:Button ID="purchaseButton" runat="server" Text="Purchase" OnClick="purchaseButton_Click" />
        </div>
        <div>
            <p>Total: <asp:Label ID="totalLabel" runat="server" Text=""></asp:Label></p>
        </div>
        <p>Sorry, at this time you can only order one pizza online (pick only) ... we need a better website :(</p>
    </form>
</body>
</html>
