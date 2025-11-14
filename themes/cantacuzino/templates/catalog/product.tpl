{extends file='parent:catalog/product.tpl'}

{* Poți începe prin a injecta secțiuni personalizate în blocuri specifice,
   păstrând în același timp funcționalitatea de bază *}
{block name='page_content'}
  {$smarty.block.parent}
  {* Exemplu: Aici poți adăuga secțiuni custom din designul tău (statistici, bannere, etc.) *}
{/block}