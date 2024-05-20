import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/apptheme.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  maxRadius: 70,
                  minRadius: 70,
                  backgroundColor: Colors.grey.shade400,
                  child: const Icon(
                    Icons.person,
                    size: 70,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 10,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppTheme.primaryColor,
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                height: 1,
                color: AppTheme.secondaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'About You',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Name'),
                    trailing: const Row(
                      mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                      children: [
                        Text('Manish Prajapat'),
                        SizedBox(width: 8), // Add some space between the text and icon
                        Icon(Icons.arrow_forward_ios_outlined, size: 20),
                      ],
                    ),
                    onTap: () {},
                  );
                }),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                height: 1,
                color: AppTheme.secondaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Social',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Name'),
                    trailing: const Row(
                      mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                      children: [
                        Text('Manish Prajapat'),
                        SizedBox(width: 8), // Add some space between the text and icon
                        Icon(Icons.arrow_forward_ios_outlined, size: 20),
                      ],
                    ),
                    onTap: () {},
                  );
                }),
          ],
        ),
      ),
    );
  }
}
