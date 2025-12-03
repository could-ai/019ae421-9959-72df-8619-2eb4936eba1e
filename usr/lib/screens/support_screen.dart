import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Caawinaad & Taageero'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Icon(Icons.support_agent, size: 80, color: Colors.indigo),
            const SizedBox(height: 20),
            const Text(
              'Ma u baahantahay caawinaad?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Kooxdayada adeegga macaamiisha waa diyaar waqti kasta.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),
            
            // Contact Card
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.phone, color: Colors.green),
                      title: Text('Wac Hadda'),
                      subtitle: Text('252-612688949'),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.email, color: Colors.blue),
                      title: Text('Email'),
                      subtitle: Text('support@fiitik.com'),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.location_on, color: Colors.red),
                      title: Text('Cinwaanka'),
                      subtitle: Text('Mogadishu, Somalia'),
                    ),
                  ],
                ),
              ),
            ),
            
            const Spacer(),
            const Text(
              'Fiitik Somali App v1.0.0',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
