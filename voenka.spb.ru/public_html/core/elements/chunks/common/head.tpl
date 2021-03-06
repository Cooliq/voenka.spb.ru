<head>
    <meta charset="UTF-8" />
    {if $_modx->resource.longtitle}
        {var $title = $_modx->resource.longtitle}
        {else}
        {var $title = $_modx->resource.pagetitle}    
    {/if}
    <title>{$title}</title>
    <base href="{$_modx->config.site_url}" />
    <link rel="alternate" hreflang="ru" href="{$_modx->config.site_url}" />
    {if $_modx->resource.description?}
        <meta name="description" content="{$_modx->resource.description}" />
    {/if}
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    {$_modx->runSnippet('!MinifyX',[
        'minifyCss' => 1,
	'minifyJs' => 1,
	'registerJs' => 'default',
	'registerCss' => 'default',
        'jsSources' => '
            assets/templates/js/bx/jquery.bxslider.min.js,
            assets/templates/js/jquery.easy-autocomplete.min.js,
            assets/templates/js/jquery.bxslider/jquery.bxslider.min.js,
            assets/templates/js/jquery.sticky.js,
            assets/templates/js/remodal.min.js,
            assets/templates/js/scripts.js
        ',
	'cssSources' => 'assets/templates/fa/css/font-awesome.min.css,
        assets/templates/oldcss/normalize.css,
        assets/templates/oldcss/stylesheet.css,
        assets/templates/oldcss/drstylesheet.css,
        assets/templates/oldcss/responsive.css,
        assets/templates/oldcss/remodal.css,
        assets/templates/oldcss/remodal-default-theme.css,
        assets/templates/oldcss/easy-autocomplete.min.css,
        assets/templates/js/jquery.bxslider/jquery.bxslider.css'
    ])}
    [[+MinifyX.css]]
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    {include 'file:chunks/common/fav.tpl'}
    <!-- Latest compiled and minified CSS -->
    <link href="//fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Pontano+Sans:400" rel="stylesheet" type="text/css">
</head>