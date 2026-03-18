import 'package:blablacar_2/data/repository/location/locations_repository.dart';
import 'package:blablacar_2/data/repository/location/locations_repository_mock.dart';
import 'package:blablacar_2/data/repository/ride/rides_repository.dart';
import 'package:blablacar_2/data/repository/ride/rides_repository_mock.dart';
import 'package:blablacar_2/main.dart';
import 'package:provider/provider.dart';

List<InheritedProvider> get providers {
  return [
    Provider<LocationsRepository>(create: (_) => LocationsRepositoryMock()),
    Provider<RidesRepository>(create: (_) => RidesRepositoryMock()),
  ];
}

void main() {
  mainCommon(providers);
}
