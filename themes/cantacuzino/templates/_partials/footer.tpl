{* Footer personalizat - păstrează hook-urile pentru module *}
<footer id="footer" class="cantacuzino-footer">
  {hook h='displayFooterBefore'}

  <div class="footer-container">
    {hook h='displayFooter'}
  </div>

  {hook h='displayFooterAfter'}
  {hook h='displayBeforeBodyClosingTag'}
</footer>