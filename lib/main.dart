import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:great_places/screens/place_form_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:great_places/stores/add_location.dart';
import 'package:great_places/stores/great_places.dart';
import 'package:provider/provider.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const PlacesListScreen(),
    ),
    GoRoute(
      path: '/placeFormScreen',
      builder: (context, state) => const PlaceFormScreen(),
    )
  ],
);

void main() {
  runApp(MultiProvider(providers: [
    Provider<GreatPlaces>(create: (_)=> GreatPlaces()),
    Provider<AddLocation>(create: (_)=> AddLocation(),)
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
