import 'package:blablacar_2/data/repository/location/locations_repository.dart';
import 'package:blablacar_2/data/repository/location/locations_repository_mock.dart';
import 'package:blablacar_2/data/repository/ride/rides_repository.dart';
import 'package:blablacar_2/data/repository/ride/rides_repository_mock.dart';
import 'package:blablacar_2/data/repository/ride_preference/ride_perference_repository_mock.dart';
import 'package:blablacar_2/data/repository/ride_preference/ride_preference_repository.dart';
import 'package:blablacar_2/main.dart';
import 'package:blablacar_2/ui/state/ride_preference_state.dart';
import 'package:provider/provider.dart';

List<InheritedProvider> get providers {
  final RidePreferenceRepository ridePreferenceRepository =
      RidePerferenceRepositoryMock();
  return [
    Provider<LocationsRepository>(create: (_) => LocationsRepositoryMock()),
    Provider<RidesRepository>(create: (_) => RidesRepositoryMock()),
    ChangeNotifierProvider<RidePreferenceState>(create: (_) => RidePreferenceState(ridePreferenceRepository: ridePreferenceRepository))
  ];
}

void main() {
  mainCommon(providers);
}
