import 'package:blablacar_2/ui/screens/home/view_model/home_view_model.dart';
import 'package:blablacar_2/ui/screens/home/widgets/home_content.dart';
import 'package:blablacar_2/ui/state/ride_preference_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ridePreferenceState = context.read<RidePreferenceState>();

    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(ridePreferenceState: ridePreferenceState),
      child: Consumer<HomeViewModel>(
        builder: (context, homeVM, child) => HomeContent(homeVM: homeVM),
      ),
    );
  }
}
