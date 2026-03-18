import 'package:blablacar_2/data/dummy_data.dart';
import 'package:blablacar_2/data/repository/ride/rides_repository.dart';
import 'package:blablacar_2/model/ride/ride.dart';
import 'package:blablacar_2/model/ride_pref/ride_pref.dart';

class RidesRepositoryMock implements RidesRepository {
  final List<Ride> _allRides = fakeRides;

  @override
  List<Ride> get allRides => _allRides;

  @override
  List<Ride> getRidesFor(RidePreference ridePreference) {
    return _allRides
        .where(
          (ride) =>
              ride.departureLocation == ridePreference.departure &&
              ride.arrivalLocation == ridePreference.arrival &&
              ride.availableSeats >= ridePreference.requestedSeats,
        )
        .toList();
  }
}
