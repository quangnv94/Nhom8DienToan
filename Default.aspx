<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">        
                <h2>WEBSITE BÁN HÀNG NHÓM 8</h2>
            </hgroup>
           
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Nhập thông tin :</h3>
    <ol class="round">
        
        <li style="color:blue;" class="one">
            <h5 style="color:blue;">Chi tiết hóa đơn</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_Chi_Tiet_Hoa_Don" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="Ma_Chi_Tiet_Hoa_Don" HeaderText="Ma_Chi_Tiet_Hoa_Don" ReadOnly="True" SortExpression="Ma_Chi_Tiet_Hoa_Don" />
                    <asp:BoundField DataField="Ma_San_Pham" HeaderText="Ma_San_Pham" SortExpression="Ma_San_Pham" />
                    <asp:BoundField DataField="Thoi_Gian" HeaderText="Thoi_Gian" SortExpression="Thoi_Gian" />
                    <asp:BoundField DataField="So_Luong" HeaderText="So_Luong" SortExpression="So_Luong" />
                    <asp:BoundField DataField="Ma_Hoa_Don" HeaderText="Ma_Hoa_Don" SortExpression="Ma_Hoa_Don" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Chi_Tiet_Hoa_Don] WHERE [Ma_Chi_Tiet_Hoa_Don] = @Ma_Chi_Tiet_Hoa_Don" InsertCommand="INSERT INTO [Chi_Tiet_Hoa_Don] ([Ma_Chi_Tiet_Hoa_Don], [Ma_San_Pham], [Thoi_Gian], [So_Luong], [Ma_Hoa_Don]) VALUES (@Ma_Chi_Tiet_Hoa_Don, @Ma_San_Pham, @Thoi_Gian, @So_Luong, @Ma_Hoa_Don)" SelectCommand="SELECT [Ma_Chi_Tiet_Hoa_Don], [Ma_San_Pham], [Thoi_Gian], [So_Luong], [Ma_Hoa_Don] FROM [Chi_Tiet_Hoa_Don]" UpdateCommand="UPDATE [Chi_Tiet_Hoa_Don] SET [Ma_San_Pham] = @Ma_San_Pham, [Thoi_Gian] = @Thoi_Gian, [So_Luong] = @So_Luong, [Ma_Hoa_Don] = @Ma_Hoa_Don WHERE [Ma_Chi_Tiet_Hoa_Don] = @Ma_Chi_Tiet_Hoa_Don">
                <DeleteParameters>
                    <asp:Parameter Name="Ma_Chi_Tiet_Hoa_Don" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Ma_Chi_Tiet_Hoa_Don" Type="String" />
                    <asp:Parameter Name="Ma_San_Pham" Type="String" />
                    <asp:Parameter Name="Thoi_Gian" Type="Single" />
                    <asp:Parameter Name="So_Luong" Type="Int32" />
                    <asp:Parameter Name="Ma_Hoa_Don" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ma_San_Pham" Type="String" />
                    <asp:Parameter Name="Thoi_Gian" Type="Single" />
                    <asp:Parameter Name="So_Luong" Type="Int32" />
                    <asp:Parameter Name="Ma_Hoa_Don" Type="String" />
                    <asp:Parameter Name="Ma_Chi_Tiet_Hoa_Don" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <hr />
        <li class="two">
            <h5>Hóa đơn</h5>
              <asp:DetailsView ID="DetailsView6" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_Hoa_Don" DataSourceID="SqlDataSource2">
                  <Fields>
                      <asp:BoundField DataField="Ma_Hoa_Don" HeaderText="Ma_Hoa_Don" ReadOnly="True" SortExpression="Ma_Hoa_Don" >
                      <FooterStyle BackColor="#CC99FF" />
                      <HeaderStyle Font-Bold="False" />
                      </asp:BoundField>
                      <asp:BoundField DataField="Ma_Chi_Tiet_Hoa_Don" HeaderText="Ma_Chi_Tiet_Hoa_Don" SortExpression="Ma_Chi_Tiet_Hoa_Don" />
                      <asp:BoundField DataField="Ma_Khach_Hang" HeaderText="Ma_Khach_Hang" SortExpression="Ma_Khach_Hang" />
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                  </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Hoa_Don] WHERE [Ma_Hoa_Don] = @Ma_Hoa_Don" InsertCommand="INSERT INTO [Hoa_Don] ([Ma_Hoa_Don], [Ma_Chi_Tiet_Hoa_Don], [Ma_Khach_Hang]) VALUES (@Ma_Hoa_Don, @Ma_Chi_Tiet_Hoa_Don, @Ma_Khach_Hang)" SelectCommand="SELECT [Ma_Hoa_Don], [Ma_Chi_Tiet_Hoa_Don], [Ma_Khach_Hang] FROM [Hoa_Don]" UpdateCommand="UPDATE [Hoa_Don] SET [Ma_Chi_Tiet_Hoa_Don] = @Ma_Chi_Tiet_Hoa_Don, [Ma_Khach_Hang] = @Ma_Khach_Hang WHERE [Ma_Hoa_Don] = @Ma_Hoa_Don">
                <DeleteParameters>
                    <asp:Parameter Name="Ma_Hoa_Don" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Ma_Hoa_Don" Type="String" />
                    <asp:Parameter Name="Ma_Chi_Tiet_Hoa_Don" Type="String" />
                    <asp:Parameter Name="Ma_Khach_Hang" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ma_Chi_Tiet_Hoa_Don" Type="String" />
                    <asp:Parameter Name="Ma_Khach_Hang" Type="Int32" />
                    <asp:Parameter Name="Ma_Hoa_Don" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            &nbsp;</li>
        <hr />
        <li class="three">
            <h5>Khách hàng</h5>
           
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_Khach_Hang" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="Ma_Khach_Hang" HeaderText="Ma_Khach_Hang" ReadOnly="True" SortExpression="Ma_Khach_Hang" />
                    <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="Dia_Chi" HeaderText="Dia_Chi" SortExpression="Dia_Chi" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [Ma_Khach_Hang] = @Ma_Khach_Hang" InsertCommand="INSERT INTO [Khach_Hang] ([Ma_Khach_Hang], [Ten], [SDT], [Dia_Chi]) VALUES (@Ma_Khach_Hang, @Ten, @SDT, @Dia_Chi)" SelectCommand="SELECT [Ma_Khach_Hang], [Ten], [SDT], [Dia_Chi] FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [Ten] = @Ten, [SDT] = @SDT, [Dia_Chi] = @Dia_Chi WHERE [Ma_Khach_Hang] = @Ma_Khach_Hang">
                <DeleteParameters>
                    <asp:Parameter Name="Ma_Khach_Hang" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Ma_Khach_Hang" Type="Int32" />
                    <asp:Parameter Name="Ten" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="Dia_Chi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ten" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="Dia_Chi" Type="String" />
                    <asp:Parameter Name="Ma_Khach_Hang" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <hr />
         <li class="four">
            <h5>Loại sản phẩm</h5>
           
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_Loai_San_Pham" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="Ma_Loai_San_Pham" HeaderText="Ma_Loai_San_Pham" ReadOnly="True" SortExpression="Ma_Loai_San_Pham" />
                    <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
                    <asp:BoundField DataField="Mo_Ta" HeaderText="Mo_Ta" SortExpression="Mo_Ta" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
             </asp:DetailsView>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Loai_San_Pham] WHERE [Ma_Loai_San_Pham] = @Ma_Loai_San_Pham" InsertCommand="INSERT INTO [Loai_San_Pham] ([Ma_Loai_San_Pham], [Ten], [Mo_Ta]) VALUES (@Ma_Loai_San_Pham, @Ten, @Mo_Ta)" SelectCommand="SELECT [Ma_Loai_San_Pham], [Ten], [Mo_Ta] FROM [Loai_San_Pham]" UpdateCommand="UPDATE [Loai_San_Pham] SET [Ten] = @Ten, [Mo_Ta] = @Mo_Ta WHERE [Ma_Loai_San_Pham] = @Ma_Loai_San_Pham">
                 <DeleteParameters>
                     <asp:Parameter Name="Ma_Loai_San_Pham" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Ma_Loai_San_Pham" Type="String" />
                     <asp:Parameter Name="Ten" Type="String" />
                     <asp:Parameter Name="Mo_Ta" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Ten" Type="String" />
                     <asp:Parameter Name="Mo_Ta" Type="String" />
                     <asp:Parameter Name="Ma_Loai_San_Pham" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </li>
        <hr />
         <li class="five">
            <h5>Sản phẩm</h5>
           
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_San_Pham" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="Ma_San_Pham" HeaderText="Ma_San_Pham" ReadOnly="True" SortExpression="Ma_San_Pham" />
                    <asp:BoundField DataField="Ma_Loai_San_Pham" HeaderText="Ma_Loai_San_Pham" SortExpression="Ma_Loai_San_Pham" />
                    <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
             </asp:DetailsView>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [San_Pham] WHERE [Ma_San_Pham] = @Ma_San_Pham" InsertCommand="INSERT INTO [San_Pham] ([Ma_San_Pham], [Ma_Loai_San_Pham], [Ten]) VALUES (@Ma_San_Pham, @Ma_Loai_San_Pham, @Ten)" SelectCommand="SELECT [Ma_San_Pham], [Ma_Loai_San_Pham], [Ten] FROM [San_Pham]" UpdateCommand="UPDATE [San_Pham] SET [Ma_Loai_San_Pham] = @Ma_Loai_San_Pham, [Ten] = @Ten WHERE [Ma_San_Pham] = @Ma_San_Pham">
                 <DeleteParameters>
                     <asp:Parameter Name="Ma_San_Pham" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Ma_San_Pham" Type="String" />
                     <asp:Parameter Name="Ma_Loai_San_Pham" Type="String" />
                     <asp:Parameter Name="Ten" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Ma_Loai_San_Pham" Type="String" />
                     <asp:Parameter Name="Ten" Type="String" />
                     <asp:Parameter Name="Ma_San_Pham" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </li>

         
    </ol>
</asp:Content>
