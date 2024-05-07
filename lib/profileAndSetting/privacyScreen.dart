import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _toggleValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy'),
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
                'Discoverability',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Private Account'),
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
              leading: const Icon(Icons.email),
              title: const Text('Suggest Account to Other'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Sync contacts & friends'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [ // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Location Services'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [ // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Personalization',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Ads Personalization'),
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
              leading: const Icon(Icons.calendar_month),
              title: const Text('Quick Upload'),
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
              title: const Text('Download Your Data'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Safety',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Downloads'),
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
              leading: const Icon(Icons.calendar_month),
              title: const Text('Comments'),
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
              leading: const Icon(Icons.calendar_month),
              title: const Text('Mentions & Tags'),
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
              leading: const Icon(Icons.calendar_month),
              title: const Text('Following List'),
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
              leading: const Icon(Icons.calendar_month),
              title: const Text('Duet'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
