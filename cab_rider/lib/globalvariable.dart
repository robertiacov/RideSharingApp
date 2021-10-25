
import 'package:cab_rider/datamodels/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

String serverKey = '';

String mapKey = '';

final CameraPosition googlePlex = CameraPosition();

User currentFirebaseUser;

Userh currentUserInfo;

