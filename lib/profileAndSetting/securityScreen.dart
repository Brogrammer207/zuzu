import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/commanButton.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool _toggleValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Security'),
        leading: const Icon(Icons.arrow_back_rounded),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Control',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              title: const Text('Security Alerts'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Manage Devices'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Manage Permission'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),

            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Security',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Remember Me'),
              trailing: Switch(
                value: _toggleValue,
                onChanged: (bool value) {
                  setState(() {
                    _toggleValue = value;
                  });
                  // Add your logic here for when the toggle button is changed
                },
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Face ID'),
              trailing: Switch(
                value: _toggleValue,
                onChanged: (bool value) {
                  setState(() {
                    _toggleValue = value;
                  });
                  // Add your logic here for when the toggle button is changed
                },
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Biometric ID'),
              trailing: Switch(
                value: _toggleValue,
                onChanged: (bool value) {
                  setState(() {
                    _toggleValue = value;
                  });
                  // Add your logic here for when the toggle button is changed
                },
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Google Authenticator'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(height: 20,),
            CommonButton(text: 'Change Pin', onPressed: () {  }, color: const Color(0xffffecf0),),
            const SizedBox(height: 20,),
            CommonButton(text: 'Change Password', onPressed: () {  }, color: const Color(0xffffecf0),),
          ],
        ),
      ),
    );
  }
}
