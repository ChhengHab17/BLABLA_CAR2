import 'package:blablacar_2/data/repository/ride_preference/ride_preference_repository.dart';
import 'package:blablacar_2/model/ride_pref/ride_pref.dart';

class RidePerferenceRepositoryMock implements RidePreferenceRepository {
  final List<RidePreference> _preferenceHistory = [];

  @override
  List<RidePreference> get histories => _preferenceHistory;

  @override
  void addPreferenceToHistory(RidePreference ridePreference) {
    _preferenceHistory.add(ridePreference);
  }
}
