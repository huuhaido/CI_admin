<div class="inner">
    <div class="title_main">
        <div class="line-left line-procedure1"></div>
        <span class="text_label_left">Thủ Tục Thực Hiện</span>
        <span class="text_label_right">Yamato</span>
        <div class="line-right line-procedure2"></div>
    </div>
    <div class="clearfix"></div>
    <?php if (!empty($result)){?>
        <?=parserEditorHTML($result[0]->content) ?>
    <?php } ?>
</div>