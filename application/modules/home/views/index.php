<script type="text/javascript">
    $(document).ready(function () {
        sudoSlider = $('#slider').sudoSlider({
            numeric: false,
            speed: 500,
            continuous: false,
            nextHtml: '<span class="nextSlider"></span>',
            prevHtml: '<span class="prevSlider"></span>'
        });
    });
</script>

<div id="blanket" style="display:none;"></div>
<div id="popUpDiv" style="display:none;">
<div class="btn_close"><a href="javascript:;" onclick="popup('popUpDiv')"><img src="<?= PATH_URL . 'assets/images/' ?>close.png"></a></div>
    <div class="popup-content">
        <p>Bạn đang cần 1 khoản tiền để thực hiện những kế hoạch trong tương lai gần mà ngay lập tức bạn chưa có đủ số tiền để thực hiện nó như: xây nhà, mua xe, vay vốn kinh doanh, cưới hỏi, mua laptop, .... hãy tìm đến với dịch vụ của <span style="font-weight: bold; color: #f79521;">DONGSHOPSUN</span></p>
        <span style="color: #f79521; font-size: 34.5px; font-family: 'OpenSansSemibold_0';">Tin cậy, an tâm và hài lòng</span>
        <p style="margin-top:-2px;">là những gì bạn có thể cảm nhận được.</p>
        <span style="font-size: 22px; font-family: 'OpenSansSemibold_0';">Bạn hãy liên hệ đến chúng tôi để được tư vấn ngay</span>
        <p class="popup_contact"><span class="span_contact">Hotline :</span> 08-3838-8383</p>
        <p class="popup_contact"><span class="span_contact">Email : </span>
        <a href="mailto:hotro@dongshopsun.vn">hotro@dongshopsun.vn</a></p>  
        <div class="img-skype">
            <div class="imgskype">
                <!-- <a href="skype:dongshopsun?chat"> -->
                <a href="skype:dongshopsun?chat">
                   <img style="border: medium none; width: 155px; height: 25px;" src="http://mystatus.skype.com/smallclassic/dongshopsun"></a><br>
                <span>Tư Vấn Viên</span>
            </div>

            <div class="imgyahoo">
                <!--<a href="ymsgr:sendim?hotro.dongshopsun"><img style="border: medium none;" src="<?= PATH_URL . 'assets/images/' ?>yahoo.png" alt="[Image]"> </a><br>-->
                <a href="ymsgr:sendim?hotro.dongshopsun"><img style="border: medium none;" src="http://opi.yahoo.com/online?u=hotro.dongshopsun&m=g&t=2" alt="[Image]"> </a><br>
                <span>Tư Vấn Viên</span>
            </div>
            <div class="img-bg"><img src="<?= PATH_URL . 'assets/images/' ?>handshare.png"></div>

        </div>
    </div>
</div>

<div class="inner">
    <?=parserEditorHTML($introduce[0]->content); ?>
    <div class="clearfix"></div>
    <div class="article_about">
        <p>Bài viết về Đồng Shop Sun <span></p>
    </div>
    <div class="article_content">
        <div class="background-images">
            <img src="<?= PATH_URL . 'assets/images/' ?>arrow_2maudam.jpg">
        </div>
        <div id="slider">
            <ul>
                <?php if (!empty($result)){
                    $number_news  = count($result);
                    for($i=0; $i< $number_news; $i++){
                        if ($i%5 == 0){ ?>
                            <li>
                        <?php
                            }
                        ?>
                            <div class="title_article">
                                <p><?= $result[$i]->title?></p>
                            </div>
                            <p><?=parserEditorHTML($result[$i]->content);?></p>

                            <div class="article-line">
                                <a href="javascript:;" onclick="popup('popUpDiv')"><img class="contact-now" src="<?= PATH_URL . 'assets/images/' ?>button_lienhe.png"></a>
                            </div>

                        <?php if ($i%5 == 4 || $i ==$number_news - 1 ){?>
                            </li>
                        <?php }?>
                    <?php }?>
                <?php }else{?>
                    <li></li>
                <?php }?>
            </ul>
        </div>
    </div>

    <div class="article_fanpage">
        <p>Fanpage về Đồng Shop Sun <span></p>
    </div>
    <div class="facebook_content">
        <div class="facebook_about">
            <p>Tìm chúng tôi trên facebook<span></p>
        </div>
        <div class="fb-like-box" data-href="https://www.facebook.com/dongshopsun.vn" data-width="960" data-height="517" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="true" data-show-border="false"></div>
    </div>
</div>

<script type='text/javascript'>
        /*$(document).ready(function (){
            $(".article-line").click(function (){
                //$(this).animate(function(){
                    $('html, body').animate({
                        scrollTop: $("#popUpDiv").offset().top
                    }, 500);
                //});
            });
        });*/

</script>
