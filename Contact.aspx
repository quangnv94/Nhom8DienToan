<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <hgroup class="title">
       
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Nguyễn Hồng Quân:</span>
            <span>01278210209</span>
        </p>
       
    </section>
    <hr />
    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@example.com">Quannhph04192@fpt.edu.vn</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Quangnvph04210@fpt.edu.vn</a></span>
        </p>
       
    </section>
    <hr />
    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Đường Hàm Nghi<br />
            Phường Mỹ Đình - Nam Từ Liêm
        </p>
    </section>

    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d8605.156778011!2d105.77233814101382!3d21.031130396685644!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljIChDxqEgc-G7nyBIw6AgTuG7mWkp!5e0!3m2!1svi!2s!4v1497410337147" 
        width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
  
</asp:Content>