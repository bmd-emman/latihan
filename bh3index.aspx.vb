Imports Bhinneka.Configurations
Imports Bhinneka.Utils
Imports Bhinneka.Security
Imports Bhinneka.Pages
Imports Bhinneka.Products
Imports System.Collections.Generic
Imports System.IO
Imports Bhinneka.StaticFiles.StaticFilesController
Imports System.Web.Script.Serialization

Partial Class bh3index
    Inherits System.Web.UI.Page
    Protected Enum SpecialBannerType
        TopBanner = 1
        MainBanner = 2
        StandBannerA = 3
        StandBannerB = 4
        ColumnStandBanner = 5
        WaterfallStandBanner = 6
        EditorialStandBanner = 7
        BigStandBanner = 8
        TheSolutions = 9
    End Enum
    Public Enum OrnamentPatternEnum As Integer
        Clean = 0
        BlackWhite = 1
        Color = 2
    End Enum
    Public Enum OrnamentPositionEnum As Integer
        Both = 0
        Left = 1
        Right = 2
    End Enum
    Protected Class SpecialBanner
        Private _Type As SpecialBannerType = SpecialBannerType.MainBanner
        Private _Index As Integer = 0
        Private _Ads As AdsGenerator.Ads = Nothing
        Private _StartDate As DateTime = Nothing
        Private _EndDate As DateTime = Nothing
        Public Property Type() As SpecialBannerType
            Get
                Return _Type
            End Get
            Set(ByVal value As SpecialBannerType)
                _Type = value
            End Set
        End Property
        Public Property Index() As Integer
            Get
                Return _Index
            End Get
            Set(ByVal value As Integer)
                _Index = value
            End Set
        End Property
        Public Property Ads() As AdsGenerator.Ads
            Get
                Return _Ads
            End Get
            Set(ByVal value As AdsGenerator.Ads)
                _Ads = value
            End Set
        End Property
        Public Property StartDate() As DateTime
            Get
                Return _StartDate
            End Get
            Set(ByVal value As DateTime)
                _StartDate = value
            End Set
        End Property
        Public Property EndDate() As DateTime
            Get
                Return _EndDate
            End Get
            Set(ByVal value As DateTime)
                _EndDate = value
            End Set
        End Property
        Public Sub New(ByVal Type As SpecialBannerType, ByVal Index As Integer, ByVal Ads As AdsGenerator.Ads, ByVal StartDate As DateTime, ByVal EndDate As DateTime)
            Me.Type = Type
            Me.Index = Index
            Me.Ads = Ads
            Me.StartDate = StartDate
            Me.EndDate = EndDate
        End Sub
    End Class
    Protected CurrentDate As DateTime = Date.Now
    Protected objSpecialBannerList As New List(Of SpecialBanner)
    Protected panelList As New List(Of Panel)
    Protected counterStandA As Integer
    Protected counterStandB As Integer
    Protected counterBigStand As Integer
    Protected retval As String = ""
    Protected litTitlePrefix As String = ""
    Protected litTitle As String = ""
    Protected columnTitleStyleFontFamily As String = ""
    Protected columnTitleStyleTextTransform As String = ""
    Protected columnTitleStyleFontSize As String = ""
    Protected ornamentLeftStyle As String = ""
    Protected ornamentLeftClass As String = ""
    Protected ornamentRightStyle As String = ""
    Protected ornamentRightClass As String = ""
    Protected bannerResult As String = ""
    Protected dataTrackID As String = ""
    Protected dataTrackName As String = ""
    Protected dataTrackCreative As String = ""
    Protected dataTrackVersion As String = ""
    Protected dataTrackLink As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        SetHtmlLinkCanonical("/", "/mobile")
        EnableFullScreen()
        pnlDefaultPage.Visible = False
        pnlBhinnekaBisnisPage.Visible = False
        If Not IsBhinnekaBusiness() Then
            pnlDefaultPage.Visible = True
            EmbedStaticFileCSS("frontpage")
            Dim lnkBhinnekaPostProductReviewsRSSFeeds As New HtmlLink
            lnkBhinnekaPostProductReviewsRSSFeeds.Attributes.Add("rel", "alternate")
            lnkBhinnekaPostProductReviewsRSSFeeds.Attributes.Add("type", "application/rss+xml")
            lnkBhinnekaPostProductReviewsRSSFeeds.Attributes.Add("title", "Bhinneka Post Product Reviews - RSS Feeds")
            lnkBhinnekaPostProductReviewsRSSFeeds.Href = "/aspx/rss.ashx?c=Bhinneka Post Product Reviews - RSS Feeds"
            Page.Header.Controls.Add(lnkBhinnekaPostProductReviewsRSSFeeds)
            lnkBhinnekaPostProductReviewsRSSFeeds = Nothing
            Dim lnkBhinnekaPostNewsRSSFeeds As New HtmlLink
            lnkBhinnekaPostNewsRSSFeeds.Attributes.Add("rel", "alternate")
            lnkBhinnekaPostNewsRSSFeeds.Attributes.Add("type", "application/rss+xml")
            lnkBhinnekaPostNewsRSSFeeds.Attributes.Add("title", "Bhinneka Post News - RSS Feeds")
            lnkBhinnekaPostNewsRSSFeeds.Href = "/aspx/rss.ashx?c=Bhinneka Post News - RSS Feeds"
            Page.Header.Controls.Add(lnkBhinnekaPostNewsRSSFeeds)
            lnkBhinnekaPostNewsRSSFeeds = Nothing

            Dim objLandingPageAttributeList As List(Of LandingPageAttribute) = LandingPageAttribute.ListByPage("New Frontpage - Section Order")
            Dim objPromoCicilanEnabledPartIDList As Dictionary(Of String, List(Of String)) = PromoCicilan.EnabledPartIDList

            panelList.Add(pnlSection1)
            panelList.Add(pnlSection2)
            panelList.Add(pnlSection3)
            panelList.Add(pnlSection4)
            panelList.Add(pnlSection5)
            panelList.Add(pnlSection6)
            panelList.Add(pnlSection7)
            panelList.Add(pnlSection8)
            panelList.Add(pnlSection9)
            panelList.Add(pnlSection10)
            panelList.Add(pnlSection11)
            panelList.Add(pnlSection12)
            panelList.Add(pnlSection13)
            For Each objPageAttribute In objLandingPageAttributeList
                If Not String.IsNullOrEmpty(objPageAttribute.PageAttributeValue) Then
                    If objPageAttribute.PageAttributeName.ToLower = "section order" Then
                        Dim ListItem() As String = Split(objPageAttribute.PageAttributeValue, "~~~")
                        For i As Integer = 0 To ListItem.Count - 1
                            If Not String.IsNullOrEmpty(ListItem(i)) Then
                                If ListItem(i).ToLower.Contains("waterfall") Then
                                    Dim MasonrySection = CType(Page.LoadControl("/controls/frontpage-type-masonry.ascx"), ASP.controls_frontpage_type_masonry_ascx)
                                    MasonrySection.PageName = ListItem(i)
                                    MasonrySection.PromoCicilanEnabledPartIDList = objPromoCicilanEnabledPartIDList
                                    panelList(i).Controls.Add(MasonrySection)
                                ElseIf ListItem(i).ToLower.Contains("rich content") Then
                                    Dim RichContentSection = CType(Page.LoadControl("/controls/frontpage-type-rich-content.ascx"), ASP.controls_frontpage_type_rich_content_ascx)
                                    RichContentSection.PageName = ListItem(i)
                                    panelList(i).Controls.Add(RichContentSection)
                                    panelList(i).CssClass = "curtain text-center"
                                    panelList(i).Style("position") = "relative"
                                    panelList(i).Style("overflow") = "hidden"
                                ElseIf ListItem(i).ToLower.Contains("solution") Then
                                    Dim SolutionSection = CType(Page.LoadControl("/controls/frontpage-the-solutions.ascx"), ASP.controls_frontpage_the_solutions_ascx)
                                    SolutionSection.PageName = ListItem(i)
                                    panelList(i).Controls.Add(SolutionSection)
                                    panelList(i).CssClass = "curtain"
                                    panelList(i).Style("overflow") = "hidden"
                                    panelList(i).Style("position") = "relative"
                                    panelList(i).Style("background-color") = "#fff"
                                ElseIf ListItem(i).ToLower.Contains("big stand") Then
                                    Dim BigStandSection = CType(Page.LoadControl("/controls/frontpage-type-big-stand.ascx"), ASP.controls_frontpage_type_big_stand_ascx)
                                    counterBigStand = i
                                    BigStandSection.PageName = ListItem(i)
                                    panelList(i).Controls.Add(BigStandSection)
                                    panelList(i).Style("width") = "100%"
                                    panelList(i).Style("position") = "relative"
                                    panelList(i).Style("background-color") = "#fff"
                                ElseIf ListItem(i).ToLower.Contains("stand") Then
                                    Dim FluidStandSection = CType(Page.LoadControl("/controls/frontpage-type-fluid-stand.ascx"), ASP.controls_frontpage_type_fluid_stand_ascx)
                                    If ListItem(i).ToLower = "new frontpage - stand a" Then
                                        counterStandA = i
                                    Else
                                        counterStandB = i
                                    End If
                                    FluidStandSection.PageName = ListItem(i)
                                    panelList(i).Controls.Add(FluidStandSection)
                                    panelList(i).Style("background-color") = "#fff"
                                    panelList(i).Style("position") = "relative"
                                    panelList(i).Style("width") = "100%"
                                ElseIf ListItem(i).ToLower.Contains("parade") Then
                                    Dim ParadeSection = CType(Page.LoadControl("/controls/frontpage-type-parade.ascx"), ASP.controls_frontpage_type_parade_ascx)
                                    ParadeSection.PageName = ListItem(i)
                                    ParadeSection.PromoCicilanEnabledPartIDList = objPromoCicilanEnabledPartIDList
                                    panelList(i).Controls.Add(ParadeSection)
                                Else
                                    Dim ColumnSection = CType(Page.LoadControl("/controls/frontpage-type-column.ascx"), ASP.controls_frontpage_type_column_ascx)
                                    ColumnSection.PageName = ListItem(i)
                                    ColumnSection.PromoCicilanEnabledPartIDList = objPromoCicilanEnabledPartIDList
                                    panelList(i).Controls.Add(ColumnSection)
                                End If
                            Else
                                panelList(i).Visible = False
                            End If
                        Next
                    ElseIf objPageAttribute.PageAttributeName.ToLower = "left footer" Then
                        litLeftFooter.Text = objPageAttribute.PageAttributeValue
                    ElseIf objPageAttribute.PageAttributeName.ToLower = "right footer" Then
                        litRightFooter.Text = objPageAttribute.PageAttributeValue
                    End If
                End If
            Next

            Dim frontpageMerchantList As New List(Of String())
            frontpageMerchantList.Add({"PT ERAFONE DOTCOM", "Original dengan Garansi Resmi.", IIf(IsInternal, "/images/mesh/default-merchant-logo.jpg", "/Data/Mesh-Merchant-Logo/PT-ERAFONE-DOTCOM-Logo-20160222164149.jpg?d=201605241521"), "/marketplace/pt-erafone-dotcom"})
            frontpageMerchantList.Add({"Sumber Karya", "Jual kebutuhan TV dengan harga bersaing.", IIf(IsInternal, "/images/mesh/default-merchant-logo.jpg", "/images/mesh/default-merchant-logo.jpg"), "/marketplace/sumber-karya"})
            frontpageMerchantList.Add({"tokocamzone", "Distributor Kamera Terlengkap di Jakarta.", IIf(IsInternal, "/images/mesh/default-merchant-logo.jpg", "/Data/Mesh-Merchant-Logo/tokocamzone-Logo-20150619151000.png?d=201605241521"), "/marketplace/tokocamzone"})
            frontpageMerchantList.Add({"CellularMania", "Best Seller di Bhinneka.com.", IIf(IsInternal, "/images/mesh/default-merchant-logo.jpg", "/Data/Mesh-Merchant-Logo/CellularMania-Logo-20151102140853.jpg?d=201605241521"), "/marketplace/cellularmania"})
            frontpageMerchantList.Add({"Gunung Agung", "Melengkapi keperluan membaca Anda.", IIf(IsInternal, "/images/mesh/default-merchant-logo.jpg", "/Data/Mesh-Merchant-Logo/Gunung-Agung-Logo-20160411141909.jpg?d=201605241521"), "/marketplace/gunungagung"})
            frontpageMerchantList.Add({"NankaiTools", "Distributor Perlengkapan Kesehatan Terlengkap.", IIf(IsInternal, "/images/mesh/default-merchant-logo.jpg", "/Data/Mesh-Merchant-Logo/NankaiTools-Logo-20151013152811.jpg?d=201605241521"), "/marketplace/nankaitools"})
            frontpageMerchantList.Add({"F.H.C", "Distributor Component Terbesar.", IIf(IsInternal, "/images/mesh/default-merchant-logo.jpg", "/Data/Mesh-Merchant-Logo/F.H.C-Logo-20141120121428.png?d=201605241521"), "/marketplace/f-h-c"})

            rptFrontpageMerchant.DataSource = frontpageMerchantList
            rptFrontpageMerchant.DataBind()

            CType(Master.FindControl("MasterPageHeaderControls").FindControl("GoogleTagManagerDataLayer"), ASP.GoogleTagManagerDataLayer).PageType = ASP.GoogleTagManagerDataLayer.PageType_Home

            Dim objMainBannerWeekendSaatnyaBelanjaUntung As New AdsGenerator.Image
            objMainBannerWeekendSaatnyaBelanjaUntung.NavigateURL = "/aspx/products/weekend-saatnya-belanja-untung.aspx"
            objMainBannerWeekendSaatnyaBelanjaUntung.ImageURL = "/images/promo/frontpage-main-banner-weekend-saatnya-belanja-untung.jpg?d=201603071012"
            objMainBannerWeekendSaatnyaBelanjaUntung.AlternateText = "Weekend Saatnya Belanja Untung"
            If Not IsInternal() Then
                objMainBannerWeekendSaatnyaBelanjaUntung.NeedClickTracking = True
            End If
            Dim WeekendSaatnyaBelanjaUntungStartHour As Integer = 9
            Dim WeekendSaatnyaBelanjaUntungEndHour As Integer = 16
            Dim NextWeekend As DateTime = CurrentDate
            If NextWeekend.DayOfWeek = DayOfWeek.Saturday AndAlso NextWeekend.Hour >= WeekendSaatnyaBelanjaUntungEndHour Then
                NextWeekend = NextWeekend.AddDays(1)
            Else
                While NextWeekend.DayOfWeek <> DayOfWeek.Saturday
                    NextWeekend = NextWeekend.AddDays(1)
                End While
            End If
            objSpecialBannerList.Add(New SpecialBanner(SpecialBannerType.MainBanner, 2, objMainBannerWeekendSaatnyaBelanjaUntung, New Date(NextWeekend.Year, NextWeekend.Month, NextWeekend.Day, WeekendSaatnyaBelanjaUntungStartHour, 0, 0), New Date(NextWeekend.Year, NextWeekend.Month, NextWeekend.Day, WeekendSaatnyaBelanjaUntungEndHour, 0, 0)))
            objMainBannerWeekendSaatnyaBelanjaUntung = Nothing
            GenerateProductRecommendation()
        Else
            pnlBhinnekaBisnisPage.Visible = True
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "Open Sans Font", "<link href='//fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>")
            If Not Page.ClientScript.IsClientScriptIncludeRegistered("Mootools") Then
                Page.ClientScript.RegisterClientScriptInclude("Mootools", "/js/mootools-core-1.5.0-full-compat-yc.js")
            End If
        End If
    End Sub

    Protected Sub Page_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        For Each objSpecialBanner As SpecialBanner In objSpecialBannerList
            If (objSpecialBanner.StartDate = Nothing OrElse objSpecialBanner.StartDate <= CurrentDate) AndAlso (objSpecialBanner.EndDate = Nothing OrElse objSpecialBanner.EndDate > CurrentDate) Then
                Dim Reference As String = ""
                Select Case objSpecialBanner.Type
                    Case SpecialBannerType.TopBanner
                        Reference = "fp_top_"
                    Case SpecialBannerType.MainBanner
                        Reference = "fp_mai_"
                    Case SpecialBannerType.StandBannerA
                        Reference = "fp_std_a_"
                    Case SpecialBannerType.StandBannerB
                        Reference = "fp_std_b_"
                    Case SpecialBannerType.BigStandBanner
                        Reference = "fp_big_std_"
                    Case SpecialBannerType.ColumnStandBanner
                        Reference = "fp_col_std_"
                    Case SpecialBannerType.WaterfallStandBanner
                        Reference = "fp_wat_std_"
                    Case SpecialBannerType.EditorialStandBanner
                        Reference = "fp_edi_std_"
                    Case SpecialBannerType.TheSolutions
                        Reference = "fp_sol_"
                End Select
                Reference &= CStr(objSpecialBanner.Index)
                If TypeOf objSpecialBanner.Ads Is AdsGenerator.Image Then
                    CType(objSpecialBanner.Ads, AdsGenerator.Image).Reference = Reference
                ElseIf TypeOf objSpecialBanner.Ads Is AdsGenerator.FlashObject Then
                    CType(objSpecialBanner.Ads, AdsGenerator.FlashObject).Reference = Reference
                End If
                Dim HTMLText As String = objSpecialBanner.Ads.ConvertToHTML
                Select Case objSpecialBanner.Type
                    Case SpecialBannerType.TopBanner
                        If Not TopBanner Is Nothing Then
                            CType(CType(TopBanner.FindControl("rptTopBanner"), Repeater).Items.Item(objSpecialBanner.Index - 1).FindControl("litTopBannerItem"), Literal).Text = HTMLText
                        End If
                    Case SpecialBannerType.MainBanner
                        If Not MainBanner Is Nothing Then
                            CType(CType(MainBanner.FindControl("rptMainBanner"), Repeater).Items.Item(objSpecialBanner.Index - 1).FindControl("litMainBannerItem"), Literal).Text = HTMLText
                        End If
                    Case SpecialBannerType.StandBannerA
                        If Not panelList(counterStandA) Is Nothing Then
                            CType(CType(panelList(counterStandA).Controls(0).FindControl("rptBanner"), Repeater).Items.Item(objSpecialBanner.Index - 1).FindControl("litBanner"), Literal).Text = HTMLText
                        End If
                    Case SpecialBannerType.StandBannerB
                        If Not panelList(counterStandB) Is Nothing Then
                            CType(CType(panelList(counterStandB).Controls(0).FindControl("rptBannerFullScreenFixedLayout"), Repeater).Items.Item(objSpecialBanner.Index - 1).FindControl("litBannerFullScreen"), Literal).Text = HTMLText
                        End If
                    Case SpecialBannerType.BigStandBanner
                        If Not panelList(counterBigStand) Is Nothing Then
                            CType(panelList(counterBigStand).Controls(0).FindControl("litBigBanner"), Literal).Text = HTMLText
                        End If
                End Select
            End If
        Next
    End Sub
    Protected Sub GenerateProductRecommendation()
        Dim PageID As String = "PAG160600073"
        Dim MaxColumn As Integer = 15
        Dim Column As String = "A"
        Dim CategoryArray() As String = Nothing
        Dim LimitArr() As String = Nothing
        Dim objPageAttributeList As List(Of LandingPageAttribute) = LandingPageAttribute.ListByPage(PageID, PageFilter.SearchFieldEnum.LandingPageID)
        If objPageAttributeList.Count > 0 Then
            For Each PageAttribute As LandingPageAttribute In objPageAttributeList
                If Not String.IsNullOrEmpty(PageAttribute.PageAttributeValue) Then
                    Select Case PageAttribute.PageAttributeName.ToLower
                        Case "title prefix"
                            litTitlePrefix = PageAttribute.PageAttributeValue
                        Case "title"
                            litTitle = PageAttribute.PageAttributeValue
                        Case "max column"
                            MaxColumn = PageAttribute.PageAttributeValue
                        Case "font-family"
                            columnTitleStyleFontFamily = PageAttribute.PageAttributeValue
                            columnTitleStyleTextTransform = "none"
                        Case "font-size"
                            columnTitleStyleFontSize = PageAttribute.PageAttributeValue
                        Case "ornament"
                            Dim ornament() As String = PageAttribute.PageAttributeValue.Split(New String() {"~~~"}, StringSplitOptions.RemoveEmptyEntries)
                            Dim ornamentAttribute() As String = ornament(0).Split(New String() {"|||"}, StringSplitOptions.RemoveEmptyEntries)
                            Select Case ornamentAttribute(0)
                                Case OrnamentPatternEnum.Clean
                                    Select Case ornamentAttribute(1)
                                        Case OrnamentPositionEnum.Both
                                            ornamentLeftClass = "frontpage-title-ornament-left-clean margin-right40"
                                            ornamentRightClass = "frontpage-title-ornament-right-clean margin-left40"
                                        Case OrnamentPositionEnum.Left
                                            ornamentLeftClass = "frontpage-title-ornament-left-clean margin-right40"
                                            ornamentRightStyle = "245px" 'margin-left
                                        Case OrnamentPositionEnum.Right
                                            ornamentLeftStyle = "263px" 'margin-right
                                            ornamentRightClass = "frontpage-title-ornament-right-clean margin-left40"
                                    End Select
                                Case OrnamentPatternEnum.BlackWhite
                                    Select Case ornamentAttribute(1)
                                        Case OrnamentPositionEnum.Both
                                            ornamentLeftClass = "frontpage-title-ornament-left-black-white margin-right40"
                                            ornamentRightClass = "frontpage-title-ornament-right-black-white margin-left40"
                                        Case OrnamentPositionEnum.Left
                                            ornamentLeftClass = "frontpage-title-ornament-left-black-white margin-right40"
                                            ornamentRightStyle = "194px" 'margin-left
                                        Case OrnamentPositionEnum.Right
                                            ornamentLeftStyle = "202px" 'margin-right
                                            ornamentRightClass = "frontpage-title-ornament-right-black-white margin-left40"
                                    End Select
                                Case OrnamentPatternEnum.Color
                                    Select Case ornamentAttribute(1)
                                        Case OrnamentPositionEnum.Both
                                            ornamentLeftClass = "frontpage-title-ornament-left-color margin-right40"
                                            ornamentRightClass = "frontpage-title-ornament-right-color margin-left40"
                                        Case OrnamentPositionEnum.Left
                                            ornamentLeftClass = "frontpage-title-ornament-left-color margin-right40"
                                            ornamentRightStyle = "178px" 'margin-left
                                        Case OrnamentPositionEnum.Right
                                            ornamentLeftStyle = "206px" 'margin-right
                                            ornamentRightClass = "frontpage-title-ornament-right-color margin-left40"
                                    End Select
                            End Select
                        Case "banner"
                            Dim banner() As String = PageAttribute.PageAttributeValue.Split(New String() {"~~~"}, StringSplitOptions.RemoveEmptyEntries)
                            Dim bannerAttribute() As String = banner(0).Split(New String() {"|||"}, StringSplitOptions.RemoveEmptyEntries)
                            Dim objAdsGeneratorImage As New AdsGenerator.Image
                            objAdsGeneratorImage.NavigateURL = bannerAttribute(0)
                            objAdsGeneratorImage.ImageURL = bannerAttribute(2)
                            objAdsGeneratorImage.AlternateText = bannerAttribute(1)
                            objAdsGeneratorImage.CssClass = "frontpageProductRecommendationContent"
                            If Not IsInternal() Then
                                objAdsGeneratorImage.NeedClickTracking = True
                                objAdsGeneratorImage.CssClass = "AdLinks frontpageProductRecommendationContent"
                            End If
                            dataTrackID = Bhinneka.Utils.URLUtils.Encode("Frontpage Product Recommendation " & Column.Replace(" - ", " ")).ToUpper
                            dataTrackCreative = objAdsGeneratorImage.ImageURL
                            dataTrackVersion = "Full-Banner"
                            dataTrackLink = objAdsGeneratorImage.NavigateURL
                            bannerResult = objAdsGeneratorImage.ConvertToHTML.Replace("""", "\""")
                        Case "category"
                            CategoryArray = PageAttribute.PageAttributeValue.Split(New String() {"~~~"}, StringSplitOptions.RemoveEmptyEntries)
                        Case "limit"
                            LimitArr = PageAttribute.PageAttributeValue.Split(New String() {"~~~"}, StringSplitOptions.RemoveEmptyEntries)
                    End Select
                End If
            Next
            If Not LimitArr Is Nothing AndAlso Not CategoryArray Is Nothing Then
                Dim LimitArray As Integer() = Array.ConvertAll(LimitArr, Function(str) Int32.Parse(str))
                Dim CategoryTree As String = ""
                Dim objEmarsysArray(CategoryArray.Length - 1) As Object
                For count As Integer = 0 To CategoryArray.Length - 1
                    CategoryTree = (BuildCategoriesTree(CategoryArray(count)))
                    objEmarsysArray(count) = New With {Key .category = CategoryTree,
                                                            .limit = LimitArray(count),
                                                            .column = Column.ToUpper
                                                       }
                Next
                Dim Serializer As New JavaScriptSerializer
                retval = Serializer.Serialize(objEmarsysArray).Replace("""", "\""")
            End If
        End If
    End Sub
    Protected Function BuildCategoriesTree(ByVal CatID As String) As String
        Dim retval As New StringBuilder
        Dim CategoryName As String = ""
        CategoryName = ProductInfo.GetCategoryNameFromCategoryID(CatID)
        If CategoryName.Length > 0 Then
            Dim objList As List(Of ProductCategoryInfo) = ProductInfo.GetCategoriesTree(CategoryName)
            If objList.Count > 0 Then
                For counter As Integer = 0 To objList.Count - 1
                    If counter <> objList.Count - 1 Then
                        retval.Append(objList(counter).Name & " > ")
                    Else
                        retval.Append(objList(counter).Name)
                    End If
                Next
            Else
                retval.Append(CategoryName)
            End If
        End If
        Return retval.ToString
    End Function
End Class