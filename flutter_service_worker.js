'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "296bcce27fec91208c4e87c9cb35c5c7",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/images/pic.jpg": "b3ec0e45495210cfcf706af57fcd60f4",
"assets/LICENSE": "e8c137dca83f84ac89492920b6eb3029",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "16a3b0c32196391bf167d944c047f6a0",
"icons/Icon-192.png": "773770e001ae243fbf2182f3bc5e72c8",
"icons/Icon-512.png": "e826494fdb112152e5c44ee77fcbe11b",
"index.html": "92cc70040ed78efb8dd7519576480603",
"/": "92cc70040ed78efb8dd7519576480603",
"main.dart.js": "97ff648202eed651a78b4322482a5aef",
"manifest.json": "384d96fd1c6df1ef91a426e34fff43e4"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
