import 'package:flutter/cupertino.dart';
import 'package:cab_rider/datamodels/address.dart';

class AppData extends ChangeNotifier{

  Address pickupAddress;

  Address destinationAddress;

  void updatePickupAddress(Address pickup){
    pickupAddress = pickup;
    notifyListeners();
  }

  void updateDestinationAdress (Address destination){
    destinationAddress = destination;
    notifyListeners();
  }
}