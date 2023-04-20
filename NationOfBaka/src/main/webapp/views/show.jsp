<nav class="navbar-japanread navbar">
<div class="navbar-left">
<a href="/" id="logo-jr">
<img class="logo" src="/assets/images/logo_navbar.png" alt="Accueil Bentomanga.com" width="150px">
<img class="logo-mobile" src="/assets/images/logo_mobile.png" alt="Accueil Bentomanga.com">
</a>
<button class="btn-search" data-toggle="search_mangas"><i class="fas fa-search"></i></button>
<a href="https://www.bentomanga.com/manga_list" title="Liste des mangas"><i class="fas fa-book fa-fw"></i></a>
<a href="https://www.bentomanga.com/manga_last" title="Nouvelles sorties"><i class="fas fa-history"></i></a>
</div>
<div class="navbar-center">
<div id="navbar-search" class="div-navbar-search" data-container>
<input title="Recherche une team" type="text" id="input_mangas_search" name="mangas_search" placeholder="Rechercher" class="input-jr search search-nav" data-input="search">
<button class="btn-close-search" data-toggle="search_mangas"><i class="far fa-times"></i></button>
<div class="mangas_search" id="mangas_search" data-content></div>
</div>
</div>
<div class="navbar-right">
<div id="hamburger" class="div-hamburger">
<div class="hamburger">
<span class="center"></span>
</div>
</div>
<div class="navbar-menu-container">
<div class="navbar-menu">
<img class="navbar-menu_img" src="/assets/images/menu-image.jpg" alt="Accueil Bentomanga.com">
<div class="navbar-menu_link">
<a href="https://www.bentomanga.com/manga_list"><i class="fas fa-book fa-fw"></i> Mangas</a>
<a href="https://www.bentomanga.com/manga_last" title="Nouvelles sorties"><i class="fas fa-history"></i> Dernières sorties</a>
<a href="https://www.bentomanga.com/teams"><i class="fas fa-users"></i> Teams</a>
<span class="navbar-menu_separate"></span>
<a href="/sign-up"><i class="fas fa-pencil-alt"></i> S'inscrire </a>
<a href="/login"><i class="fas fa-sign-in-alt"></i> Se connecter </a>
</div>
</div>
<div class="navbar-side" id="navbar-side"></div>
</div>
</div>
</nav>
<div class="reader row flex-column no-gutters layout-horizontal fit-horizontal" role="main" id="content">

<div class="container reader-controls-container p-0">
<div class="reader-controls-wrapper bg-reader-controls row no-gutters flex-nowrap" style="z-index:1">
<div id="reader-controls-collapser" class="d-none d-lg-flex col-auto justify-content-center align-items-center cursor-pointer">
<span class="fas fa-caret-right fa-fw arrow-link" aria-hidden="true" title="Menu déroulant"></span>
</div>
<div class="reader-controls col row no-gutters flex-column flex-nowrap">
<div class="reader-controls-title col-auto text-center p-2">
<div style="font-size:1.25em">
<a href="/manga/versatile-mage">Versatile Mage</a>
<span class="chapter-tag-h badge badge-danger d-none">H</span>
<span class="chapter-tag-doujinshi badge badge-primary d-none" style="background-color:#735ea5">Dj</span>
</div>
<div class="d-none d-lg-block"><span class="chapter-title" data-chapter-id=""></span> <span class="chapter-tag-end badge badge-primary d-none">END</span></div>
</div>
<div class="reader-controls-chapters col-auto row no-gutters align-items-center">
<div class="col p-2">
<select class="form-control col" id="jump-chapter" name="jump-chapter"></select>
</div>
<div class="col-auto py-2 pr-2 d-lg-none">
<select class="form-control" id="jump-page" name="jump-page"></select>
</div>
</div>
<div class="reader-controls-unsupported col-auto row no-gutters p-2 text-danger d-none"></div>
<div class="reader-controls-actions col-auto row no-gutters p-1">
<div class="col row no-gutters" style="min-width:120px;">
<a title="Reader settings" class="btn btn-secondary col m-1" role="button" id="settings-button" data-toggle="modal" data-target="#modal-settings">
<span class="fas fa-cog fa-fw"></span><span class="d-none d-lg-inline"> Paramètres</span>
</a>
<div class="w-100 d-none d-lg-block"></div>
<a title="Masquer header" class="btn btn-primary col m-1 text-white" role="button" id="hide-header-button">
<span class="far fa-window-maximize fa-fw"></span><span class="d-none d-lg-inline"> Afficher / Masquer la navigation</span>
</a>
</div>
</div>
<div class="reader-controls-mode col-auto d-lg-flex d-none flex-column align-items-start py-3" style="flex:0 1 auto; overflow:hidden;">
 <div class="reader-controls-mode-display-fit w-100 cursor-pointer px-2">
<kbd>^f</kbd>
<span class="fas fa-compress fa-fw" aria-hidden="true" title="Display fit"></span>
<span class="show-no-resize">Taille d'origine</span>
<span class="show-fit-both">Ajuster en hauteur/largeur</span>
<span class="show-fit-height">Ajuster en hauteur</span>
<span class="show-fit-width">Ajuster en largeur</span>
</div>
<div class="reader-controls-mode-rendering w-100 cursor-pointer px-2">
<kbd>&nbsp;g</kbd>
<span class="fas fa-book fa-fw" aria-hidden="true" title="Reader mode"></span>
<span class="show-single-page">Mode une page</span>
<span class="show-double-page">Mode double page</span>
<span class="show-long-strip">Mode continu <span class="show-native-long-strip">(native)</span></span>
</div>
</div>
<div class="reader-controls-pages col-auto d-none d-lg-flex row no-gutters align-items-center">
<a class="page-link-left col-auto arrow-link" href="" data-action="page" data-direction="left" data-by="1">
<span class="fas fa-angle-left fa-fw" aria-hidden="true" title="Tournez la page à gauche"></span>
</a>
<div class="col text-center reader-controls-page-text cursor-pointer">
Page <span class="current-page">0</span> / <span class="total-pages">0</span>
</div>
<a class="page-link-right col-auto arrow-link" href="" data-action="page" data-direction="right" data-by="1">
<span class="fas fa-angle-right fa-fw" aria-hidden="true" title="Tournez la page à droite"></span>
</a>
</div>
</div>
</div>
</div>

<div class="reader-main col row no-gutters flex-column flex-nowrap noselect" style="flex:1">
<noscript>
                    <div class="alert alert-danger text-center">
                        JavaScript is required for this reader to work.
                    </div>
                </noscript>
<div class="center_ads ads_space">
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3769245260530937" crossorigin="anonymous" type="bce199e54812c46b8903a0e6-text/javascript"></script>

<ins class="adsbygoogle ad-responsive" style="display:block" data-ad-client="ca-pub-3769245260530937" data-ad-slot="1719994321" data-ad-format="auto" data-full-width-responsive="true"></ins>
<script type="bce199e54812c46b8903a0e6-text/javascript">
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
<div class="reader-images col-auto row no-gutters flex-nowrap m-auto text-center cursor-pointer directional">
</div>
<div class="reader-goto-top d-flex d-lg-none justify-content-center align-items-center fade btn-danger cursor-pointer">
<span class="fas fa-angle-up"></span>
</div>
<div class="reader-load-icon">
<span class="fas fa-circle-notch fa-spin" aria-hidden="true"></span>
</div>
<div class="reader-page-bar col-auto d-none d-lg-flex directional">
<div class="track cursor-pointer row no-gutters">
<div class="trail position-absolute h-100 noevents">
<div class="thumb h-100"></div>
</div>
<div class="notches row no-gutters h-100 w-100 directional"></div>
<div class="notch-display col-auto m-auto px-3 py-1 d-none"></div>
</div>
</div>
</div>


<div class="modal" id="modal-settings" tabindex="-1" role="dialog" aria-labelledby="modal-settings-label">
<div class="modal-dialog modal-lg" role="document">
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title" id="modal-settings-label"><span class="fas fa-cog fa-fw" aria-hidden="true" title=""></span> Paramètres du lecteur</h4>
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
</div>
<div class="modal-body">

<div class="container">
<h5><span class="fas fa-book-open fa-fw" aria-hidden="true" title=""></span> Paramètres d'affichage</h5>
<div class="form-group row">
<label class="col-sm-4 col-form-label">Rendu des pages</label>
<div class="col">
<div class="row">
<button type="button" data-value="1" data-setting="renderingMode" class="btn btn-default btn-secondary col px-2">Une page</button>
<button type="button" data-value="2" data-setting="renderingMode" class="btn btn-default btn-secondary col px-2">Double page</button>
<button type="button" data-value="3" data-setting="renderingMode" class="btn btn-default btn-secondary col px-2">Mode continu</button>
</div>
</div>
</div>
<hr>
<h5><span class="fas fa-columns fa-fw" aria-hidden="true" title=""></span> Paramètres de mise en page</h5>
<div class="form-group row">
<label class="col-sm-4 col-form-label">Header</label>
<div class="col">
<div class="row">
<button type="button" data-value="0" data-setting="hideHeader" class="btn btn-default btn-secondary col px-2">Visible</button>
<button type="button" data-value="1" data-setting="hideHeader" class="btn btn-default btn-secondary col px-2">Caché</button>
</div>
</div>
</div>
<div class="form-group row">
<label class="col-sm-4 col-form-label">Barre latérale</label>
<div class="col">
<div class="row">
<button type="button" data-value="0" data-setting="hideSidebar" class="btn btn-default btn-secondary col px-2">Visible</button>
<button type="button" data-value="1" data-setting="hideSidebar" class="btn btn-default btn-secondary col px-2">Caché</button>
</div>
</div>
 </div>
<div class="form-group row">
<label class="col-sm-4 col-form-label">Barre de navigation</label>
<div class="col d-none d-lg-block">
<div class="row">
<button type="button" data-value="0" data-setting="hidePagebar" class="btn btn-default btn-secondary col px-2">Visible</button>
<button type="button" data-value="1" data-setting="hidePagebar" class="btn btn-default btn-secondary col px-2">Caché</button>
</div>
</div>
<div class="col d-lg-none">
<div class="row">
<button type="button" disabled="" class="btn btn-default btn-secondary col px-2">Caché sur mobile</button>
</div>
</div>
</div>
<div class="form-group row">
<label class="col-sm-4 col-form-label">Titres des chapitres dans la liste déroulante</label>
<div class="col">
<div class="row">
<button type="button" data-value="1" data-setting="showDropdownTitles" class="btn btn-default btn-secondary col px-2">Visible</button>
<button type="button" data-value="0" data-setting="showDropdownTitles" class="btn btn-default btn-secondary col px-2">Caché</button>
</div>
</div>
</div>
<hr>
<h5><span class="fas fa-hand-pointer fa-fw" aria-hidden="true" title=""></span>Paramètres de saisie</h5>
<div class="row form-group">
<label class="col-sm-4 col-form-label">Tourner la page</label>
<div class="col">
<div class="row">
<button type="button" data-value="1" data-setting="pageTapTurn" class="btn btn-default btn-secondary col px-2">Avant et arrière</button>
<button type="button" data-value="2" data-setting="pageTapTurn" class="btn btn-default btn-secondary col px-2">Toujours en avant</button>
<button type="button" data-value="0" data-setting="pageTapTurn" class="btn btn-default btn-secondary col px-2">Désactivé</button>
</div>
</div>
</div>
<div class="row form-group">
<label class="col-sm-4 col-form-label">Tourner la page par défilement vertical</label>
<div class="col">
<div class="row">
<button type="button" data-value="1" data-setting="pageWheelTurn" class="btn btn-default btn-secondary col px-2">Molette souris + touches</button>
<button type="button" data-value="2" data-setting="pageWheelTurn" class="btn btn-default btn-secondary col px-2">Molette souris</button>
<button type="button" data-value="0" data-setting="pageWheelTurn" class="btn btn-default btn-secondary col px-2">Désactivé</button>
</div>
</div>
</div>
<div class="row form-group">
<label class="col-sm-4 col-form-label">Défilement au clavier</label>
<div class="col">
<div class="row">
<button type="button" data-value="0" data-setting="scrollingMethod" class="btn btn-default btn-secondary col px-2">Navigateur natif</button>
<button type="button" data-value="1" data-setting="scrollingMethod" class="btn btn-default btn-secondary col px-2">Partie d'écran</button>
</div>
</div>
</div>
<div class="row form-group">
<label class="col-sm-4 col-form-label">Sens de balayage (tactile)</label>
<div class="col">
<div class="row">
<button type="button" data-value="0" data-setting="swipeDirection" class="btn btn-default btn-secondary col px-2">Normal</button>
<button type="button" data-value="1" data-setting="swipeDirection" class="btn btn-default btn-secondary col px-2">Inversé</button>
</div>
</div>
</div>
<div class="row form-group">
<label class="col-sm-4 col-form-label">Sensibilité du balayage (tactile)</label>
<div class="col px-0 my-auto">
<select class="form-control" data-setting="swipeSensitivity">
<option value="0">Désactivé</option>
<option value="1">Très faible</option>
<option value="2">Failble</option>
<option value="3">Normal</option>
<option value="4">Élevée</option>
<option value="5">Très élevée</option>
</select>
</div>
</div>
<hr>
<h5><span class="fas fa-folder-open fa-fw" aria-hidden="true" title=""></span> Autres paramètres</h5>
<div class="row form-group">
<label class="col-sm-4 col-form-label">Préchargement des images (0 à <span class="preload-max-value">5</span>)</label>
<div class="col px-0 my-auto">
<input data-setting="preloadPages" class="form-control" type="number" min="0" max="5" placeholder="The amount of images (default: 3)">
</div>
</div>
<div class="row form-group advanced">
<label class="col-sm-4 col-form-label">Précharger le chapitre en entier</label>
<div class="col">
<div class="row">
<button type="button" id="preload-all" class="btn btn-default btn-secondary col px-2" disabled="">Utilisateurs connectés uniquement</button>
</div>
</div>
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default btn-secondary" data-dismiss="modal"><span class="fas fa-undo fa-fw" aria-hidden="true" title=""></span> Fermer</button>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="/build/js/app.49ef2905.js" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<script src="/assets/reader/touchSwipe.js" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<script src="/assets/reader/natsort.js" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<script src="/assets/reader/axios.js" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<script src="/assets/reader/modernizr.js" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<script src="/assets/reader/event-emitter.js" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<script src="/assets/reader/reader.min.js?version=22" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<script src="https://cdn.usebootstrap.com/bootstrap/4.4.1/js/bootstrap.min.js" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<script src="/assets/js/reader.js?version=1" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<style>.modal.show { flex-direction: row; }</style>

<script async src="https://www.googletagmanager.com/gtag/js?id=G-FRQ003RH3H" type="bce199e54812c46b8903a0e6-text/javascript"></script>
<script type="bce199e54812c46b8903a0e6-text/javascript">
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'G-FRQ003RH3H');
	</script>
<script src="/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="bce199e54812c46b8903a0e6-|49" defer=""></script