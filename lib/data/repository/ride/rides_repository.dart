import 'package:blablacar_2/model/ride/ride.dart';
import 'package:blablacar_2/model/ride_pref/ride_pref.dart';

abstract class RidesRepository {
  List<Ride> get allRides;
  List<Ride> getRidesFor(RidePreference ridePreference);
}
