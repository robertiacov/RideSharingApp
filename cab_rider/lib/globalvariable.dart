
import 'package:cab_rider/datamodels/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

String serverKey = 'key=AAAAgGve0mI:APA91bHuFnD8a2RqyyRU2eufbmg2dy61ZUSLqtteiwj4hh1zJFsSa--dqyPJalZlwae0Adui_bzVdNcnMNqUxvRX8kj_bw7Nxp37SXTsxOUp-d3sTgb-Cy1jJPSRJETtzxGGFahddGS5';

String mapKey = 'AIzaSyAlQtqNSTnd-r7fg0PJpccZ2FFWLckeoUQ';

final CameraPosition googlePlex = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);

User currentFirebaseUser;

Userh currentUserInfo;

