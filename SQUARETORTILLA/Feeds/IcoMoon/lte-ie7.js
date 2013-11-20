/* Load this script using conditional IE comments if you need to support IE 7 and IE 6. */

window.onload = function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'icomoon\'">' + entity + '</span>' + html;
	}
	var icons = {
			'icon-home' : '&#xe001;',
			'icon-home-2' : '&#xe002;',
			'icon-home-3' : '&#xe003;',
			'icon-office' : '&#xe004;',
			'icon-newspaper' : '&#xe005;',
			'icon-pencil' : '&#xe006;',
			'icon-pencil-2' : '&#xe007;',
			'icon-quill' : '&#xe008;',
			'icon-pen' : '&#xe009;',
			'icon-blog' : '&#xe00a;',
			'icon-droplet' : '&#xe00b;',
			'icon-paint-format' : '&#xe00c;',
			'icon-image' : '&#xe00d;',
			'icon-image-2' : '&#xe00e;',
			'icon-images' : '&#xe00f;',
			'icon-camera' : '&#xe010;',
			'icon-music' : '&#xe011;',
			'icon-headphones' : '&#xe012;',
			'icon-play' : '&#xe013;',
			'icon-film' : '&#xe014;',
			'icon-camera-2' : '&#xe015;',
			'icon-dice' : '&#xe016;',
			'icon-pacman' : '&#xe017;',
			'icon-spades' : '&#xe018;',
			'icon-clubs' : '&#xe019;',
			'icon-diamonds' : '&#xe01a;',
			'icon-pawn' : '&#xe01b;',
			'icon-bullhorn' : '&#xe01c;',
			'icon-connection' : '&#xe01d;',
			'icon-podcast' : '&#xe01e;',
			'icon-feed' : '&#xe01f;',
			'icon-book' : '&#xe020;',
			'icon-books' : '&#xe021;',
			'icon-library' : '&#xe022;',
			'icon-file' : '&#xe023;',
			'icon-profile' : '&#xe024;',
			'icon-file-2' : '&#xe025;',
			'icon-file-3' : '&#xe026;',
			'icon-file-4' : '&#xe027;',
			'icon-copy' : '&#xe028;',
			'icon-copy-2' : '&#xe029;',
			'icon-copy-3' : '&#xe02a;',
			'icon-paste' : '&#xe02b;',
			'icon-paste-2' : '&#xe02c;',
			'icon-paste-3' : '&#xe02d;',
			'icon-stack' : '&#xe02e;',
			'icon-folder' : '&#xe02f;',
			'icon-folder-open' : '&#xe030;',
			'icon-tag' : '&#xe031;',
			'icon-tags' : '&#xe032;',
			'icon-barcode' : '&#xe033;',
			'icon-qrcode' : '&#xe034;',
			'icon-ticket' : '&#xe035;',
			'icon-cart' : '&#xe036;',
			'icon-cart-2' : '&#xe037;',
			'icon-cart-3' : '&#xe038;',
			'icon-coin' : '&#xe039;',
			'icon-credit' : '&#xe03a;',
			'icon-calculate' : '&#xe03b;',
			'icon-support' : '&#xe03c;',
			'icon-phone' : '&#xe03d;',
			'icon-phone-hang-up' : '&#xe03e;',
			'icon-address-book' : '&#xe03f;',
			'icon-notebook' : '&#xe040;',
			'icon-envelop' : '&#xe041;',
			'icon-pushpin' : '&#xe042;',
			'icon-location' : '&#xe043;',
			'icon-location-2' : '&#xe044;',
			'icon-compass' : '&#xe045;',
			'icon-map' : '&#xe046;',
			'icon-map-2' : '&#xe047;',
			'icon-history' : '&#xe048;',
			'icon-clock' : '&#xe049;',
			'icon-clock-2' : '&#xe04a;',
			'icon-alarm' : '&#xe04b;',
			'icon-alarm-2' : '&#xe04c;',
			'icon-bell' : '&#xe04d;',
			'icon-stopwatch' : '&#xe04e;',
			'icon-calendar' : '&#xe04f;',
			'icon-calendar-2' : '&#xe050;',
			'icon-print' : '&#xe051;',
			'icon-keyboard' : '&#xe052;',
			'icon-screen' : '&#xe053;',
			'icon-laptop' : '&#xe054;',
			'icon-mobile' : '&#xe055;',
			'icon-mobile-2' : '&#xe056;',
			'icon-tablet' : '&#xe057;',
			'icon-tv' : '&#xe058;',
			'icon-cabinet' : '&#xe059;',
			'icon-drawer' : '&#xe05a;',
			'icon-drawer-2' : '&#xe05b;',
			'icon-drawer-3' : '&#xe05c;',
			'icon-box-add' : '&#xe05d;',
			'icon-box-remove' : '&#xe05e;',
			'icon-download' : '&#xe05f;',
			'icon-upload' : '&#xe060;',
			'icon-disk' : '&#xe061;',
			'icon-storage' : '&#xe062;',
			'icon-undo' : '&#xe063;',
			'icon-redo' : '&#xe064;',
			'icon-flip' : '&#xe065;',
			'icon-flip-2' : '&#xe066;',
			'icon-undo-2' : '&#xe067;',
			'icon-redo-2' : '&#xe068;',
			'icon-forward' : '&#xe069;',
			'icon-reply' : '&#xe06a;',
			'icon-bubble' : '&#xe06b;',
			'icon-bubbles' : '&#xe06c;',
			'icon-bubbles-2' : '&#xe06d;',
			'icon-bubble-2' : '&#xe06e;',
			'icon-bubbles-3' : '&#xe06f;',
			'icon-bubbles-4' : '&#xe070;',
			'icon-user' : '&#xe071;',
			'icon-users' : '&#xe072;',
			'icon-user-2' : '&#xe073;',
			'icon-users-2' : '&#xe074;',
			'icon-user-3' : '&#xe075;',
			'icon-user-4' : '&#xe076;',
			'icon-quotes-left' : '&#xe077;',
			'icon-busy' : '&#xe078;',
			'icon-spinner' : '&#xe079;',
			'icon-spinner-2' : '&#xe07a;',
			'icon-spinner-3' : '&#xe07b;',
			'icon-spinner-4' : '&#xe07c;',
			'icon-spinner-5' : '&#xe07d;',
			'icon-spinner-6' : '&#xe07e;',
			'icon-binoculars' : '&#xe07f;',
			'icon-search' : '&#xe080;',
			'icon-zoom-in' : '&#xe081;',
			'icon-zoom-out' : '&#xe082;',
			'icon-expand' : '&#xe083;',
			'icon-contract' : '&#xe084;',
			'icon-expand-2' : '&#xe085;',
			'icon-contract-2' : '&#xe086;',
			'icon-key' : '&#xe087;',
			'icon-key-2' : '&#xe088;',
			'icon-lock' : '&#xe089;',
			'icon-lock-2' : '&#xe08a;',
			'icon-unlocked' : '&#xe08b;',
			'icon-wrench' : '&#xe08c;',
			'icon-settings' : '&#xe08d;',
			'icon-equalizer' : '&#xe08e;',
			'icon-cog' : '&#xe08f;',
			'icon-cogs' : '&#xe090;',
			'icon-cog-2' : '&#xe091;',
			'icon-hammer' : '&#xe092;',
			'icon-wand' : '&#xe093;',
			'icon-aid' : '&#xe094;',
			'icon-bug' : '&#xe095;',
			'icon-pie' : '&#xe096;',
			'icon-stats' : '&#xe097;',
			'icon-bars' : '&#xe098;',
			'icon-bars-2' : '&#xe099;',
			'icon-gift' : '&#xe09a;',
			'icon-trophy' : '&#xe09b;',
			'icon-glass' : '&#xe09c;',
			'icon-mug' : '&#xe09d;',
			'icon-food' : '&#xe09e;',
			'icon-leaf' : '&#xe09f;',
			'icon-rocket' : '&#xe0a0;',
			'icon-meter' : '&#xe0a1;',
			'icon-meter2' : '&#xe0a2;',
			'icon-dashboard' : '&#xe0a3;',
			'icon-hammer-2' : '&#xe0a4;',
			'icon-fire' : '&#xe0a5;',
			'icon-lab' : '&#xe0a6;',
			'icon-magnet' : '&#xe0a7;',
			'icon-remove' : '&#xe0a8;',
			'icon-remove-2' : '&#xe0a9;',
			'icon-briefcase' : '&#xe0aa;',
			'icon-airplane' : '&#xe0ab;',
			'icon-truck' : '&#xe0ac;',
			'icon-road' : '&#xe0ad;',
			'icon-accessibility' : '&#xe0ae;',
			'icon-target' : '&#xe0af;',
			'icon-shield' : '&#xe0b0;',
			'icon-lightning' : '&#xe0b1;',
			'icon-switch' : '&#xe0b2;',
			'icon-power-cord' : '&#xe0b3;',
			'icon-signup' : '&#xe0b4;',
			'icon-list' : '&#xe0b5;',
			'icon-list-2' : '&#xe0b6;',
			'icon-numbered-list' : '&#xe0b7;',
			'icon-menu' : '&#xe0b8;',
			'icon-menu-2' : '&#xe0b9;',
			'icon-tree' : '&#xe0ba;',
			'icon-cloud' : '&#xe0bb;',
			'icon-cloud-download' : '&#xe0bc;',
			'icon-cloud-upload' : '&#xe0bd;',
			'icon-download-2' : '&#xe0be;',
			'icon-upload-2' : '&#xe0bf;',
			'icon-download-3' : '&#xe0c0;',
			'icon-upload-3' : '&#xe0c1;',
			'icon-globe' : '&#xe0c2;',
			'icon-earth' : '&#xe0c3;',
			'icon-link' : '&#xe0c4;',
			'icon-attachment' : '&#xe000;',
			'icon-eye' : '&#xe0c5;',
			'icon-eye-blocked' : '&#xe0c6;',
			'icon-eye-2' : '&#xe0c7;',
			'icon-bookmark' : '&#xe0c8;',
			'icon-bookmarks' : '&#xe0c9;',
			'icon-brightness-medium' : '&#xe0ca;',
			'icon-brightness-contrast' : '&#xe0cb;',
			'icon-contrast' : '&#xe0cc;',
			'icon-star' : '&#xe0cd;',
			'icon-star-2' : '&#xe0ce;',
			'icon-star-3' : '&#xe0cf;',
			'icon-heart' : '&#xe0d0;',
			'icon-heart-2' : '&#xe0d1;',
			'icon-heart-broken' : '&#xe0d2;',
			'icon-thumbs-up' : '&#xe0d3;',
			'icon-thumbs-up-2' : '&#xe0d4;',
			'icon-happy' : '&#xe0d5;',
			'icon-happy-2' : '&#xe0d6;',
			'icon-smiley' : '&#xe0d7;',
			'icon-smiley-2' : '&#xe0d8;',
			'icon-tongue' : '&#xe0d9;',
			'icon-tongue-2' : '&#xe0da;',
			'icon-sad' : '&#xe0db;',
			'icon-sad-2' : '&#xe0dc;',
			'icon-wink' : '&#xe0dd;',
			'icon-wink-2' : '&#xe0de;',
			'icon-grin' : '&#xe0df;',
			'icon-grin-2' : '&#xe0e0;',
			'icon-cool' : '&#xe0e1;',
			'icon-cool-2' : '&#xe0e2;',
			'icon-angry' : '&#xe0e3;',
			'icon-angry-2' : '&#xe0e4;',
			'icon-evil' : '&#xe0e5;',
			'icon-evil-2' : '&#xe0e6;',
			'icon-shocked' : '&#xe0e7;',
			'icon-shocked-2' : '&#xe0e8;',
			'icon-confused' : '&#xe0e9;',
			'icon-confused-2' : '&#xe0ea;',
			'icon-neutral' : '&#xe0eb;',
			'icon-neutral-2' : '&#xe0ec;',
			'icon-wondering' : '&#xe0ed;',
			'icon-wondering-2' : '&#xe0ee;',
			'icon-point-up' : '&#xe0ef;',
			'icon-point-right' : '&#xe0f0;',
			'icon-point-down' : '&#xe0f1;',
			'icon-point-left' : '&#xe0f2;',
			'icon-warning' : '&#xe0f3;',
			'icon-notification' : '&#xe0f4;',
			'icon-question' : '&#xe0f5;',
			'icon-info' : '&#xe0f6;',
			'icon-info-2' : '&#xe0f7;',
			'icon-blocked' : '&#xe0f8;',
			'icon-cancel-circle' : '&#xe0f9;',
			'icon-checkmark-circle' : '&#xe0fa;',
			'icon-spam' : '&#xe0fb;',
			'icon-close' : '&#xe0fc;',
			'icon-checkmark' : '&#xe0fd;',
			'icon-checkmark-2' : '&#xe0fe;',
			'icon-spell-check' : '&#xe0ff;',
			'icon-minus' : '&#xe100;',
			'icon-plus' : '&#xe101;',
			'icon-enter' : '&#xe102;',
			'icon-exit' : '&#xe103;',
			'icon-play-2' : '&#xe104;',
			'icon-pause' : '&#xe105;',
			'icon-stop' : '&#xe106;',
			'icon-backward' : '&#xe107;',
			'icon-forward-2' : '&#xe108;',
			'icon-play-3' : '&#xe109;',
			'icon-pause-2' : '&#xe10a;',
			'icon-stop-2' : '&#xe10b;',
			'icon-backward-2' : '&#xe10c;',
			'icon-forward-3' : '&#xe10d;',
			'icon-first' : '&#xe10e;',
			'icon-last' : '&#xe10f;',
			'icon-previous' : '&#xe110;',
			'icon-next' : '&#xe111;',
			'icon-eject' : '&#xe112;',
			'icon-volume-high' : '&#xe113;',
			'icon-volume-medium' : '&#xe114;',
			'icon-volume-low' : '&#xe115;',
			'icon-volume-mute' : '&#xe116;',
			'icon-volume-mute-2' : '&#xe117;',
			'icon-volume-increase' : '&#xe118;',
			'icon-volume-decrease' : '&#xe119;',
			'icon-loop' : '&#xe11a;',
			'icon-loop-2' : '&#xe11b;',
			'icon-loop-3' : '&#xe11c;',
			'icon-shuffle' : '&#xe11d;',
			'icon-arrow-up-left' : '&#xe11e;',
			'icon-arrow-up' : '&#xe11f;',
			'icon-arrow-up-right' : '&#xe120;',
			'icon-arrow-right' : '&#xe121;',
			'icon-arrow-down-right' : '&#xe122;',
			'icon-arrow-down' : '&#xe123;',
			'icon-arrow-down-left' : '&#xe124;',
			'icon-arrow-left' : '&#xe125;',
			'icon-arrow-up-left-2' : '&#xe126;',
			'icon-arrow-up-2' : '&#xe127;',
			'icon-arrow-up-right-2' : '&#xe128;',
			'icon-arrow-right-2' : '&#xe129;',
			'icon-arrow-down-right-2' : '&#xe12a;',
			'icon-arrow-down-2' : '&#xe12b;',
			'icon-arrow-down-left-2' : '&#xe12c;',
			'icon-arrow-left-2' : '&#xe12d;',
			'icon-arrow-up-left-3' : '&#xe12e;',
			'icon-arrow-up-3' : '&#xe12f;',
			'icon-arrow-up-right-3' : '&#xe130;',
			'icon-arrow-right-3' : '&#xe131;',
			'icon-arrow-down-right-3' : '&#xe132;',
			'icon-arrow-down-3' : '&#xe133;',
			'icon-arrow-down-left-3' : '&#xe134;',
			'icon-arrow-left-3' : '&#xe135;',
			'icon-tab' : '&#xe136;',
			'icon-checkbox-checked' : '&#xe137;',
			'icon-checkbox-unchecked' : '&#xe138;',
			'icon-checkbox-partial' : '&#xe139;',
			'icon-radio-checked' : '&#xe13a;',
			'icon-radio-unchecked' : '&#xe13b;',
			'icon-crop' : '&#xe13c;',
			'icon-scissors' : '&#xe13d;',
			'icon-filter' : '&#xe13e;',
			'icon-filter-2' : '&#xe13f;',
			'icon-font' : '&#xe140;',
			'icon-text-height' : '&#xe141;',
			'icon-text-width' : '&#xe142;',
			'icon-bold' : '&#xe143;',
			'icon-underline' : '&#xe144;',
			'icon-italic' : '&#xe145;',
			'icon-strikethrough' : '&#xe146;',
			'icon-omega' : '&#xe147;',
			'icon-sigma' : '&#xe148;',
			'icon-table' : '&#xe149;',
			'icon-table-2' : '&#xe14a;',
			'icon-insert-template' : '&#xe14b;',
			'icon-pilcrow' : '&#xe14c;',
			'icon-left-to-right' : '&#xe14d;',
			'icon-right-to-left' : '&#xe14e;',
			'icon-paragraph-left' : '&#xe14f;',
			'icon-paragraph-center' : '&#xe150;',
			'icon-paragraph-right' : '&#xe151;',
			'icon-paragraph-justify' : '&#xe152;',
			'icon-paragraph-left-2' : '&#xe153;',
			'icon-paragraph-center-2' : '&#xe154;',
			'icon-paragraph-right-2' : '&#xe155;',
			'icon-paragraph-justify-2' : '&#xe156;',
			'icon-indent-increase' : '&#xe157;',
			'icon-indent-decrease' : '&#xe158;',
			'icon-new-tab' : '&#xe159;',
			'icon-embed' : '&#xe15a;',
			'icon-code' : '&#xe15b;',
			'icon-console' : '&#xe15c;',
			'icon-share' : '&#xe15d;',
			'icon-mail' : '&#xe15e;',
			'icon-mail-2' : '&#xe15f;',
			'icon-mail-3' : '&#xe160;',
			'icon-mail-4' : '&#xe161;',
			'icon-google' : '&#xe162;',
			'icon-google-plus' : '&#xe163;',
			'icon-google-plus-2' : '&#xe164;',
			'icon-google-plus-3' : '&#xe165;',
			'icon-google-plus-4' : '&#xe166;',
			'icon-google-drive' : '&#xe167;',
			'icon-facebook' : '&#xe168;',
			'icon-facebook-2' : '&#xe169;',
			'icon-facebook-3' : '&#xe16a;',
			'icon-instagram' : '&#xe16b;',
			'icon-twitter' : '&#xe16c;',
			'icon-twitter-2' : '&#xe16d;',
			'icon-twitter-3' : '&#xe16e;',
			'icon-feed-2' : '&#xe16f;',
			'icon-feed-3' : '&#xe170;',
			'icon-feed-4' : '&#xe171;',
			'icon-youtube' : '&#xe172;',
			'icon-youtube-2' : '&#xe173;',
			'icon-vimeo' : '&#xe174;',
			'icon-vimeo2' : '&#xe175;',
			'icon-vimeo-2' : '&#xe176;',
			'icon-lanyrd' : '&#xe177;',
			'icon-flickr' : '&#xe178;',
			'icon-flickr-2' : '&#xe179;',
			'icon-flickr-3' : '&#xe17a;',
			'icon-flickr-4' : '&#xe17b;',
			'icon-picassa' : '&#xe17c;',
			'icon-picassa-2' : '&#xe17d;',
			'icon-dribbble' : '&#xe17e;',
			'icon-dribbble-2' : '&#xe17f;',
			'icon-dribbble-3' : '&#xe180;',
			'icon-forrst' : '&#xe181;',
			'icon-forrst-2' : '&#xe182;',
			'icon-deviantart' : '&#xe183;',
			'icon-deviantart-2' : '&#xe184;',
			'icon-steam' : '&#xe185;',
			'icon-steam-2' : '&#xe186;',
			'icon-github' : '&#xe187;',
			'icon-github-2' : '&#xe188;',
			'icon-github-3' : '&#xe189;',
			'icon-github-4' : '&#xe18a;',
			'icon-github-5' : '&#xe18b;',
			'icon-wordpress' : '&#xe18c;',
			'icon-wordpress-2' : '&#xe18d;',
			'icon-joomla' : '&#xe18e;',
			'icon-blogger' : '&#xe18f;',
			'icon-blogger-2' : '&#xe190;',
			'icon-tumblr' : '&#xe191;',
			'icon-tumblr-2' : '&#xe192;',
			'icon-yahoo' : '&#xe193;',
			'icon-tux' : '&#xe194;',
			'icon-apple' : '&#xe195;',
			'icon-finder' : '&#xe196;',
			'icon-android' : '&#xe197;',
			'icon-windows' : '&#xe198;',
			'icon-windows8' : '&#xe199;',
			'icon-soundcloud' : '&#xe19a;',
			'icon-soundcloud-2' : '&#xe19b;',
			'icon-skype' : '&#xe19c;',
			'icon-reddit' : '&#xe19d;',
			'icon-linkedin' : '&#xe19e;',
			'icon-lastfm' : '&#xe19f;',
			'icon-lastfm-2' : '&#xe1a0;',
			'icon-delicious' : '&#xe1a1;',
			'icon-stumbleupon' : '&#xe1a2;',
			'icon-stumbleupon-2' : '&#xe1a3;',
			'icon-stackoverflow' : '&#xe1a4;',
			'icon-pinterest' : '&#xe1a5;',
			'icon-pinterest-2' : '&#xe1a6;',
			'icon-xing' : '&#xe1a7;',
			'icon-xing-2' : '&#xe1a8;',
			'icon-flattr' : '&#xe1a9;',
			'icon-foursquare' : '&#xe1aa;',
			'icon-foursquare-2' : '&#xe1ab;',
			'icon-paypal' : '&#xe1ac;',
			'icon-paypal-2' : '&#xe1ad;',
			'icon-paypal-3' : '&#xe1ae;',
			'icon-yelp' : '&#xe1af;',
			'icon-libreoffice' : '&#xe1b0;',
			'icon-file-pdf' : '&#xe1b1;',
			'icon-file-openoffice' : '&#xe1b2;',
			'icon-file-word' : '&#xe1b3;',
			'icon-file-excel' : '&#xe1b4;',
			'icon-file-zip' : '&#xe1b5;',
			'icon-file-powerpoint' : '&#xe1b6;',
			'icon-file-xml' : '&#xe1b7;',
			'icon-file-css' : '&#xe1b8;',
			'icon-html5' : '&#xe1b9;',
			'icon-html5-2' : '&#xe1ba;',
			'icon-css3' : '&#xe1bb;',
			'icon-chrome' : '&#xe1bc;',
			'icon-firefox' : '&#xe1bd;',
			'icon-IE' : '&#xe1be;',
			'icon-opera' : '&#xe1bf;',
			'icon-safari' : '&#xe1c0;',
			'icon-IcoMoon' : '&#xe1c1;'
		},
		els = document.getElementsByTagName('*'),
		i, attr, html, c, el;
	for (i = 0; ; i += 1) {
		el = els[i];
		if(!el) {
			break;
		}
		attr = el.getAttribute('data-icon');
		if (attr) {
			addIcon(el, attr);
		}
		c = el.className;
		c = c.match(/icon-[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
};