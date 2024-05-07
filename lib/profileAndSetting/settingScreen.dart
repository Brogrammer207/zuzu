import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuzu/profileAndSetting/helpCenterScreen.dart';
import 'package:zuzu/profileAndSetting/languageScreen.dart';
import 'package:zuzu/profileAndSetting/manageAccountScreen.dart';
import 'package:zuzu/profileAndSetting/privacyPolicy.dart';
import 'package:zuzu/profileAndSetting/privacyScreen.dart';
import 'package:zuzu/profileAndSetting/qrCodeScreen.dart';
import 'package:zuzu/profileAndSetting/securityScreen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: const Icon(Icons.arrow_back_rounded),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Manage Account'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {
                Get.to(const ManageAccountScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Privacy'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {
                Get.to(const PrivacyScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Secuirty'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {
                Get.to(const SecurityScreen());

              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Qr Code'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {
                Get.to(const QRCodeScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Language'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {
                Get.to(const LanguageScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Dark Mode'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Content Prefrance'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Ads'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Report A problam'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Help Center'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {
                Get.to(const HelpCenterScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Safety Center'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Community Guidelines'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Terms of Services'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('privacy Policy'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {
                Get.to(const PrivacyPolicyScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Logout'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
