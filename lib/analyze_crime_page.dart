import 'package:flutter/material.dart';

class AnalyzeCrimePage extends StatelessWidget {
  const AnalyzeCrimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Analyze Crime')),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            'Analyze Crime Section\nThis will provide crime analysis based on patterns and data.',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
