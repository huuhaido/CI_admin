<div class="inner">
    <div class="title_main">
        <div class="line-left line-branch1"></div>
        <span class="text_label_left">Liên Hệ & Bản Đồ</span>
        <span class="text_label_right">Yamato</span>
        <div class="line-right line-branch2"></div>
    </div>
    <div class="clearfix"></div>
    <?php if (!empty($result)){ ?>
        <div class="map">
            <img src="<?= PATH_URL . 'assets/uploads/branch/'.$result[0]->image ?>">
        </div>
        <div class="menu-branch">
            <div id='cssmenu'>
                <ul>
                    <?php foreach($result as $k=>$address){?>
                        <li class='has-sub <?php if($k==0){ print 'active';} ?>'><a href="#" onclick="return replaceMap('<?=$address->image?>')"><span><?=$address->name?></span></a>
                            <?php if ($address->image == $result[0]->image){?>
                            <ul class="first">
                            <?php }else{?>
                            <ul>
                            <?php }?>
                                <li>
                                    <img src="<?= PATH_URL . 'assets/images/toanha.jpg'?>">
                                    <div class="contact-detail">
                                        <p><span class="contact-branch">Địa chỉ:</span><?=' '.$address->address?></p>
                                        <p><span class="contact-branch">Số điện thoại:</span><?=' '.$address->phone?></p>
                                        <p><span class="contact-branch">Email:</span><?=' '.$address->email?></p>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    <?php }?>
    <div class="clearfix"></div>
</div>
<script type="text/javascript">
    function replaceMap(map_image){
        var urlMap = '<?= PATH_URL ?>' + 'assets/uploads/branch/' + map_image;
        $(".map img").attr("src",urlMap);
    }
</script>