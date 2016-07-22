<%@ Page Title="Untitled" Language="VB" MasterPageFile="Main.master" AutoEventWireup="false" CodeFile="bh3index.aspx.vb" Inherits="bh3index" %>
<%@ Import Namespace="Bhinneka.Utils" %>
<%@ Register Src="~/controls/button-buy.ascx" TagName="ButtonBuy" TagPrefix="Bhinneka" %>
<%-- frontpage type --%>
<%@ Register Src="~/controls/frontpage-main-banner.ascx" TagName="MainBanner" TagPrefix="Bhinneka" %>
<%@ Register Src="~/controls/frontpage-top-banner.ascx" TagName="TopBanner" TagPrefix="Bhinneka" %>
<%-- frontpage type --%>
<%@ Reference Control="~/controls/frontpage-type-parade.ascx" %>
<%@ Reference Control="~/controls/frontpage-type-column.ascx" %>
<%@ Reference Control="~/controls/frontpage-type-fluid-stand.ascx" %>
<%@ Reference Control="~/controls/frontpage-type-masonry.ascx" %>
<%@ Reference Control="~/controls/frontpage-type-rich-content.ascx" %>
<%@ Reference Control="~/controls/frontpage-the-solutions.ascx" %>
<%@ Reference Control="~/controls/frontpage-type-big-stand.ascx" %>
<%@ Reference Control="~/controls/GoogleTagManagerDataLayer.ascx" %>
<%@ Import Namespace="Bhinneka.StaticFiles.StaticFilesController" %>
<%@ Register Src="~/bisnis/page/main-page-nav.ascx" TagName="MainPageNav" TagPrefix="Bhinneka" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <asp:Panel ID="pnlDefaultPage" runat="server">
        <div style="display: none;"><Bhinneka:TopBanner ID="TopBanner" runat="server" /></div>
        <div id="frontpageContent" style="background-color: #fff;">
            <!--[if lt IE 9]><div class="front-wrapper-full marginauto lt-ie9"><![endif]-->
            <!--[if gt IE 8]><!--> 
            <div class="front-wrapper-full marginauto"> <!--<![endif]-->
                <Bhinneka:MainBanner ID="MainBanner" runat="server" />
            </div>
            <!--[if lt IE 9]><div class="front-wrapper marginauto margin-top40 lt-ie9"><![endif]-->
            <!--[if gt IE 8]><!--> 
            <div class="front-wrapper marginauto margin-top40"> <!--<![endif]-->
                <asp:Panel ID="pnlSection1" runat="server"></asp:Panel>
                <div class="margin-top40 margin-bottom80">
                    <asp:Panel ID="pnlSection2" runat="server"></asp:Panel>
                </div>
            </div>
            <div style="background-color: #fff; position: relative; width: 100%;">
                <!--[if lt IE 9]><div class="front-wrapper marginauto lt-ie9"><![endif]-->
                <!--[if gt IE 8]><!--> 
                <div class="front-wrapper marginauto"> <!--<![endif]-->
                    <div id="frontpageProductRecommendation" class="padding-top60" style="background-color: #FFF; position: relative;">
                        <div class="product-type-2 marginauto text-center">
                            <div class="frontpage-title softgray text-center">
                                <div id="columnTitlePrefix"></div>
                                <span id="ornamentLeft" style="vertical-align:bottom;"></span>
                                <h2 id="columnTitle" class="black"></h2>
                                <span id="ornamentRight" style="vertical-align:bottom;"></span>
                            </div>
                            <div class="padding-top40">
                                <div id="divBannerContainer" class="product-type-2-banner MainFloatLeft margin-bottom40 padding-bottom40 frontpageProductRecommendationHeader" style="display: none;">
                                </div>
                                <div id="divProductList"></div>
                                <div class="MainClearBoth"></div>
                            </div>
                            <div class="product-type-2-clear-bottom"></div>
                        </div>
                        <div class="MainClearBoth"></div>
                    </div>
                </div>
            </div>
            <asp:Panel ID="pnlSection3" runat="server"></asp:Panel>
        
            <asp:Panel ID="pnlSection4" runat="server"></asp:Panel>

            <div style="background-color: #fff; position: relative; width: 100%;">
                <!--[if lt IE 9]><div class="front-wrapper marginauto lt-ie9"><![endif]-->
                <!--[if gt IE 8]><!--> 
                <div class="front-wrapper marginauto"> <!--<![endif]-->
                    <div class="padding-top60" style="background-color: #fff; position: relative;">
                        <asp:Panel ID="pnlSection5" runat="server"></asp:Panel>
                    </div>
                    <div class="margin-top20">
                        <asp:Panel ID="pnlSection6" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>

            <asp:Panel ID="pnlSection7" runat="server"></asp:Panel>

            <div class="padding-top80" style="background-color: #fff; position: relative; width: 100%;">
                <!--[if lt IE 9]><div class="front-wrapper marginauto lt-ie9"><![endif]-->
                <!--[if gt IE 8]><!--> 
                <div class="front-wrapper marginauto"> <!--<![endif]-->
                    <div>
                        <asp:Panel ID="pnlSection8" runat="server"></asp:Panel>
                    </div>
                    <asp:Panel ID="pnlSection9" runat="server"></asp:Panel>
                    <div class="margin-top60">
                        <asp:Panel ID="pnlSection10" runat="server"></asp:Panel>
                    </div>
                    <asp:Panel ID="pnlSection11" runat="server"></asp:Panel>
                </div>
            </div>
            <asp:Panel ID="pnlSection12" runat="server"></asp:Panel>

            <asp:Panel ID="pnlSection13" runat="server"></asp:Panel>

            <div class="curtain text-center" style="position: relative; overflow: hidden; color: #fff;">
                <div class="curtainContent" style="min-width: 993px; width: 100%; position: relative; z-index: 0; margin: auto;">
                    <div class="curtainRichContent" style="position: absolute; top: 0; bottom: 0; left: -200%; right: -200%;">
                        <div>
                            <img src="/images/frontpage/bhinneka-marketplace-background.jpg?d=201607040815" usemap="#MapMarketPlace" alt="Marketplace" title="Marketplace" />
                            <map name="MapMarketPlace" id="MapMarketPlace">
                                <area shape="rect" coords="1598,796,1600,798" alt="Image Map" style="outline: none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
                                <area alt="" title="" href="/aspx/specialpage/bhinneka-marketplace.aspx" shape="poly" coords="561,797,670,1,1,1,2,797" style="outline:none;" target="_self" />
                                <area alt="" title="" href="/marketplace-promo/pag160600087/great-camera-sale" shape="poly" coords="650,244,1598,296,1597,2,685,0" style="outline:none;" target="_self" />
                                <area alt="" title="" href="/marketplace-promo/pag160600088/festival-gadget" shape="poly" coords="612,516,1598,510,1598,796,569,796" style="outline:none;" target="_self" />
                            </map>
                        </div>
                    </div>
                    <!--[if lt IE 8]><div class="font14" style="position: absolute; top: 375px; width: 100%; line-height: 1.5; left: -350px;"><![endif]-->
                    <!--[if gt IE 7]><!-->
                    <div class="font14" style="position: absolute; top: 375px; width: 100%; line-height: 1.5;"> <!--<![endif]-->
                        <div class="marginauto" style="width: 993px;">
                            <div class="margin-top10" style="width: 250px; margin-left: 35px;">
                                Jual produk Anda ke jutaan pelanggan Bhinneka.Com. Ribuan produk bisa Anda jual dari rumah. Gabung jadi merchant BHINNEKA MARKETPLACE sekarang!
                            </div>
                            <asp:HyperLink NavigateUrl="/aspx/specialpage/bhinneka-marketplace.aspx" style="text-decoration: none; color: #fff; cursor: pointer;" runat="server">
                                <div class="font16 margin-top20" style="width: 185px; height: 40px; margin-left: 65px; line-height: 37px; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; background: #017CCC;">Daftar Sekarang !</div>
                            </asp:HyperLink>
                        </div>
                    </div>
                    <!--[if lt IE 8]><div class="font24" style="position: absolute; top: 300px; width: 100%; left: -195px; color: #9FC22A;"><![endif]-->
                    <!--[if gt IE 7]><!-->
                    <div class="font24" style="position: absolute; top: 300px; width: 100%; color: #9FC22A;"> <!--<![endif]-->
                        <div class="marginauto" style="width: 993px;">
                            <div style="width: 200px; margin-left: 370px;">
                                TOP MERCHANT
                            </div>
                        </div>
                    </div>
                    <!--[if lt IE 8]><div style="position: absolute; top: 335px; width: 100%; left: -800px;"><![endif]-->
                    <!--[if gt IE 7]><!-->
                    <div style="position: absolute; top: 335px; width: 100%;"> <!--<![endif]-->
                        <div class="marginauto" style="width: 993px;">
                            <div style="width: 2300px; height: 125px; margin-left: 360px; overflow: hidden;">
                                <div class="frontpage-merchant-product-wrap padding-leftright20" style="position: relative; width: 625px; overflow: hidden;">
                                    <div class="frontpage-merchant-product margin-top10" style="">
                                        <asp:Repeater ID="rptFrontpageMerchant" runat="server">
                                            <ItemTemplate>
                                                <a class="frontpage-merchant-product-link MainFloatLeft" style="width: 325px; text-decoration: none;" href="<%# Container.DataItem(3)%>">
                                                    <div class="MainFloatLeft"><img class="TransparentImages" width="100" src="<%# Container.DataItem(2)%>" alt="" title="" /></div>
                                                    <div class="MainFloatLeft text-left" style="text-decoration: none; margin-left: 10px; color: #5F5F5F; width: 200px;">
                                                        <span class="MainDisplayBlock font18 text-bold"><%# Container.DataItem(0)%></span>
                                                        <span class="MainDisplayBlock" style="margin-top: 5px; font-size: 13px; line-height: 1.5;"><%# Container.DataItem(1)%></span>
                                                        <span class="MainDisplayBlock font12" style="margin-top: 5px; color: #1982F5;">Lihat Detail</span>
                                                    </div>
                                                </a>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <div class="MainClearBoth"></div>
                                    </div>
                                    <span class="frontpage-merchantleft-arrow MainDisplayBlock" style="cursor: pointer; background: url('/images/frontpage/frontpage-mesh-arrow-left.png') no-repeat center; top: 55px; left: 0; width: 12px; height: 19px; position: absolute;" title="previous"></span>
                                    <span class="frontpage-merchantright-arrow MainDisplayBlock" style="cursor: pointer; background: url('/images/frontpage/frontpage-mesh-arrow-right.png') no-repeat center; top: 55px; right: 0; width: 12px; height: 19px; position: absolute;" title="next"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="curtain text-center" style="position: relative; background: #3D2D37; overflow: hidden; color: #fff; height: 798px;">
                <div class="curtainContent" style="min-width: 993px; width: 100%; position: relative; z-index: 0;">
                    <div class="curtainRichContent" style="position: absolute; top: 0; bottom: 0; left: -200%; right: -200%;">
                        <a href="/Associate/Associate.aspx" style="color: #fff; line-height: 1.4;">
                            <img src="/images/frontpage/affiliate-background.jpg" alt="Affiliate" title="Affiliate" />
                            <span class="MainDisplayBlock" style="position: absolute; width: 100%; top: 200px; text-align: center;">
                                <span class="MainDisplayBlock" style="font-size: 2.833em;">Mau Punya Passive Income?</span>
                                <span class="MainDisplayBlock" style="margin-top: 20px; font-size: 1.25em; line-height: 1.5;">
                                    <span class="MainDisplayBlock">Gabung sebagai Bhinneka Affiliate. Anda hanya perlu me-link-kan item barang yang terdapat pada situs Bhinneka.Com</span>
                                    <span class="MainDisplayBlock">Jika terjadi pembelian yang berasal dari link situs Anda, maka Anda berhak mendapatkan sejumlah insentif.</span>
                                </span>
                                <span class="MainDisplayBlock" style="width: 230px; margin: 30px auto 0;"><span style="letter-spacing: 1px; text-decoration: none; color: #fff; background-color: #27c4e7; text-transform: uppercase; padding: 10px 15px; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; font-size: 1.333em; text-align: center;">Gabung Sekarang</span></span>
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlBhinnekaBisnisPage" runat="server">
        <style>
            .openSansFont {
                font-family: 'Open Sans', sans-serif;
            }

            .content {
                background: #EAEEF1;
                text-align: left;
                color: #353638;
                padding: 25px 25px 35px;
                font-size: 14px;
                font-style: italic;
                line-height: 20px;
                border-radius: 7px 7px 0 0;
                -moz-border-radius: 7px 7px 0 0;
                -webkit-border-radius: 7px 7px 0 0;
                -ms-border-radius: 7px 7px 0 0;
                -o-border-radius: 7px 7px 0 0;
            }

            .testimonial {
                background: #134783;
                background: linear-gradient(to bottom, #134783, rgba(255,0,0,0));
                color: #FFF;
                background: -moz-linear-gradient(top, #134783, rgba(255,0,0,0));
                background: -webkit-gradient(inear,left top,left bottom,from #134783 to rgba(255,0,0,0));
                background: -webkit-linear-gradient(top, #134783, rgba(255,0,0,0));
                background: -o-linear-gradient(top, #134783, rgba(255,0,0,0));
                background: -ms-linear-gradient(top, #134783, rgba(255,0,0,0));
            }

            .btn-Register {
                background: #FFFFFF;
                padding: 10px 49px;
                font-weight: bold;
                border-radius: 5px;
                color: #114B7B;
                font-size: 16px;
                cursor: pointer;
                display: inline-block;
                text-decoration: none;
            }

            .menu {
                color: #363636;
                font-size: 14px;
                line-height: 26px;
                font-weight: bold;
                text-align: center;
            }

            A:link {
                text-decoration: none;
            }

            A:active {
                text-decoration: none;
            }

            A:visited {
                text-decoration: none;
            }

            .faq {
                color: #FFFFFF;
                font-size: 14px;
                text-decoration: underline;
            }
        </style>
        <div style="background: #063E7B; text-align: center; padding: 50px 0 80px 0; overflow: hidden;">
            <div style="width: 993px; margin: auto; position: relative;">
                <div style="width: 410px; float: left; margin-left: -59px;">
                    <div style="font-size: 30px; text-align: left; line-height: 34px; color: #FFF; font-weight: bold;margin-bottom: 5px;">BHINNEKA BISNIS</div>
                    <div class="margin-bottom8" style="font-size: 16px; text-align: left; color: #FFF">CORPORATE SMART PROCUREMENT</div>
                    <div style="text-align: justify; font-size: 14px; color: #DCECF6; padding: 20px 0; line-height: 20px;">
                        Platform online pengadaan kebutuhan produk dan jasa korporasi yang LENGKAP, AMAN, HEMAT, dengan proses yang CEPAT serta layanan purna jual yang HEBAT!
                    </div>
                    <div style="text-align: justify; font-size: 14px; color: #DCECF6; line-height: 20px; margin-bottom: 20px;">
                        Transformasi proses pengadaan korporasi dimana pemegang kepentingan berkolaborasi secara efisien, terkendali, transparan dan dapat dipertanggungjawabkan.
                    </div>
                    <div style="text-align: center; margin-top: 51px;">
                        <a href="/page/registration-step1" class="btn-Register">Daftar Sekarang!</a>
                    </div>
                    <div style="text-align: left; margin: 20px 0 0 120px;">
                        <a href="/page/popup-faq" rel="moodalbox 585 934" style="color: #FFFFFF; font-size: 13px; text-decoration: underline; font-weight: bold;">FAQS</a> 
                        <span style="margin: 0 10px; color: #FFFFFF;">|</span>
                        <a href="/page/bhinneka-ways" style="color: #FFFFFF; font-size: 13px; text-decoration: underline; font-weight: bold;">BHINNEKA WAYS</a>
                    </div>
                </div>
                <div style="width: 433px; float: right; border-radius: 5px;">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/zZ7D0gTrkb8" frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="MainClearBoth"></div>
            </div>
        </div>
        <div style="background: #FFF;" class="padding-bottom80 text-center">
            <div style="margin-top: 80px;">
                <div style="font-size: 28px; color: #3F3F3F;">BHINNEKA BISNIS LENGKAP,</div>
                <div style="font-size: 28px; color: #3F3F3F;">CEPAT, EFISIEN, AMAN, TERJAMIN DAN HEMAT!</div>
            </div>
            <div style="margin: 50px 0 50px 135px; font-size: 24px; line-height: 40px; color: #3F3F3F; text-align: left;">
                <div style="margin: auto; width: 800px;">
                    <ul style="float: left; width: 49%; display: block; margin: 0; padding: 0;">
                        <li style="color: #13407B;"><span style="color: #717171; font-size: 24px;">Terms Of Payment</span></li> 
                        <li style="color: #13407B;"><span style="color: #717171; font-size: 24px;">Grouping by Business Unit</span></li>
                        <li style="color: #13407B;"><span style="color: #717171; font-size: 24px;">Order Approval Workflow</span></li>
                        <li style="color: #13407B;"><span style="color: #717171; font-size: 24px;">Reporting & Dashboard</span></li>
                    </ul>
                    <ul style="float: left; width: 49%; display: block; margin: 0; padding: 0;">
                        <li style="color: #13407B;"><span style="color: #717171; font-size: 24px;">Order & Service Tracking</span></li>
                        <li style="color: #13407B;"><span style="color: #717171; font-size: 24px;">Multi-User Accounts</span></li>
                        <li style="color: #13407B;"><span style="color: #717171; font-size: 24px;">Spending Limit by User by Group</span></li>
                        <li style="color: #13407B;"><span style="color: #717171; font-size: 24px;">Consumer & Commercial Products</span></li>
                    </ul>
                </div>
                <div style="background: #fff;">
                    <div class="mainContent993" style="padding-bottom: 40px; margin: auto;">
                        <div style="float: left; width: 15%; margin: 100px 5% 40px 10%;">
                            <a href="/page/corporate-product" style="text-align:center; display: block;">
                                <img src="/images/business/bhinneka-bisnis-corporate-product-icon.png" alt="CORPORATE PRODUCTS" title="CORPORATE PRODUCTS" /> 
                                <span class="menu">
                                    CORPORATE PRODUCTS
                                </span>
                            </a>
                        </div>
                        <div style="float: left; width: 14%; margin: 100px 9.5% 40px 9.5%;">
                            <a href="/page/corporate-pricing" style="text-align:center; display: block;">
                                <img src="/images/business/bhinneka-bisnis-corporate-pricing-icon.png" alt="CORPORATE PROCINGS" title="CORPORATE PROCINGS" /> 
                                <span class="menu">
                                    CORPORATE PRICINGS
                                </span>
                            </a> 
                        </div>
                        <div style="float: left; width: 15%; margin: 100px 5% 40px 5%; ">
                            <a href="/page/smart-procurement" style="text-align:center; display: block;">
                                <img src="/images/business/bhinneka-bisnis-smart-procurement-icon.png" alt="SMART PROCUREMENT" title="SMART PROCUREMENT" /> 
                                <span class="menu">
                                    SMART PROCUREMENT
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="MainClearBoth"></div>
                </div>
            </div>
        </div>
        <%-- testimonial section --%>
        <div class="testimonial padding-topbottom80 text-center ">
            <div class="mainContent">
                <div style="margin-bottom: 40px;">
                    <div style="font-size: 28px; color: #F9F1FF;">WE PROVIDE THE ULTIMATE SHOPPING EXPERIENCE </div>
                    <div style="font-size: 28px; color: #F9F1FF;">& OUR CUSTOMERS APPRECIATE IT.</div>
                </div>
                    <div style="margin-top: 40px; line-height: 24px;">
                    <div style="font-size: 18px; color: #F9F1FF;">Melayani pelanggan korporasi sejak 1999, lintas industri dan sektoral,</div>
                    <div style="font-size: 18px; color: #F9F1FF;">badan usaha kecil menengah besar, perusahaan publik, institusi</div>
                    <div style="font-size: 18px; color: #F9F1FF;">pendidikan, organisasi, lembaga publik dan kantor perwakilan.</div>
                    <div style="font-size: 18px; color: #F9F1FF;">Kepuasan pelanggan adalah obsesi pelayanan kami.</div>
                </div>
            </div>
            <div class="mainContent993" style="padding: 40px 0;">
                <div style="float: left; margin: 225px 5px; ">
                    <a id="imgPrev" onclick="ChangeSlides(-1)"> <img src="/images/business/bhinneka-bisnis-arrow-left.png" alt="" style="cursor: pointer;"/></a>
                </div>
                <div>
                    <div class="slide" style="float: left; width: 280px; margin: 40px 15px;">
                        <div class="content">
                        "Tak diragukan pilihan saya untuk PC dan peripheral melalui Bhinneka.com. Selain informasi harga fair market dan keterangan specification yang self service dari web, adanya Corporate Sales yang sudah dinegosiasikan payment term beserta dedicated account managernya, memberikan rasa aman dan nyaman dalam fulfillment kebutuhan korporasi saya"
                        </div>
                        <div style="margin-left: 269px;">
                            <img src="/images/business/bhinneka-bisnis-panah-testimonial.png" alt="" />
                        </div>
                        <div style="margin-left: 180px;">
                            <img src="/images/business/bhinneka-bisnis-testi-intel.png" alt="INTEL" title="INTEL" />
                        </div>
                    </div>
                    <div class="slide" style="float: left; width: 280px; margin: 40px 15px;">
                        <div class="content">
                        "Bhinneka.com cukup lengkap menyediakan informasi harga dan spesifikasi berbagai barang kebutuhan IT. Ditambah lagi dengan account manager untuk corporate sales yang profesional dalam spesifikasi produk dan negosiasi harga memberikan kepastian dalam ketepatan penyediaan barang dengan strategi IT perusahaan saya"
                        </div>
                        <div style="margin-left: 269px;">
                            <img src="/images/business/bhinneka-bisnis-panah-testimonial.png" alt="" />
                        </div>
                        <div style="margin-left: 180px;">
                            <img src="/images/business/bhinneka-bisnis-testi-japan.png" alt="JAPAN" title="JAPAN" />
                        </div>
                    </div>
                    <div class="slide" style="float: left; width: 280px; margin: 40px 15px;">
                        <div class="content">
                        "So far, respon yang diberikan sangat cepat, pengiriman pun sangat cepat"
                        </div>
                        <div style="margin-left: 269px;">
                            <img src="/images/business/bhinneka-bisnis-panah-testimonial.png" alt="" />
                        </div>
                        <div style="margin-left: 180px;">
                            <img src="/images/business/bhinneka-bisnis-testi-gojek.png" alt="GOJEK" title="GOJEK" />
                        </div>
                    </div>
                    <div class="slide" style="float: left; width: 280px; margin: 40px 15px;">
                        <div class="content">
                        "Menurut saya PT Bhinneka Mentari Dimensi termasuk salah satu perusahaan Olshop terbesar dan terlengkap khususnya untuk barang-barang elektronik, selama ini PT Citilink Indonesia sudah bekerja sama dengan baik bersama PT bhineka,dan sejauh ini untuk pelayanan yang diberikan sangat baik dan sangat responsif, untuk harga yang ditawarkan juga sangat bersaing dengan vendor-vendor lainya.  Dan kami berharap kedepannya PT Bhineka bisa selalu membantu kami untuk memberikan solusi dalam proses pengadaan di perusahan kami"
                        </div>
                        <div style="margin-left: 269px;">
                            <img src="/images/business/bhinneka-bisnis-panah-testimonial.png" alt="" />
                        </div>
                        <div style="margin-left: 180px;">
                            <img src="/images/business/bhinneka-bisnis-testi-citilink.png" alt="CITILINK" title="CITILINK" />
                        </div>
                    </div>
                    <div class="slide" style="float: left; width: 280px; margin: 40px 15px;">
                        <div class="content">
                        "Bhinneka.com cukup lengkap menyediakan informasi harga dan spesifikasi berbagai barang kebutuhan IT. Ditambah lagi dengan account manager untuk corporate sales yang profesional dalam spesifikasi produk dan negosiasi harga memberikan kepastian dalam ketepatan penyediaan barang dengan strategi IT perusahaan saya"
                        </div>
                        <div style="margin-left: 269px;">
                            <img src="/images/business/bhinneka-bisnis-panah-testimonial.png" alt="" />
                        </div>
                        <div style="margin-left: 180px;">
                            <img src="/images/business/bhinneka-bisnis-testi-ACC.png" alt="ACC" title="ACC" />
                        </div>
                    </div>
                    <div class="slide" style="float: left; width: 280px; margin: 40px 15px;">
                        <div class="content">
                        "Pengirimannya cepat dan harganya kompetitif"
                        </div>
                        <div style="margin-left: 269px;">
                            <img src="/images/business/bhinneka-bisnis-panah-testimonial.png" alt="" />
                        </div>
                        <div style="margin-left: 180px;">
                            <img src="/images/business/bhinneka-bisnis-testi-tunas.png" alt="TUNAS" title="TUNAS" />
                        </div>
                    </div>
                </div>
                <div  style="float: right; margin: 225px 0;">
                    <a id="imgNext" onclick="ChangeSlides(1)" > <img src="/images/business/bhinneka-bisnis-arrow-right.png" alt="" style="cursor: pointer;"/> </a>
                </div>
            </div>
            <div class="MainClearBoth"></div>
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="footerContent" runat="Server">
    <%If Not IsBhinnekaBusiness() Then%>
    <div class="mainContent frontSeoSection" style="border-top: 1px solid #c5c1c2;">
        <asp:Literal ID="litLeftFooter" runat="server"></asp:Literal>
        <asp:Literal ID="litRightFooter" runat="server"></asp:Literal>
        <div class="MainClearBoth"></div>
    </div>
    <% End If%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerFunctions" runat="server">
    <%If Not IsBhinnekaBusiness() Then%>
<script type="text/template" id="rptProduct">
    <div class="product-type-2-container margin-bottom40 padding-bottom20 frontpageProductRecommendationHeader" data-track-id="{{DataTrackID}}" data-track-name="{{PartID}} - {{FullName}}" data-track-creative="{{Thumbnail160x160}}" data-track-version="Column {{Column}} Slot {{Index}}" data-track-link="{{Link}}" data-scarabitem="{{PartID}}">
        <div class="product-item frontpageProductRecommendationContent" style="padding: 5px 10px;">
            <a class="frontpageProductRecommendationContent product-type-2-img" href="{{Link}}" title="{{FullName}}">
                <img id="" title="{{FullName}}" class="frontpageProductRecommendationContent" src="{{Thumbnail160x160}}" alt="{{FullName}}">
            </a>
            <a class="frontpageProductRecommendationContent product-type-2-details margin-top10" href="{{Link}}" style="height: 96px;">
                <span class="product-type-2-desc-container frontpageProductRecommendationContent">
                    <span class="product-type-2-product-name text-bold frontpageProductRecommendationContent" title="{{FullName}}">{{FullName}}</span>
                    <span id="" title="{{Description}}" class="product-type-2-desc softgray frontpageProductRecommendationContent">{{Description}}</span>
                </span>
                <span class="product-type-2-price-container margin-top10 frontpageProductRecommendationContent">
                    {{#if IsDiscount}}
                    <span id="" title="{{FullName}}" class="product-type-2-line-through softgray frontpageProductRecommendationContent">{{FullDisplayPrice}}</span>
                    <span id="" class="product-type-2-discount-container frontpageProductRecommendationContent" title="{{FullName}}">
                        <span class="product-arrow-left-new frontpageProductRecommendationContent"></span>
                        <span id="" class="product-discount-new frontpageProductRecommendationContent" style="margin-left: -6px;">-{{DisplayDiscount}}%</span>                                    
                    </span>
                    {{/if}}    
                    {{#if IsPromo}}
                    <span id="" class="product-promo-label frontpageProductRecommendationContent">PROMO</span>
                    {{/if}}
                    <span id="" title="{{FullName}}" class="product-type-2-price-new text-bold frontpageProductRecommendationContent">{{FullDisplayNetPrice}}</span>
                </span>
            </a>
            {{#if DisplayRemainingQty}}
            <span class="product-qty-label frontpageProductRecommendationContent">Sisa {{PromoQty}}!</span>
            {{/if}}
            {{#if DisplayStatus}}
            <span class="frontpageProductRecommendationContent product-type-2-status-container text-bold product-type-2-status-{{StatusCSS}}">{{Status}}</span>
            {{/if}}
            {{#if JaminanMurah}}
            <a href="/aspx/products/murah-maksimal.aspx" class="product-type-2-murah-maksimal frontpageProductRecommendationContent"><span class="murah-maksimal-small-icon TransparentImages frontpageProductRecommendationContent" title="Murah Maksimal | Click for More Info"></span></a>
            {{/if}}
            <span style="height: 36px; margin-top: 5px; position: relative;" class="frontpageProductRecommendationContent">
                {{#if IsPromo}}
                <span id="" class="product-promo-name-container-new frontpageProductRecommendationContent">
                    <span class="product-promo-arrow-top-new frontpageProductRecommendationContent"></span>
                    <span class="product-promo-name-new frontpageProductRecommendationContent">{{PromoName}}
                        <a class="frontpageProductRecommendationContent" target="_blank" style="text-decoration: none; color: #4087E1;" href="{{PromoLink}}" onmouseover="this.style.textDecoration='underline';" onmouseout="this.style.textDecoration='none';">Selengkapnya</a>
                    </span>
                </span>
                {{/if}}
                <a href="{{Link}}" title="{{FullName}}" class="frontpageProductRecommendationContent">
                    {{#if DisplayInstallment}}
                    <span id="" class="product-installment-container frontpageProductRecommendationContent">
                        Cicilan {{Tenor}} x <span class="frontpageProductRecommendationContent" style="display: inline-block; color: red; font-weight: bold;">{{InstallmentDetail}}</span>
                    </span>
                    {{/if}}
                    {{#if IsFreeShipping}}
                    <span id="" class="product-type-2-product-free-shipping frontpageProductRecommendationContent">Free Shipping*</span>
                    {{/if}}
                </a>
            </span>
        </div>
    </div>
</script>
<script type="text/javascript" src="/js/frontpage-product-recommendation.min.js?d=201607081550"></script>
<script language="javascript" type="text/javascript">
    function setImageDimension(obj) {
        if (!obj) {
            return;
        }
        var _obj = {};
        _obj.productType = $$(obj.productType);
        _obj.imgs = _obj.productType[0].getElements("img");

        _obj.imgs.each(function (el, i) {
            el.setStyles({
                "width": el.naturalWidth ? el.naturalWidth : "100%",
                "height": el.naturalHeight ? el.naturalHeight : "100%"
            });
        });
    }
    window.onload = function () {
        setImageDimension({ "productType": ".product-type-3" });
    }
</script>
<!--[if gt IE 8]><!-->
    <script language="javascript" type="text/javascript" src="<%= GetStaticFileJS("masonry").StaticFileUrl %>"></script>
    <script language="javascript" type="text/javascript" src="<%= GetStaticFileJS("imagesloaded").StaticFileUrl %>"></script>
<!--<![endif]-->
<script language="javascript" type="text/javascript">
    var frontpageMerchantProductWrap = $$(".frontpage-merchant-product-wrap"),
            frontpageMerchantProduct = $$(".frontpage-merchant-product"),
            frontpageMerchantProductLink = $$(".frontpage-merchant-product-link"),
            leftArrow = $$(".frontpage-merchantleft-arrow"),
            rightArrow = $$(".frontpage-merchantright-arrow"),
            frontpageMerchantTotalWidth = 0,
            totalPages = 0,
            currentPage = 1,
            frontpageMerchantProductWrapWidth;

    frontpageMerchantProductLink.each(function (el, i) {
        frontpageMerchantTotalWidth += el.getCoordinates().width;
    });
    frontpageMerchantProductWrapWidth = frontpageMerchantProductWrap[0].getCoordinates().width;
    frontpageMerchantProduct[0].setStyle("width", frontpageMerchantTotalWidth);
    totalPages = Math.ceil(frontpageMerchantTotalWidth / frontpageMerchantProductWrapWidth);
    leftArrow[0].addEvent("click", function (e) {
        if (currentPage > 1) {
            currentPage -= 2;
            var marginLeft = currentPage * (frontpageMerchantProductWrapWidth) - 15 * currentPage;
            frontpageMerchantProduct[0].setStyle("margin-left", -marginLeft);
            currentPage += 1
        }
    });

    rightArrow[0].addEvent("click", function (e) {
        if (currentPage < totalPages) {
            var marginLeft = currentPage * (frontpageMerchantProductWrapWidth) - 15 * currentPage;
            frontpageMerchantProduct[0].setStyle("margin-left", -marginLeft);
            currentPage += 1;
        }
    });
    FrontpageProductModule.adjustHeight(
        {
            "productTypeCssClass": ".product-type-2",
            "productTypeBannerCssClass": ".product-type-2-banner",
            "productTypeContainerCssClass": ".product-type-2-container",
            "productTypeDescCssClass": ".product-type-2-desc-container",
            "productTypeDetails": ".product-type-2-details",
            "productTypePriceCssClass": ".product-type-2-price-container",
            "productTypeDetailsDefaultHeight": 96
        }
    );
    function isIE(version, comparison) {
        var cc = "IE",
            b = document.createElement("B"),
            docElem = document.documentElement,
            isIE;

        if (version) {
            cc += " " + version;
            if (comparison) { cc = comparison + " " + cc; }
        }

        b.innerHTML = "<!--[if " + cc + "]><b id=\"iecctest\"></b><![endif]-->";
        docElem.appendChild(b);
        isIE = !!document.getElementById("iecctest");
        docElem.removeChild(b);
        return isIE;
    }
    if (!isIE(8, "lte")) {
        var container = $$(".product-type-3-container");
        var msnry = new Masonry(container[0], {
            // options
            itemSelector: ".product-type-3-item",
            isInitLayout: false
        });
        imagesLoaded(container, function (instance) {
            msnry.reloadItems();
            msnry.layout();
        });

    }
    function runCurtainEffect() {

        var curtain = $$(".curtain"),
            curtainContent = $$(".curtainContent"),
            h = window.getHeight(),
            t = window.getScrollTop(),
            evt = ["load", "scroll", "resize", "mousewheel"],
            curtainScrollTop = [];
        if (!curtain || !curtainContent || curtain.length !== curtainContent.length) {
            return false;
        }
        var updateCurtainCoordinates = function () {
            for (var i = 0; i < curtain.length - 1; i++) {
                curtainScrollTop[i] = $(curtain[i]).getCoordinates().top;
                var imgHeight = function () {
                    var height = 0;
                    if ($(curtainContent[i]).getElements("div[class=curtainRichContent]").length > 0) {
                        $(curtainContent[i]).getElements("img").each(function (el, i) {
                            if (height <= 0) {
                                height = el.getCoordinates().height;
                            }
                            if (height < el.getCoordinates().height) {
                                height = el.getCoordinates().height;
                            }
                        });
                    } else {
                        height = curtainContent[i].getSize().scrollSize.y;
                    }
                    return height;
                }
                $(curtain[i]).setStyles({
                    "height": imgHeight()
                });
                $(curtainContent[i]).setStyles({
                    "height": imgHeight()
                });
            }
        }
        function updateCurtainContentPosition() {
            if (isMobileDevice()) {
                return;
            }
            for (var i = 0; i < curtainScrollTop.length; i++) {
                if (curtainContent[i].getCoordinates().height <= h) {
                    if (t >= curtainScrollTop[i]) {
                        curtainContent[i].setStyles({
                            "position": "fixed",
                            "top": 0,
                            "left": 0
                        });
                    } else {
                        curtainContent[i].setStyles({
                            "position": "relative",
                            "top": 0
                        });
                    }
                } else {
                    if (h + t >= curtainScrollTop[i] + curtainContent[i].getCoordinates().height) {
                        curtainContent[i].setStyles({
                            "position": "fixed",
                            "top": h - curtainContent[i].getCoordinates().height,
                            "left": 0
                        });
                    } else {
                        curtainContent[i].setStyles({
                            "position": "relative",
                            "top": 0
                        });
                    }
                }
            }
        }
        for (var i = 0; i < evt.length; i++) {
            window.addEvent(evt[i], function (e) {
                h = window.getHeight();
                t = window.getScrollTop();
                updateCurtainCoordinates();
                updateCurtainContentPosition();
            });
        }

    }
    runCurtainEffect();
    window.addEvent("scroll", function () {
        var windowTop = window.getScrollTop();
        var productRec = $("frontpageProductRecommendation").getCoordinates().top - 500;
        if (windowTop >= productRec) {
            if (!$("frontpageProductRecommendation").getAttribute("class").includes("loaded")) {
                $("frontpageProductRecommendation").setAttribute("class", " loaded");
                var bannerResult = "<%=bannerResult%>";
                var columnTitlePrefix = "<%=litTitlePrefix%>";
                var columnTitle = "<%=litTitle%>";
                var ornamentLeftStyle = "<%=ornamentLeftStyle%>";
                var ornamentLeftClass = "<%=ornamentLeftClass%>";
                var ornamentRightStyle = "<%=ornamentRightStyle%>";
                var ornamentRightClass = "<%=ornamentRightClass%>";
                var dataTrackID = "<%=dataTrackID%>";
                var dataTrackName = "<%=dataTrackName%>";
                var dataTrackCreative = "<%=dataTrackCreative%>";
                var dataTrackVersion = "<%=dataTrackVersion%>";
                var dataTrackLink = "<%=dataTrackLink%>";
                if (bannerResult != "" && bannerResult != null) {
                    $("divBannerContainer").innerHTML = bannerResult;
                    $("divBannerContainer").setStyle("display", "block");
                    $("divBannerContainer").setAttribute("data-track-id", dataTrackID);
                    $("divBannerContainer").setAttribute("data-track-name", dataTrackName);
                    $("divBannerContainer").setAttribute("data-track-creative", dataTrackCreative);
                    $("divBannerContainer").setAttribute("data-track-version", dataTrackVersion);
                    $("divBannerContainer").setAttribute("data-track-link", dataTrackLink);
                }
                $("columnTitlePrefix").innerHTML = columnTitlePrefix;
                $("columnTitle").innerHTML = columnTitle;
                $("ornamentLeft").setStyle("margin-right", ornamentLeftStyle);
                $("ornamentLeft").setAttribute("class", ornamentLeftClass);
                $("ornamentRight").setStyle("margin-left", ornamentRightStyle);
                $("ornamentRight").setAttribute("class", ornamentRightClass);
                var emarsysParam = "<%=retval%>";
                emarsysParam = JSON.parse(emarsysParam);
                if (typeof dataLayer != "undefined") {
                    var result = dataLayer.push({
                        "event": "frontpageProductRecommendation",
                        "param": emarsysParam
                    });
                }
            }

        }
    });

    window.addEvent("domready", function () {
        var currentPosition = 0;
        var lastPosition = 0;
        var frontpageMainBannerOuterContainer = $("frontpageMainBannerOuterContainer");
        var frontpageMainBannerInnerContainer = $("frontpageMainBannerInnerContainer");
        var frontpageMainBannerNodeList = $$(".frontpageMainBannerNode");
        var frontpageMainBannerItemList = $$(".frontpageMainBannerItem");
        var windowWidth = window.getWidth();
        var frontpageMainBannerInnerContainerEff;
        var periodical = setInterval(run, 6000);
        var promoLabel = $$(".product-promo-label");
        var promoTooltip = $$(".product-promo-name-container-new");
        var promoTooltipArrow = $$(".product-promo-arrow-top-new");
        var paradeProductList = $$(".product-type-1-container");
        var ltIE9 = (msieversion() <= 8);
        if (window.getWidth() >= 1600) {
            windowWidth = 1600
        }
        frontpageMainBannerInnerContainer.setStyle("width", frontpageMainBannerItemList.length * windowWidth);
        frontpageMainBannerItemList.each(function (el, idx) {
            el.setStyle("width", windowWidth);
        });
        window.addEvent("resize", function () {
            windowWidth = window.getWidth();
            if (window.getWidth() >= 1600) {
                windowWidth = 1600
            }
            frontpageMainBannerInnerContainer.setStyle("width", frontpageMainBannerItemList.length * windowWidth);
            frontpageMainBannerItemList.each(function (el, idx) {
                el.setStyle("width", windowWidth);
            });
            frontpageMainBannerInnerContainer.setStyle("margin-left", -(currentPosition * windowWidth));
            if (promoLabel) {
                promoLabel.each(function (obj, i) {
                    if (window.getWidth() > 1024 && window.getWidth() <= 1366 && !ltIE9) {
                        if (promoLabel[i].getPosition().x > 1045) {
                            if (promoTooltip[i]) {
                                promoTooltip[i].setStyles({
                                    left: 0,
                                    width: "100%"
                                });
                                promoTooltipArrow[i].setStyle("margin-left", "150px");
                            }
                        }
                    }
                    else if (window.getWidth() <= 1024 && !ltIE9) {
                        if (promoLabel[i].getPosition().x > 768) {
                            if (promoTooltip[i]) {
                                promoTooltip[i].setStyles({
                                    left: 0,
                                    width: "100%"
                                });
                                promoTooltipArrow[i].setStyle("margin-left", "150px");
                            }
                        }
                    }
                });
            }
            if (paradeProductList) {
                paradeProductList.each(function (obj, index) {
                    if (window.getWidth() <= 1024 || ltIE9) {
                        if (index > 3) {
                            obj.setStyle("display", "none");
                        }
                    }
                    else {
                        if (index > 4) {
                            obj.setStyle("display", "none");
                        }
                    }
                });
            }
        });
        function run(pos) {
            var marginLeft;
            var effectDuration = 600;
            lastPosition = currentPosition;
            currentPosition++;
            if (currentPosition < 0 || currentPosition > frontpageMainBannerItemList.length - 1) {
                currentPosition = 0;
            }
            if (pos || pos == 0) {
                currentPosition = pos;
            }
            marginLeft = currentPosition * windowWidth;
            if (lastPosition == frontpageMainBannerItemList.length - 1) {
                effectDuration = Math.floor(frontpageMainBannerItemList.length / 2) * 600;
            }
            if (pos || pos == 0) {
                effectDuration = Math.abs(pos - lastPosition) * 600;
            }
            frontpageMainBannerInnerContainerEff = frontpageMainBannerInnerContainer.effects({ duration: effectDuration, wait: false });
            frontpageMainBannerInnerContainerEff.start({
                "margin-left": -marginLeft
            });
            frontpageMainBannerNodeList[currentPosition].setStyles({
                "background-color": "#fff"
                , "opacity": 1
            });
            for (var i = 0; i < frontpageMainBannerNodeList.length; i++) {
                if (i != currentPosition) {
                    frontpageMainBannerNodeList[i].setStyles({
                        "background-color": "#767573"
                        , "opacity": 0.7
                    });
                }
            }
        }
        frontpageMainBannerNodeList[currentPosition].setStyles({
            "background-color": "#fff"
            , "opacity": 1
        });
        frontpageMainBannerNodeList.each(function (el, i) {
            el.addEvents({
                mouseenter: function (e) {
                    el.setStyles({
                        "background-color": "#fff"
                        , "opacity": 1
                    });
                },
                mouseleave: function (e) {
                    if (i != currentPosition) {
                        el.setStyles({
                            "background-color": "#767573"
                            , "opacity": 0.7
                        });
                    }
                },
                click: function (e) {
                    clearInterval(periodical);
                    if (frontpageMainBannerInnerContainerEff) {
                        frontpageMainBannerInnerContainerEff.stop();
                    }
                    run(i);
                }
            });
        });
        var standSolutions = $$(".frontpage-solutions-container"),
            solutionsDescWrapper = $$(".frontpage-solutions-desc-wrapper");
        standSolutions.each(function (el, i) {
            el.addEvent("mouseenter", function () {
                solutionsDescWrapper[i].fireEvent("mouseenter");
                $(el).getElements("div[class=frontpage-solutions-tooltip-wrapper]")[0].setStyle("display", "none");
                $(el).getElements("div[class=frontpage-solutions-desc-wrapper]")[0].setStyle("display", "block");

            });
            el.addEvent("mouseleave", function () {
                solutionsDescWrapper[i].fireEvent("mouseleave");
                $(el).getElements("div[class=frontpage-solutions-tooltip-wrapper]")[0].setStyle("display", "block");
                $(el).getElements("div[class=frontpage-solutions-desc-wrapper]")[0].setStyle("display", "none");

            });
        });
        try {
            window.external.ContentDiscoveryReset();
        }
        catch (ex) {
        }
        if (promoLabel) {
            promoLabel.each(function (obj, i) {
                obj.addEvents({
                    mouseover: function () {
                        promoTooltip[i].setStyle("visibility", "visible");
                    },
                    mouseout: function () {
                        promoTooltip[i].setStyle("visibility", "hidden");
                    }
                });
                promoTooltip[i].addEvents({
                    mouseover: function () {
                        promoTooltip[i].setStyle("visibility", "visible");
                    },
                    mouseout: function () {
                        promoTooltip[i].setStyle("visibility", "hidden");
                    }
                });
                if (window.getWidth() > 1024 && window.getWidth() <= 1366 && !ltIE9) {
                    if (promoLabel[i].getPosition().x > 1045) {
                        if (promoTooltip[i]) {
                            promoTooltip[i].setStyles({
                                left: 0,
                                width: "100%"
                            });
                            promoTooltipArrow[i].setStyle("margin-left", "150px");
                        }
                    }
                }
                else if (window.getWidth() <= 1024 && !ltIE9) {
                    if (promoLabel[i].getPosition().x > 768) {
                        if (promoTooltip[i]) {
                            promoTooltip[i].setStyles({
                                left: 0,
                                width: "100%"
                            });
                            promoTooltipArrow[i].setStyle("margin-left", "150px");
                        }
                    }
                }
            });
        }
        if (paradeProductList) {
            paradeProductList.each(function (obj, index) {
                if (window.getWidth() <= 1024 || ltIE9) {
                    if (index > 3) {
                        obj.setStyle("display", "none");
                    }
                }
                else {
                    if (index > 4) {
                        obj.setStyle("display", "none");
                    }
                }
            });
        }
        if (typeof dataLayer != "undefined") {
            dataLayer.push({
                "event": "new-frontpage-column"
            });
        }
    });
</script>
    <% Else%>
    <script type="text/javascript">
        function getElementsByClassName(node, classname) {
            var a = [];
            var re = new RegExp('(^| )' + classname + '( |$)');
            var els = node.getElementsByTagName("*");
            for (var i = 0, j = els.length; i < j; i++)
                if (re.test(els[i].className)) a.push(els[i]);
            return a;
        }

        var slides = getElementsByClassName(document.body, 'slide');
        var i;
        var index = 1;
        showSlides(index);

        function ChangeSlides(n) {
            index += n;
            if (index < 1) {
                index = 1;
            }
            else if (index > (slides.length - 2)) {
                index = (slides.length - 2);
            }
            else {
                showSlides(index);
            }
        }

        function showSlides(n) {
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }

            for (i = n; i <= n + 2; i++) {
                slides[i - 1].style.display = "block";
            }
        }
    </script>
    <%End If%>
</asp:Content>