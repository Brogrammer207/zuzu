import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageAccountScreen extends StatefulWidget {
  const ManageAccountScreen({super.key});

  @override
  State<ManageAccountScreen> createState() => _ManageAccountScreenState();
}

class _ManageAccountScreenState extends State<ManageAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
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
                'Account Information',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Phone Number'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  Text('+917665096245'),
                  SizedBox(width: 8), // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  Text('+Christopherprajapat207@gmail.com'),
                  SizedBox(width: 8), // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Date of Birth'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  Text('+5/7/1995'),
                  SizedBox(width: 8), // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Account Control',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Switch to Business Account'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Delete Account'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
