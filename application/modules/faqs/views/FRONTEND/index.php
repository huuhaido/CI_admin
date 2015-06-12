<div class="inner">
    <div class="title_main">
        <div class="line-left line-faqs1"></div>
        <span class="text_label_left">Hỏi Đáp Về</span>
        <span class="text_label_right">Yamato</span>
        <div class="line-right line-faqs2"></div>
    </div>
    <div class="clearfix"></div>
    <?php if (!empty($result)){?>
        <?php foreach($result as $faq){?>
            <div class="enquiry-content">
                <ul>
                    <li>
                        <p class="question"><?= $faq->question?></p>
                    </li>
                    <li>
                        <p><?=parserEditorHTML($faq->answer)?></p>
                    </li>
                </ul>
            </div>
        <?php }?>
    <?php }?>
</div>