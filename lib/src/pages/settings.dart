/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */

import 'package:flutter/material.dart';

class SettingsThreePage extends StatelessWidget {
  static final String path = "lib/src/pages/settings/settings3.dart";
  final TextStyle headerStyle = TextStyle(
    color: Colors.grey.shade800,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Settings',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "ACCOUNT",
              style: headerStyle,
            ),
            const SizedBox(height: 10.0),
            Card(
              elevation: 0.5,
              margin: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 0,
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      child: Image(
                        image: AssetImage('assets/descarga.jfif'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text("Take it easy"),
                    onTap: () => Navigator.pushNamed(context, 'profile'),

                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    value: true,
                    title: Text("Private Account"),
                    onChanged: (val) {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              "PUSH NOTIFICATIONS",
              style: headerStyle,
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 0,
              ),
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    activeColor: Colors.purple,
                    value: true,
                    title: Text("Received notification"),
                    onChanged: (val) {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    value: false,
                    title: Text("Received newsletter"),
                    onChanged: null,
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    value: true,
                    title: Text("Received Offer Notification"),
                    onChanged: (val) {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    value: true,
                    title: Text("Received App Updates"),
                    onChanged: null,
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 0,
              ),
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Login"),
                onTap: () => Navigator.pushNamed(context, 'login'),
              ),
            ),
            const SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade300,
    );
  }
}
