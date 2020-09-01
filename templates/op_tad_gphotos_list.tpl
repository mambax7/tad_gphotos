<{$path}>


<{foreach from=$all_cate item=cate}>
    <div id="csn_<{$cate.csn}>" class="polaroid-cate" style="width: <{$config.polaroid_width}>px; height: <{$config.polaroid_height}>px; margin: <{$config.polaroid_margin_y}>px <{$config.polaroid_margin_x}>px;" data-toggle="tooltip">
        <a href="index.php?csn=<{$cate.csn}>">
            <{if $cate.albums_num==0}>
                    <img src="https://fakeimg.pl/<{$config.polaroid_width}>x<{$img_height}>/?retina=1&text=<{$smarty.const._MD_TADGPHOTOS_NO_ALBUM_YET}>&font=noto" style="width: <{$config.polaroid_width}>px; height: <{$img_height}>px;" class="thumb-cate-img" alt="<{$smarty.const._MD_TADGPHOTOS_NO_ALBUM_YET}>">
            <{elseif $cate.albums_num==1}>
                <{if $cate.albums.1.image_url}>
                    <img src="<{$cate.albums.1.image_url}>" class="thumb-cate-img" style="margin:4px; width: <{$config.polaroid_width-8}>px; height: <{$img_height-8}>px; " alt="<{$cate.title}>">
                <{/if}>
            <{elseif $cate.albums_num==2}>
                <{if $cate.albums.1.image_url}>
                    <img src="<{$cate.albums.1.image_url}>" class="thumb-cate-img" style="margin:4px 4px 3px 4px; width: <{$config.polaroid_width-8}>px; height: <{$img_height/2-6}>px; " alt="<{$cate.title}>">
                <{/if}>
                <{if $cate.albums.2.image_url}>
                    <img src="<{$cate.albums.2.image_url}>" class="thumb-cate-img" style="margin:0px 4px 3px 4px; width: <{$config.polaroid_width-8}>px; height: <{$img_height/2-6}>px;" alt="<{$cate.title}>"><br>
                <{/if}>
            <{elseif $cate.albums_num==3}>
                <{if $cate.albums.1.image_url}>
                    <img src="<{$cate.albums.1.image_url}>" class="thumb-cate-img" style="margin:4px 0px 3px 4px; width: <{$config.polaroid_width/2-6}>px; height: <{$img_height/2-6}>px; " alt="<{$cate.title}>">
                <{/if}>
                <{if $cate.albums.2.image_url}>
                    <img src="<{$cate.albums.2.image_url}>" class="thumb-cate-img" style="margin:4px 3px 3px 0px; width: <{$config.polaroid_width/2-6}>px; height: <{$img_height/2-6}>px;" alt="<{$cate.title}>"><br>
                <{/if}>
                <{if $cate.albums.3.image_url}>
                    <img src="<{$cate.albums.3.image_url}>" class="thumb-cate-img" style="margin:0px 4px 3px 4px; width: <{$config.polaroid_width-8}>px; height: <{$img_height/2-6}>px;" alt="<{$cate.title}>">
                <{/if}>
            <{elseif $cate.albums_num>=4}>
                <{if $cate.albums.1.image_url}>
                    <img src="<{$cate.albums.1.image_url}>" class="thumb-cate-img" style="margin:4px 0px 3px 4px; width: <{$config.polaroid_width/2-6}>px; height: <{$img_height/2-6}>px; " alt="<{$cate.title}>">
                <{/if}>
                <{if $cate.albums.2.image_url}>
                    <img src="<{$cate.albums.2.image_url}>" class="thumb-cate-img" style="margin:4px 3px 3px 0px; width: <{$config.polaroid_width/2-6}>px; height: <{$img_height/2-6}>px;" alt="<{$cate.title}>"><br>
                <{/if}>
                <{if $cate.albums.3.image_url}>
                    <img src="<{$cate.albums.3.image_url}>" class="thumb-cate-img" style="margin:0px 0px 3px 4px; width: <{$config.polaroid_width/2-6}>px; height: <{$img_height/2-6}>px; " alt="<{$cate.title}>">
                <{/if}>
                <{if $cate.albums.4.image_url}>
                    <img src="<{$cate.albums.4.image_url}>" class="thumb-cate-img" style="margin:0px 3px 3px 0px; width: <{$config.polaroid_width/2-6}>px; height: <{$img_height/2-6}>px; " alt="<{$cate.title}>">
                <{/if}>
            <{/if}>
        </a>
        <div class="polaroid-container">
            <p>
                <a href="index.php?csn=<{$cate.csn}>"><{$cate.title}></a>
            </p>
        </div>
    </div>
<{/foreach}>



<{if $all_tad_gphotos }>
    <{if $smarty.session.tad_gphotos_adm or $create_album}>
        <{$delete_tad_gphotos_func}>
    <{/if}>

    <div id="tad_gphotos_save_msg"></div>
    <div id="sort">
        <{foreach from=$all_tad_gphotos item=data}>
            <div id="album_sn_<{$data.album_sn}>" class="polaroid" style="width: <{$config.polaroid_width}>px; height: <{$config.polaroid_height}>px; margin: <{$config.polaroid_margin_y}>px <{$config.polaroid_margin_x}>px;">
                <a href="index.php?album_sn=<{$data.album_sn}>">
                    <img src="<{$data.cover.image_url}>" id="tr_<{$data.album_sn}>" class="thumb-img" style="height: <{$img_height}>px;" alt="<{$data.album_name}>">
                </a>
                <div class="polaroid-container">
                    <p>
                        <{$data.album_name}>
                    </p>
                </div>
            </div>
        <{/foreach}>
    </div>

    <{if $smarty.session.tad_gphotos_adm or $create_album}>
        <div class="text-right">
            <a href="<{$xoops_url}>/modules/tad_gphotos/index.php?op=tad_gphotos_form" class="btn btn-info"><{$smarty.const._MD_TADGPHOTOS_ADD}></a>
        </div>
    <{/if}>

    <{$bar}>
<{else}>
    <div class="text-right">
        <a href="<{$xoops_url}>/modules/tad_gphotos/index.php?op=tad_gphotos_form" class="btn btn-info"><{$smarty.const._MD_TADGPHOTOS_ADD}></a>
    </div>
<{/if}>

<{if $create_album}>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#sort').sortable({ opacity: 0.6, cursor: 'move', update: function() {
                var order = $(this).sortable('serialize')+'&op=save_sort';
                $.post('ajax.php', order, function(theResponse){
                    console.log(theResponse);
                    $('#tad_gphotos_save_msg').html(theResponse);
                });
            }
            });
        });
    </script>
<{/if}>