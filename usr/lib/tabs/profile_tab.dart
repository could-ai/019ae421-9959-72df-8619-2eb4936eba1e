import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akoon'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          // Profile Header
          const Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.indigo,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Ardayga Fiitik',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('arday@fiitik.com', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const SizedBox(height: 30),
          
          // Menu Items
          _buildProfileItem(
            context, 
            icon: Icons.settings, 
            title: 'Settings', 
            onTap: () => Navigator.pushNamed(context, '/settings'),
          ),
          _buildProfileItem(
            context, 
            icon: Icons.help_outline, 
            title: 'Caawinaad & Taageero', 
            onTap: () => Navigator.pushNamed(context, '/support'),
          ),
          _buildProfileItem(
            context, 
            icon: Icons.info_outline, 
            title: 'Ku Saabsan (About)', 
            onTap: () => Navigator.pushNamed(context, '/support'),
          ),
          _buildProfileItem(
            context, 
            icon: Icons.logout, 
            title: 'Ka Bax', 
            color: Colors.red,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildProfileItem(BuildContext context, {
    required IconData icon, 
    required String title, 
    required VoidCallback onTap,
    Color? color,
  }) {
    return ListTile(
      leading: Icon(icon, color: color ?? Theme.of(context).iconTheme.color),
      title: Text(
        title, 
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
