import 'package:blablacar_2/model/ride_pref/ride_pref.dart';

abstract class RidePreferenceRepository {
  List<RidePreference> get histories;
  void addPreferenceToHistory(RidePreference ridePreference);
}
