<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="Labs1GroupA.Glasaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Гласај</title>
    <style>
        /* General body styling */
        body {
            display: flex;
            background-color: #f4f4f4;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* Form container */
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 350px; /* Slightly wider for better spacing */
        }

        /* Spacing between form elements */
        .form-separate {
            margin-bottom: 15px;
        }

        /* Grid layout for ListBoxes */
        .ListBox {
            display: grid;
            grid-template-columns: 1fr 1fr; /* Two columns */
            gap: 10px; /* Space between ListBoxes */
        }

        /* Styling for ListBoxes */
        .ListBox asp-listbox {
            width: 100%; /* Ensure ListBoxes take full width of their container */
        }

        /* Button styling */
        .form-separate button {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease; /* Smooth hover effect */
        }

        /* Button hover effect */
        .form-separate button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        /* Label styling */
        .form-separate label {
            font-weight: bold;
            display: block; /* Ensure labels are on their own line */
            margin-bottom: 5px; /* Space between label and input */
        }

        /* Image styling */
        .form-separate img {
            display: block;
            margin: 0 auto; /* Center the image */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Logo -->
            <div class="form-separate">
                <asp:Image ID="Image1" runat="server" ImageUrl="Лого-ФИНКИ.jpg" Height="55px" Width="273px" />
            </div>

            <!-- Professor Label -->
            <div class="form-separate">
                <asp:Label ID="Label1" runat="server" Text="Професор"></asp:Label>
            </div>

            <!-- ListBoxes -->
            <div class="form-separate ListBox">
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                <asp:ListBox ID="ListBox2" runat="server" Width="55px"></asp:ListBox>
            </div>

            <!-- Vote Button -->
            <div class="form-separate">
                <asp:Button ID="Button1" runat="server" Text="Гласајте" OnClick="Button_Clicked" />
            </div>
        </div>
    </form>
</body>
</html>