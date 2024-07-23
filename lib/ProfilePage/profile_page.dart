import 'package:flutter/material.dart';
import 'package:web1/Screens/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: blc,
      appBar: AppBar(
        backgroundColor: blc,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: gen,
              child: Icon(Icons.remove_red_eye_outlined, size: 50, color: bord),
            ),
            SizedBox(height: 10),
            Text(
              'Jane Sodi',
              style: TextStyle(color: gen2, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Edit profile', style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Payment', style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Support', style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('About the app', style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Log out', style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
