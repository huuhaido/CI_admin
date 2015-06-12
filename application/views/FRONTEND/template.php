<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:title" content=""/>
    <meta property="og:description" content="<?= $meta_description ?>"/>
    <meta property="og:image" content="<?= $meta_image ?>"/>
    <meta name="keywords" content="<?= $meta_keywords ?>"/>
    <meta name="description" content="<?= $meta_description ?>"/>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<?= PATH_URL . 'assets/css/' ?>bootstrap.min.css" type="text/css">
    <!-- Custom Css -->
    <link rel="stylesheet" href="<?= PATH_URL . 'assets/css/' ?>styles.css" type="text/css">
    <!-- Reponsive Css -->
    <link rel="stylesheet" href="<?= PATH_URL . 'assets/css/' ?>responsive.css" type="text/css">

    <link rel="stylesheet" href="<?= PATH_URL . 'assets/css/' ?>backTop.css" type="text/css">

    <link rel="shortcut icon" href="<?= PATH_URL . 'assets/images/' ?>favicon.png" type="image/png">    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <script type="text/javascript" src="<?= PATH_URL . 'assets/js/' ?>jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="<?= PATH_URL . 'assets/js/' ?>jquery.jcarousel.min.js"></script>
    <script type="text/javascript" src="<?= PATH_URL . 'assets/js/' ?>jcarousel.basic.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="<?= PATH_URL . 'assets/js/' ?>bootstrap.min.js"></script>
    <script type="text/javascript" src="<?= PATH_URL . 'assets/js/' ?>jquery.backTop.min.js"></script>
    <script type="text/javascript" src="<?= PATH_URL . 'assets/js/' ?>jquery.sudoSlider.js"></script>
    <script type="text/javascript" src="<?= PATH_URL . 'assets/js/' ?>jquery.hoveraccordion.min.js"></script>
    <script type="text/javascript" src="<?= PATH_URL . 'assets/js/' ?>script.js"></script>
    <script type="text/javascript" src="<?= PATH_URL . 'assets/js/' ?>csspopup.js"></script>
    <title><?=$title?></title>
</head>
<body>
<!--phân header-->
    <div class="header">
        <div class="header-container">
            <div class="inner welcome-label">
                <p>Welcome to Yamato</p>
                <p class="top-mail"><a href="mailto:hotro@dongshopsun.vn" target="_top" style="color: #FFFFFF !important; text-decoration: none;">
                    <img src="<?= PATH_URL . 'assets/images/' ?>mail_top.png">
                    hotro@dongshopsun.vn
                    <img src="<?= PATH_URL . 'assets/images/' ?>arrow_top.png">
                    </a>
                </p>
            </div>
        </div>

        <div class="header-banner">
            <div class="inner">
                <div class="col-md-3 banner-left custom-logo">
                    <a href="<?= PATH_URL ?>">
                        <img src="<?= PATH_URL . 'assets/images/' ?>logo_header.png">
                    </a>
                </div>

                <div class="col-md-2 menu-right">
                    <a href="<?= PATH_URL ?>" class="foo <?=($this->uri->segment(1)=='')?'menu-active':''?>">
                        <img src="<?= PATH_URL . 'assets/images/' ?>menu/trangchu_normal.png">
                        <img src="<?= PATH_URL . 'assets/images/' ?>menu/trangchu_hover.png">
                    </a>
                </div>
                <div class="col-md-2 menu-right">
                    <a href="<?= PATH_URL ?>faqs" class="foo <?=($this->uri->segment(1)=='faqs')?'menu-active':''?>">
                        <img src="<?= PATH_URL . 'assets/images/' ?>menu/hoidap_normal.png">
                        <img src="<?= PATH_URL . 'assets/images/' ?>menu/hoidap_hover.png">
                    </a>
                </div>
                <div class="col-md-2 menu-right">
                    <a href="<?= PATH_URL ?>procedure" class="foo <?=($this->uri->segment(1)=='procedure')?'menu-active':''?>">
                        <img src="<?= PATH_URL . 'assets/images/' ?>menu/thuctucthuchien_normal.png">
                        <img src="<?= PATH_URL . 'assets/images/' ?>menu/thuctucthuchien_hover.png">
                    </a>
                </div>
                <div class="col-md-2 menu-right">
                    <a href="<?= PATH_URL ?>branch" class="foo <?=($this->uri->segment(1)=='branch')?'menu-active':''?>">
                        <img src="<?= PATH_URL . 'assets/images/' ?>menu/lienhe_normal.png">
                        <img src="<?= PATH_URL . 'assets/images/' ?>menu/lienhe_hover.png">
                    </a>
                </div>
            </div>
        </div>

        <!-- <div class="header-line"></div> -->

        <div class="solo-wap">
            <img src="<?= PATH_URL . 'assets/images/' ?>banner.jpg">
        </div>
    </div>
<!--phân header-->
    <div class="container">
        <?=$content?>
    </div>
<!--phân footer-->
<div class="footer-container">
    <div class="inner">
        <!-- <div class="col-md-2 footer-logo">
            <a href="<?= PATH_URL ?>">
                <img src="<?= PATH_URL . 'assets/images/' ?>logo_footer.png">
            </a>
        </div>

        <div class="col-md-4 contact-footer">
            <p class="name-branch">DONG SHOP SUN COMPANY LIMITED</p>
            <p class="address-branch">185-187 Nguyễn Cư Trinh, Q.1, Tp.HCM</p>
            <div class="mobile-branch custom-branch">
                <img style="margin-bottom: 2px;" src="assets/images/phone.png"> 08-3838-8383 &nbsp&nbsp&nbsp
                <img style="margin-bottom: 2px;" src="assets/images/website.png"> dongshopsun.vn
            </div>
            <div class="email-branch custom-branch">
                <div><img src="assets/images/mail.png"> hotro@dongshopsun.vn</div>
            </div>
        </div> -->
        <?=modules::run('home/getFooter')?>

        <div class="col-md-3 contact-footer">
            <p>Chi nhánh Nguyễn Cư Trinh</p>
            <p class="branch-phone">08-3838-8383</p>
            <p>Chi nhánh Quận 6</p>
            <p class="branch-phone">08-38-777-555</p>
            <p>Chi nhánh Tân Định</p>
            <p class="branch-phone">08-3511-8111</p>

        </div>

        <div class="col-md-2 contact-footer">
            <p>Chi nhánh Tân Bình</p>
            <p class="branch-phone">08-3812-0212</p>
            <p>Chi nhánh Gò Vấp</p>
            <p class="branch-phone">08-3994-1000</p>
        </div>
    </div>
</div>
<div class="footer-bottom">
    <strong>Copyright©2015 dong shop sun. all rights reserved.</strong>
</div>
<!--phân footer-->

<div class="backtotop">
    <a id="totop"><img src="<?= PATH_URL . 'assets/images/' ?>top.png"></a>
</div>

<script type='text/javascript'>

</script>
<div id="fb-root"></div>
<script>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.3";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
    //scroll top

    $(function() {
		$('#totop').hide();
        $(window).scroll(function() {
            if ($(this).scrollTop() != 0) {
                $('#totop').fadeIn();
            } else {
                $('#totop').fadeOut();
            }
        });
        $('#totop').click(function() {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
        });
    });

</script>


<script type="text/javascript">
    var gaq = gaq || [];
    _gaq.push(['_setAccount', 'UA-28869039-4']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>
<!-- Google Code dành cho Thẻ tiếp thị lại -->
<!--------------------------------------------------
Không thể liên kết thẻ tiếp thị lại với thông tin nhận dạng cá nhân hay đặt thẻ tiếp thị lại trên các trang có liên quan đến danh mục nhạy cảm. Xem thêm thông tin và hướng dẫn về cách thiết lập thẻ trên: http://google.com/ads/remarketingsetup
-------------------------------------------------->
<script type="text/javascript">
/ <![CDATA[ /
var google_conversion_id = 949805154;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/ ]]> /
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/949805154/?value=0&amp;guid=ON&amp;script=0"/>
</div>
</noscript>

</body>
</html>