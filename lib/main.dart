import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hinatazaka_song_record_app/screen/home/home_screen.dart';
import 'package:hinatazaka_song_record_app/screen/tab/tab_screen.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dialogBackgroundColor: Color(0xFF00CCFF),
      ),
      home: const TabScreen(),
    );
  }
}
