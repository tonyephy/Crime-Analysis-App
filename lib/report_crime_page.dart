import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReportCrimePage extends StatefulWidget {
  const ReportCrimePage({super.key});

  @override
  _ReportCrimePageState createState() => _ReportCrimePageState();
}

class _ReportCrimePageState extends State<ReportCrimePage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController explanationController = TextEditingController();
  final List<String> subCountyOptions = ['Bahati', 'Gilgil', 'Kuresoi North'];
  String? selectedLocation;

  // Form key for validation
  final _formKey = GlobalKey<FormState>();

  // Firestore reference
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> reportCrime() async {
    if (_formKey.currentState?.validate() ?? false) {
      // Getting the field values
      String crimeTitle = titleController.text.trim();
      String crimeExplanation = explanationController.text.trim();

      try {
        // Add crime data to Firestore
        await _firestore.collection('crimes').add({
          'title': crimeTitle,
          'location': selectedLocation,
          'explanation': crimeExplanation,
          'timestamp': FieldValue.serverTimestamp(),
          'reportedBy': 'Anonymous', // Add more fields like reporter if needed
        });

        // Notify user of success
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Crime Reported Successfully')),
        );

        // Clear the form
        titleController.clear();
        explanationController.clear();
        setState(() {
          selectedLocation = null;
        });
      } catch (e) {
        // Notify user of failure
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to report crime: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Report Crime')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Form for validation
          child: ListView(
            children: [
              // Crime Title Field
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Crime Title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the crime title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Crime Location Dropdown
              DropdownButtonFormField<String>(
                value: selectedLocation,
                items: subCountyOptions.map((location) {
                  return DropdownMenuItem(value: location, child: Text(location));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedLocation = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Crime Location',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Please select a location';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Crime Explanation Field
              TextFormField(
                controller: explanationController,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Crime Explanation',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please provide a detailed explanation of the crime';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Submit Button
              ElevatedButton(
                onPressed: reportCrime,
                child: const Text('Submit Report'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
