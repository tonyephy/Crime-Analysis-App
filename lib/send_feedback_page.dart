import 'package:flutter/material.dart';

class SendFeedbackPage extends StatelessWidget {
  const SendFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Send Feedback')),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            'Send Feedback Section\nUsers can submit feedback related to the system or crimes.',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
