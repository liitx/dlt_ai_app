import 'package:flutter/material.dart';

class DltAiApp extends StatelessWidget {
  const DltAiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Serverpod',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Dlt Log Analyzer'),
        ),
      ),
    );
  }
}
