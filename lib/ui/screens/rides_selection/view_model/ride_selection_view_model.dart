import 'package:blablacar_2/data/repository/ride/rides_repository.dart';
import 'package:blablacar_2/model/ride/ride.dart';
import 'package:blablacar_2/model/ride_pref/ride_pref.dart';
import 'package:blablacar_2/ui/state/ride_preference_state.dart';
import 'package:flutter/material.dart';

class RideSelectionViewModel extends ChangeNotifier {
  final RidePreferenceState ridePrefState;
  final RidesRepository ridesRepository;

  RideSelectionViewModel({
    required this.ridePrefState,
    required this.ridesRepository,
  }) {
    ridePrefState.addListener(_onRidePreferenceChanged);
  }

  RidePreference? get currentRidePreference => ridePrefState.selectedPreference;
  List<RidePreference> get history => ridePrefState.history;
  void _onRidePreferenceChanged() {
    notifyListeners();
  }

  @override
  void dispose() {
    ridePrefState.removeListener(_onRidePreferenceChanged);
    super.dispose();
  }

  void selectRidePreference(RidePreference ridePreference) {
    ridePrefState.selectPreference(ridePreference);
  }

  List<Ride> getMatchingRides() {
    if (ridePrefState.selectedPreference != null) {
      return ridesRepository.getRidesFor(ridePrefState.selectedPreference!);
    }
    return [];
  }
}
