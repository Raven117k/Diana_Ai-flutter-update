import 'package:flutter/material.dart';

class RavenDrawer extends StatelessWidget {
  final VoidCallback onNewChat;

  const RavenDrawer({super.key, required this.onNewChat});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1C1C1E),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text(
              'Raven 117',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              'raven117@ravendevops.com',
              style: TextStyle(color: Colors.white70),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/av.jpg'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.chat_bubble_outline, color: Colors.white),
            title: const Text('New Chat', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.of(context).pop(); // Close drawer
              onNewChat(); // Call the callback
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            title: const Text('Settings', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.white),
            title: const Text('About', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.of(context).pop();
              showAboutDialog(
                context: context,
                applicationName: 'Diana AI',
                applicationVersion: '1.0.0',
                children: const [
                  Text('Made by Raven-DevOps'),
                  Text('Powered by Gemini-API'),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
