import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewCrimesPage extends StatelessWidget {
  ViewCrimesPage({super.key});

  // Firestore reference for the crimes collection
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Crimes')),
      body: StreamBuilder<QuerySnapshot>(
        // Listen for real-time updates from Firestore
        stream: _firestore.collection('crimes').orderBy('timestamp', descending: true).snapshots(),
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return const Center(child: Text('Error loading crimes'));
          }

          // Check if data is loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // Extract crime data from Firestore documents
          final crimeDocs = snapshot.data?.docs ?? [];

          // Display a message if no crimes are found
          if (crimeDocs.isEmpty) {
            return const Center(child: Text('No crimes reported yet.'));
          }

          return ListView.builder(
            itemCount: crimeDocs.length,
            itemBuilder: (context, index) {
              final crimeData = crimeDocs[index].data() as Map<String, dynamic>;
              final title = crimeData['title'] ?? 'Unknown';
              final location = crimeData['location'] ?? 'Unknown';
              final explanation = crimeData['explanation'] ?? 'No details provided';

              return Card(
                child: ListTile(
                  title: Text(title),
                  subtitle: Text('Location: $location\nDetails: $explanation'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
