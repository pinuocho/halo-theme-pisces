<script type="text/javascript">
  if (Object.prototype.toString.call(window.Promise) !== '[object Function]') {
    window.Promise = null;
  }
</script>

<script type="text/javascript" src="${pisces_base_url!}/source/lib/jquery/index.js?v=2.1.3"></script>
<script type="text/javascript" src="${pisces_base_url!}/source/lib/fastclick/lib/fastclick.min.js?v=1.0.6"></script>
<script type="text/javascript" src="${pisces_base_url!}/source/lib/jquery_lazyload/jquery.lazyload.js?v=1.9.7"></script>
<script type="text/javascript" src="${pisces_base_url!}/source/lib/velocity/velocity.min.js?v=1.2.1"></script>
<script type="text/javascript" src="${pisces_base_url!}/source/lib/velocity/velocity.ui.min.js?v=1.2.1"></script>
<#if settings.fancybox!true>
<script type="text/javascript" src="${pisces_base_url!}/source/lib/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>
</#if>

<#if settings.canvas_nest!false>
<script type="text/javascript" src="${pisces_base_url!}/source/lib/canvas-nest/canvas-nest.min.js"></script>
</#if>

<#if is_post?? || is_page??>
<script type="text/javascript" src="${pisces_base_url!}/source/lib/jquery-toc/jquery.toc.min.js"></script>
<script type="text/javascript" src="${pisces_base_url!}/source/lib/jquery-toc/toc.min.js"></script>
<script>
    $('.post-toc-content').initTOC({
        selector: 'h1, h2, h3, h4, h5, h6',
        scope: '.post-body',
        overwrite: false,
        prefix: 'toc'
    });
</script>
</#if>
