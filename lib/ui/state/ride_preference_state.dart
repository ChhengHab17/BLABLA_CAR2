import 'package:blablacar_2/data/repository/ride_preference/ride_preference_repository.dart';
import 'package:blablacar_2/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

class RidePreferenceState extends ChangeNotifier {
  RidePreference? _selectedPreference;
  List<RidePreference> _history = [];
  final RidePreferenceRepository ridePreferenceRepository;

  RidePreference? get selectedPreference => _selectedPreference;
  List<RidePreference> get history => _history;

  RidePreferenceState({required this.ridePreferenceRepository}){
    _init();
  }
  void _init() {
    _history = ridePreferenceRepository.histories;
    notifyListeners();
  }

  void selectPreference(RidePreference preference) {
    if (preference != _selectedPreference) {
      // Set the selected preference
      _selectedPreference = preference;

      // Push to history
      ridePreferenceRepository.addPreferenceToHistory(preference);
      notifyListeners();
    }
  }
}
