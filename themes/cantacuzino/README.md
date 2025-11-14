# Tema copil PrestaShop: Cantacuzino

Aceasta este o temă copil care moștenește tema `classic` (PrestaShop 1.7+). Scopul este migrarea treptată a paginilor statice în template-urile PrestaShop, păstrând compatibilitatea cu modulele (hook-uri).

## Instalare
1. Copiază folderul `cantacuzino` în `/themes/`.
2. În Back Office: Design → Theme & Logo → Add new theme → Selectează tema `Cantacuzino` → Use this theme.
3. Golește cache-ul: Advanced Parameters → Performance → Clear cache.

## Active (CSS/JS)
- Editează `assets/css/theme.css` și adaugă CSS-ul tău (mută treptat stilurile din proiectul static).
- Editează `assets/js/theme.js` pentru comportamente custom (meniuri, slider, etc.).

## Suprascrieri
- `_partials/header.tpl` și `_partials/footer.tpl` sunt punctele de intrare pentru layout-ul global. Păstrează hook-urile:
  - `displayBanner`, `displayNav1`, `displayNav2`, `displayTop` în header.
  - `displayFooterBefore`, `displayFooter`, `displayFooterAfter`, `displayBeforeBodyClosingTag` în footer.
- `templates/catalog/product.tpl` extinde template-ul părinte. Poți migra secțiuni din designul tău în blocurile corespunzătoare fără a rupe funcționalitățile de bază.

## Recomandări de mapare (din HTML static → PrestaShop)
- Meniu principal: module `ps_mainmenu` (`displayTop`/`displayNavFullWidth`) sau meniu custom în `header.tpl`.
- Căutare: hook `displayTop`/`displayNav2` sau modul `ps_searchbar`.
- Coș: `displayTop` + icon/cart prin `ps_shoppingcart`/`ps_languageselector`/`ps_currencyselector` după nevoie.
- “Top vânzări”: modul `ps_bestsellers` (poți face override în `themes/cantacuzino/modules/ps_bestsellers/...` când e cazul).
- Newsletter: modul `ps_emailsubscription` (poziționat în footer).
- Social icons: modul `ps_socialfollow` în footer.
- Secțiuni statice (ex. “Atenționări”, “Info”): folosește modul “Custom text” sau blocuri CMS; alternativ, integrează direct în `footer.tpl`/pagini CMS.

## Flux de lucru recomandat
1. Activează tema copil și confirmă că totul arată ca tema classic (moștenire OK).
2. Copiază CSS-ul din designul tău în `assets/css/theme.css` și ajustează.
3. Începe cu `header.tpl` și `footer.tpl` (markup + clase proprii), menținând hook-urile.
4. Migrează pagina de produs: extinde `product.tpl`, adaugă secțiuni custom în blocuri fără a elimina funcționalitățile (preț, add-to-cart, combinații, etc.).
5. Migrează listările (categorii, bestsellers) prin override de module sau template-uri din `templates/catalog/_partials/...`.
6. Optimizează pentru performanță (minificare, imagini, cache) și testează pe mobil.
7. Folosește traducerile Back Office pentru a localiza textele hardcodate.

## Notă
Dacă folosești altă versiune PrestaShop (ex. 1.6), structura temei diferă (config.xml în loc de theme.yml, alte hook-uri). Confirmă versiunea și adaptează structura.