# RideSharingApp
This is a RideSharingApp for Android devices, developed in Flutter and the database is created in Firebase.

Can be run on both android and iOS devices, due to Flutter language, which give my the opportunity to run on two platform without having to make a major changes in my code. App is divided into two parts: rider part and driver part. 

From rider side: 
  - User can order a car;
  - See the nearby cars available on the map;
  - See the overall route;
  - See the auto-generated price for the trip;
  - Time until the driver arrive to the indicated location;
  - Can call the driver after he pick it up the trip;

From driver side:
  - Can see the order trips;
  - Auto-generate the map route to pick up rider;
  - See the income from every trip directly into account;
  - Can go online or offline on app;

This RideSharingApp has: 
  - Advanced state management concepts with the provider package;
  - User can initiate a phone call directly from app;
  - Create, Remove, Update, Delete records in Firebase Database;
  - Can find place adress with location coordinates using Google Geocoding API;
  - User firendly interfaces for both android and iOS;
  - Creating the Push Notification messages only with Firebase (FCM - can send HttpWebRequest from a single device);
  - Google Places API which gave me the possibility to obtain informations, with which I can make predictions about a given location using some search interogations;
  - Directions API which gave me directions between multiple locations;
  - A algorith for calculating the total ride price based on: base fare, distance fare and time fare;

The app using following dart libraries:
  - Firebase_core - enable connection to multiple Firebase apps;
  - Firebase_auth - enable the authentification within app and database;
  - Firebase_database - enable database comuncation with app;
  - Connectivty - allows Flutter apps to discover network connectivty;
  - Google_maps - use Google Maps JavaScript API;
  - Outline_material_icons - for design icons;
  - Geolocator - plugin which provides easy access to platform specific location services;
  - Http - high-level functions and classes;
  - Flutter_polyline_points - decodes encoded google polyline string intro list of geo-coordinates suitable for showing route/polyline on maps;
  - Animated_text_kit - for user eye catching design;
  - Flutter_GeoFire - it is an open-source library that gives you the chance to store and query keys, based on your location. The biggest advantage is to query the keys without     giving a specific geographical area, all in real time;
  - Firebase_messaging - Flutter app can recive and process push notifications as well data messages on Android and IOS;
  - Toast - for not showing the messages only on console;
  - Intl - provide internationalization and localization facilities;
  - 

App screens:

Login / Singup:

![image](https://user-images.githubusercontent.com/52401139/134565531-cac94205-f318-4306-aaf7-1af3d94dcbee.png)
![image](https://user-images.githubusercontent.com/52401139/134565574-25f906e9-ed9e-4920-9d89-9d4210795cfc.png)

Rider screens:

![image](https://user-images.githubusercontent.com/52401139/134566221-da19b0d8-1737-477f-a503-ecdbba4818a9.png)
![image](https://user-images.githubusercontent.com/52401139/134567511-69a34fbf-8205-4f1a-aabb-3ce9e62c83f0.png)
![image](https://user-images.githubusercontent.com/52401139/134568164-7dfa3a2c-9a9f-4fb1-a037-dc748a39d67f.png)
![image](https://user-images.githubusercontent.com/52401139/134568731-828aca04-fb80-40de-9f27-b663888b425c.png)
![image](https://user-images.githubusercontent.com/52401139/134571564-3222faf1-0272-4543-a0ea-6aa422e91def.png)
![image](https://user-images.githubusercontent.com/52401139/134572190-573288ad-1d5c-4852-b221-4c3a979dd902.png)



Driver screens:

![image](https://user-images.githubusercontent.com/52401139/134570980-24d6a253-a245-434d-9e41-69cc74460176.png)
![image](https://user-images.githubusercontent.com/52401139/134571934-73707f3f-5d72-4011-808d-f26801c1c631.png)
![image](https://user-images.githubusercontent.com/52401139/134572107-183ec0d7-0586-4696-8736-0884c957c602.png)
![image](https://user-images.githubusercontent.com/52401139/134572316-b2d1f063-0006-4734-8c7a-ae7331c132d8.png)
![image](https://user-images.githubusercontent.com/52401139/134572360-1369ad5f-fd04-4bcb-bd9a-2ec5f2e400bf.png)
![image](https://user-images.githubusercontent.com/52401139/134572502-4b4c9e92-05f7-4e72-9998-ae0f21ba999a.png)




Screen from both devices:

![image](https://user-images.githubusercontent.com/52401139/134572289-0ab85046-357d-44f9-878a-9f5d857cb2b6.png)

Full documentation here (Romanian language):

[Aplicatie RideSharing.pdf](https://github.com/robert1564/RideSharingApp/files/7220446/Aplicatie.RideSharing.pdf)
