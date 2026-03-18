import 'package:blablacar_2/model/ride_pref/ride_pref.dart';
import 'package:blablacar_2/ui/state/ride_preference_state.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final RidePreferenceState ridePreferenceState;

  HomeViewModel({required this.ridePreferenceState}) {
    ridePreferenceState.addListener(_onRidePrefChange);
  }

  RidePreference? get selectedRidePreference =>
      ridePreferenceState.selectedPreference;
  List<RidePreference> get history =>
      ridePreferenceState.history.reversed.toList();
  @override
  void dispose() {
    ridePreferenceState.removeListener(_onRidePrefChange);
    super.dispose();
  }

  void selectRidePreference(RidePreference ridePreference) {
    ridePreferenceState.selectPreference(ridePreference);
  }

  void _onRidePrefChange() {
    notifyListeners();
  }
}
