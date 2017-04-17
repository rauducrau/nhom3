<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section>
         <!-- CAROUSEL -->  	
         <div id="carousel">
            <div id="owl-demo" class="owl-carousel owl-theme">
               <div class="item">
                  <img src="img/b1.png" height="318" width="1000" alt="">      
                  <div class="carousel-text">
                     
                  </div>
               </div>
               <div class="item">
                  <img src="img/b2.jpg" height="318" width="1000" alt="">      
                  <div class="carousel-text">
                    
                  </div>
               </div>
               <div class="item">
                  <img src="img/b3.jpg" height="318" width="1000" alt="">      
                  <div class="carousel-text">
                  </div>
               </div>
            </div>
         </div>
         <!-- FIRST BLOCK --> 	
         <div id="first-block">
         </div>
         <!-- SECOND BLOCK --> 	
         <div id="second-block">
            <div class="line">
               <div class="margin-bottom">
                  <div class="margin">
                     <article class="s-12 l-8 center">
                        <h1>Amazing title</h1>
                        <p class="margin-bottom">FPT SHOP khuyến mãi tháng 12
                        </p>
                        <a class="button s-12 l-4 center" href="product.html">Read more</a>  			
                     </article>
                  </div>
               </div>
            </div>
         </div>
         <!-- GALLERY --> 	
         <div id="third-block">
            <div class="line">
                <h2>mobile gallery</h2>
               <p>.</p>
                <p>.</p>
                <p>.</p>
                <p>.</p>
               <div class="s-12 m-6 l-3">
                      <img src="img/iphone7s.jpg" />
                     <p class="subtitile">Iphone 7 đẳng cấp
                     </p>
                  </div>
                  <div class="s-12 m-6 l-3">
                      <img src="img/oppof1s.jpg" />
                     <p class="subtitile">Camera phone sang chảnh
                     </p>
                  </div>
                  <div class="s-12 m-6 l-3">
                      <img src="img/sonyxz.jpg" />
                     <p class="subtitile">Sony thời thượng
                     </p>
                  </div>
                  <div class="s-12 m-6 l-3">
                      <img src="img/sss7.jpg" />  
                     <p class="subtitile">Sam Sung tinh tế
                     </p>
                  </div>
               </div>
            </div>
         </div>
         <div id="fourth-block">
            <div class="line">
               <div id="owl-demo2" class="owl-carousel owl-theme">
               </div>
            </div>
         </div>
      </section>
</asp:Content>

