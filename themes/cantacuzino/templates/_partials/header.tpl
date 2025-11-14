{* Header personalizat - păstrează hook-urile pentru compatibilitate cu modulele *}
<header id="header" class="cantacuzino-header">
  {hook h='displayBanner'}
  <div class="header-nav">
    {hook h='displayNav1'}
    {hook h='displayNav2'}
  </div>

  {hook h='displayTop'}

  {* Aici adaugă markup-ul tău de navigare/logo/căutare/coș conform designului,
     dar menține hook-urile de mai sus pentru a nu rupe funcționalitățile *}
</header>