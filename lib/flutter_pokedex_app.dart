import 'package:flutter/material.dart';
import 'package:flutter_pokedex/home/presentation/view/home_view.dart';

/// {@template flutter_pokedex_app}
/// The root widget of the Flutter Pokedex app.
///
/// This widget sets up the application with a [MaterialApp], defining the
/// app's theme and the home screen.
/// {@endtemplate}
void main() {
  runApp(const FlutterPokedexApp());
}

class FlutterPokedexApp extends StatelessWidget {
  const FlutterPokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
      home: const HomeView(title: 'Flutter Demo Home Page'),
    );
  }
}
