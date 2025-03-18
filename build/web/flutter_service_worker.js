'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "f02e88b5ef402ffb3070af86d6326370",
"assets/AssetManifest.bin.json": "0145396cbcab672848a1ea9124d798d3",
"assets/AssetManifest.json": "c255f788340a135707c0fa812a5a5b70",
"assets/assets/graphemes/consonants/chj.png": "f1bf04256c3705d8680432e3c530a774",
"assets/assets/graphemes/consonants/ckg.png": "5a7fede94dfbf618adee4b974dcb8780",
"assets/assets/graphemes/consonants/fv.png": "1db50347f26b229194ffb82142bc3642",
"assets/assets/graphemes/consonants/h.png": "f5a438eb6462cdb64c147203ef93ee03",
"assets/assets/graphemes/consonants/l.png": "4efd80b3c9a9f9721aa0e35e1706b4d9",
"assets/assets/graphemes/consonants/m.png": "92bc432808bda6f228883ec906c0dc5e",
"assets/assets/graphemes/consonants/n.png": "760246e284682bdfd2e8244113816940",
"assets/assets/graphemes/consonants/ng.png": "e13f93e0116dca3923dd52d5f45b7e4a",
"assets/assets/graphemes/consonants/none.png": "3a743ddc467d59b4b0b7301cb1dce283",
"assets/assets/graphemes/consonants/pb.png": "5a811386778e204ba828907c8a340aea",
"assets/assets/graphemes/consonants/r.png": "893b0f7bbb6ec826d4dde026d8bf77a9",
"assets/assets/graphemes/consonants/shzh.png": "914e0e27a807310599618c5b6e9ecf29",
"assets/assets/graphemes/consonants/sz.png": "836e8b885979a61284b14e0397d24faa",
"assets/assets/graphemes/consonants/td.png": "84f0dab1bd839fa7677d8320d6dbdc72",
"assets/assets/graphemes/consonants/th.png": "45c09af6c589902154bb3c1d67405c95",
"assets/assets/graphemes/consonants/w.png": "8f627efd5e1f6cf3eeaa04d2c1ce3f6b",
"assets/assets/graphemes/consonants/y.png": "4cce3bd48bcb8549698f9e9cfe97158a",
"assets/assets/graphemes/diacritics/long.png": "372e03fb9d20cd93fd4d4fce09aafdd5",
"assets/assets/graphemes/diacritics/upper.png": "e07e896ed04386d4f83492751d644eec",
"assets/assets/graphemes/diacritics/voiced.png": "a0afc4cd14227605bd445d1e10804b5d",
"assets/assets/graphemes/punctuation/line.png": "05fb08fc106aa63286f2b50fdb7a8a4a",
"assets/assets/graphemes/vowels/a.png": "342066e1bd577e0049a0a80710ede2f9",
"assets/assets/graphemes/vowels/e.png": "880ba80a87ec89117111b1df66f4330d",
"assets/assets/graphemes/vowels/i.png": "beb2d2fde8c5f4327f5c18f4bdd5307f",
"assets/assets/graphemes/vowels/o.png": "91d9f314a4e2fd5fce32c0c284e562a8",
"assets/assets/graphemes/vowels/u.png": "1ca27c00790fb180ac79494f5fa9f02d",
"assets/assets/ui/cDiacritic.png": "f02e679e485a5bc5402f5382cfc33426",
"assets/assets/ui/other.png": "ba3cc19ceb7e37e6d14614ea5c06f2cd",
"assets/assets/ui/single.png": "a71fb9025b2af576134eb31cdecf53cc",
"assets/assets/ui/vDiacritic.png": "b75557cab5f962ba49e2a4b3528655bd",
"assets/assets/ui/voicable.png": "5b3854f9e9c44dade25d264d8896bd76",
"assets/assets/ui/vowel.png": "acde7a372f2bafe515d462b0b8dbaa1d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "71caae748e5f13975a0dd4fa90ae3a05",
"assets/NOTICES": "8348f2f11e2783c9702845c2f435f011",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "577236cf9e362fdf17ab153b22fa687d",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "af6b2f7adcdc5303e6ab5278434b52a6",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "f9eed52b6c2c1209398df2b2d351e7fa",
"/": "f9eed52b6c2c1209398df2b2d351e7fa",
"main.dart.js": "e7f415871f464ed1c60cf706448666bb",
"manifest.json": "85c9edcbdd16ee449328b5e8292bcbb5",
"version.json": "6692425a4d6a6024e5b70bf2cdc27adb"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
