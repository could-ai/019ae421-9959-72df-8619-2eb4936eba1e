import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Dark Mode'),
            subtitle: const Text('Daar qaabka madow'),
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (bool value) {
              // Note: Real theme switching requires State Management (Provider/Bloc)
              // For now, this is a UI demo.
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Fadlan bedel setting-ka mobiilkaaga si aad u aragto Dark Mode.')),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Luqadda'),
            subtitle: const Text('Soomaali'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Ogeysiisyada'),
            trailing: const Switch(value: true, onChanged: null),
          ),
        ],
      ),
    );
  }
}
