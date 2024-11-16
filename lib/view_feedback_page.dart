import 'package:flutter/material.dart';

class ViewFeedbackPage extends StatelessWidget {
  const ViewFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Feedback')),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            'Feedback Section\nThis will display user feedback for the crime analysis system.',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
