{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "a-n-i-m-a-t-e-d-kitty-cat" = buildFirefoxXpiAddon {
      pname = "a-n-i-m-a-t-e-d-kitty-cat";
      version = "2.0";
      addonId = "{cf4e89f2-b8e0-4ad7-932d-7b82d8956543}";
      url = "https://addons.mozilla.org/firefox/downloads/file/2698590/a_n_i_m_a_t_e_d_kitty_cat-2.0.xpi";
      sha256 = "1ab1b18d712713b642b22a1f5fb1b2f5ff9b25b4c9123013873756439b769666";
      meta = with lib;
      {
        description = "Dogs have Owners, Cats have Staff.\n~ Unknown Source\n\nTAGS\ngallery gray cuddly cute black kitten feline domesticated animal love furry friend pets animated png animated ears &amp; tail walking paw prints footer whiskers\n\n=^..^=  \n(\") (\") SaSSyGirL";
        license = licenses.cc-by-sa-30;
        mozPermissions = [];
        platforms = platforms.all;
        };
      };
    "aw-watcher-web" = buildFirefoxXpiAddon {
      pname = "aw-watcher-web";
      version = "0.4.8";
      addonId = "{ef87d84c-2127-493f-b952-5b4e744245bc}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4114360/aw_watcher_web-0.4.8.xpi";
      sha256 = "6be85d9755013520a5a4835cb8ae2a3287e4cb9c12b5baf4957ab10368dd45d2";
      meta = with lib;
      {
        homepage = "https://github.com/ActivityWatch/aw-watcher-web";
        description = "This extension logs the current tab and your browser activity to ActivityWatch.";
        license = licenses.mpl20;
        mozPermissions = [
          "tabs"
          "alarms"
          "notifications"
          "activeTab"
          "storage"
          "http://localhost:5600/api/*"
          "http://localhost:5666/api/*"
          ];
        platforms = platforms.all;
        };
      };
    "awesome-rss" = buildFirefoxXpiAddon {
      pname = "awesome-rss";
      version = "1.3.5";
      addonId = "{97d566da-42c5-4ef4-a03b-5a2e5f7cbcb2}";
      url = "https://addons.mozilla.org/firefox/downloads/file/1124727/awesome_rss-1.3.5.xpi";
      sha256 = "fc3c62532d6462bc269f6ea9fa61bbcadc898bdafcf66e16e15bec66bb094d9b";
      meta = with lib;
      {
        description = "Puts an RSS/Atom subscribe button back in URL bar.\n\nSupports \"Live Bookmarks\" (built-in), Feedly, &amp; Inoreader";
        license = licenses.gpl3;
        mozPermissions = [ "tabs" "storage" "<all_urls>" ];
        platforms = platforms.all;
        };
      };
    "containerise" = buildFirefoxXpiAddon {
      pname = "containerise";
      version = "3.9.0";
      addonId = "containerise@kinte.sh";
      url = "https://addons.mozilla.org/firefox/downloads/file/3724805/containerise-3.9.0.xpi";
      sha256 = "bf511aa160512c5ece421d472977973d92e1609a248020e708561382aa10d1e5";
      meta = with lib;
      {
        homepage = "https://github.com/kintesh/containerise";
        description = "Automatically open websites in a dedicated container. Simply add rules to map domain or subdomain to your container.";
        license = licenses.mit;
        mozPermissions = [
          "contextualIdentities"
          "cookies"
          "tabs"
          "webRequest"
          "webRequestBlocking"
          "storage"
          "<all_urls>"
          ];
        platforms = platforms.all;
        };
      };
    "ghostpage" = buildFirefoxXpiAddon {
      pname = "ghostpage";
      version = "0.4.0";
      addonId = "{c4f0d47b-a428-4fe9-87e2-f6500c1423eb}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3599688/ghostpage-0.4.0.xpi";
      sha256 = "66c89a92920502334ef5673afb807fcc5204c20dc82a8b08669bf57a37fc879f";
      meta = with lib;
      {
        description = "Boooooooooooooo!";
        license = licenses.mit;
        mozPermissions = [ "tabs" ];
        platforms = platforms.all;
        };
      };
    "mastodon4-redirect" = buildFirefoxXpiAddon {
      pname = "mastodon4-redirect";
      version = "1.4";
      addonId = "mastodon4-redirect@raikas.dev";
      url = "https://addons.mozilla.org/firefox/downloads/file/4034983/mastodon4_redirect-1.4.xpi";
      sha256 = "fa3ade3ae83965d2e4b209815fa07c6b55646323c53c7700dcb3a9522d4608c6";
      meta = with lib;
      {
        description = "Redirects users from Mastodon4 supported instances to their home instance";
        license = licenses.mit;
        mozPermissions = [ "storage" "*://*/*" ];
        platforms = platforms.all;
        };
      };
    "nattynote" = buildFirefoxXpiAddon {
      pname = "nattynote";
      version = "2.1.1";
      addonId = "{13558633-c36e-4451-a180-ac70f734c6ce}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4190167/nattynote-2.1.1.xpi";
      sha256 = "d6409db69fab839d2aa693d8be0ae80288f84f785d8d8fbceeb07e87a77378d6";
      meta = with lib;
      {
        homepage = "https://github.com/ahmedelq/NattyNote";
        description = "Take time-stamped YouTube notes.";
        license = licenses.gpl3;
        mozPermissions = [ "storage" "unlimitedStorage" "*://*.youtube.com/*" ];
        platforms = platforms.all;
        };
      };
    "netflix-prime-auto-skip" = buildFirefoxXpiAddon {
      pname = "netflix-prime-auto-skip";
      version = "1.0.70";
      addonId = "NetflixPrime@Autoskip.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/4197108/netflix_prime_auto_skip-1.0.70.xpi";
      sha256 = "4251d976f85c5497a6941e99ad048c7234486b252b59c3cda49bc82fa89ef7f9";
      meta = with lib;
      {
        homepage = "https://github.com/Dreamlinerm/Netflix-Prime-Auto-Skip";
        description = "Automatically skip Ads, Intros, Recaps, Credits and add Speed Control, etc. on Netflix, Prime video, Disney+ &amp; Hotstar and Crunchyroll.";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "*://*.primevideo.com/*"
          "*://*.amazon.com/*"
          "*://*.amazon.co.jp/*"
          "*://*.amazon.de/*"
          "*://*.amazon.co.uk/*"
          "*://*.netflix.com/*"
          "*://*.netflix.ca/*"
          "*://*.netflix.com.au/*"
          "*://*.disneyplus.com/*"
          "*://*.hotstar.com/*"
          "*://*.crunchyroll.com/*"
          "https://static.crunchyroll.com/vilos-v2/web/vilos/player.html*"
          ];
        platforms = platforms.all;
        };
      };
    "notifications-preview-github" = buildFirefoxXpiAddon {
      pname = "notifications-preview-github";
      version = "23.4.6";
      addonId = "notifications-preview-github@tanmayrajani.github.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/4094000/notifications_preview_github-23.4.6.xpi";
      sha256 = "246991ab85e31b9a9c1c7bcaa5aa651346b7ee3a1e6a3b8039098350f9cc3ed9";
      meta = with lib;
      {
        homepage = "https://github.com/tanmayrajani/notifications-preview-github/";
        description = "Quickly see your notifications in a popup without leaving the current page";
        license = licenses.bsd2;
        mozPermissions = [ "storage" "https://github.com/*" ];
        platforms = platforms.all;
        };
      };
    "smartreader" = buildFirefoxXpiAddon {
      pname = "smartreader";
      version = "1.6";
      addonId = "contact@example.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3999045/smartreader-1.6.xpi";
      sha256 = "2786349515520feda8771c640662e66596bbf7bd5e8809f748bcfd05b9ce545e";
      meta = with lib;
      {
        description = "Modify a web page to make it more readable by bolding the beginning of a word (like bionic reading).";
        license = licenses.mpl20;
        mozPermissions = [ "<all_urls>" "http://*/*" "https://*/*" ];
        platforms = platforms.all;
        };
      };
    "unofficial-hypothesis" = buildFirefoxXpiAddon {
      pname = "unofficial-hypothesis";
      version = "1.470.0.2";
      addonId = "{7dc760e7-5cc5-4e76-8468-18b2b003f22a}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3670210/unofficial_hypothesis-1.470.0.2.xpi";
      sha256 = "077ea8edd0cf64c505e4950e494ac8ff14c6a0c63b5c490f747e118e3b669f49";
      meta = with lib;
      {
        homepage = "https://github.com/diegodlh/browser-extension";
        description = "An unofficial extension to collaboratively annotate the web using Hypothesis.";
        license = licenses.bsd2;
        mozPermissions = [
          "<all_urls>"
          "storage"
          "tabs"
          "identity"
          "contextMenus"
          ];
        platforms = platforms.all;
        };
      };
    "watchmarker-for-youtube" = buildFirefoxXpiAddon {
      pname = "watchmarker-for-youtube";
      version = "4.4.2";
      addonId = "yourect@coderect.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4180200/watchmarker_for_youtube-4.4.2.xpi";
      sha256 = "b2a7963a311a0e2169af3f6edd1c6198d98fc92b523c574e6e27ca2051194932";
      meta = with lib;
      {
        homepage = "http://sniklaus.com/";
        description = "Automatically mark videos on Youtube that you have already watched.";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "downloads"
          "history"
          "tabs"
          "cookies"
          "webRequest"
          "webRequestBlocking"
          "*://www.youtube.com/*"
          "*://*.ytimg.com/vi/*/*"
          ];
        platforms = platforms.all;
        };
      };
    }