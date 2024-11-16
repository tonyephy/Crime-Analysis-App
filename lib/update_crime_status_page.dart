import 'package:flutter/material.dart';

class UpdateCrimeStatusPage extends StatelessWidget {
  const UpdateCrimeStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Update Crime Status')),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            'Update Crime Status Section\nThis will allow the police to update the status of reported crimes.',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
