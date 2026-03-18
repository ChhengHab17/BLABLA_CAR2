import 'package:blablacar_2/data/repository/location/locations_repository.dart';
import 'package:blablacar_2/model/ride/locations.dart';
import '../../dummy_data.dart';

class LocationsRepositoryMock implements LocationsRepository {
  @override
  List<Location> get locations => fakeLocations;
}
