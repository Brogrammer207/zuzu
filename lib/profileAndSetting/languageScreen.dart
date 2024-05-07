import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zuzu/widgets/apptheme.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
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
                'Suggested',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              title: const Text('English(US)'),
              trailing: Radio(
                value: 1,
                groupValue: 1,
                activeColor: AppTheme.primaryColor,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text('English(UK)'),
              trailing: Radio(
                value: 1,
                groupValue: 1,
                activeColor: AppTheme.primaryColor,
                onChanged: (value) {},
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade400,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Language',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context,index){
              return  ListTile(
                title: const Text('English(US)'),
                trailing: Radio(
                  value: 1,
                  groupValue: 1,
                  activeColor: AppTheme.primaryColor,
                  onChanged: (value) {},
                ),
              );
            }),
            ListTile(
              title: const Text('English(US)'),
              trailing: Radio(
                value: 1,
                groupValue: 1,
                activeColor: AppTheme.primaryColor,
                onChanged: (value) {},
              ),
            ),

          ],
        ),
      ),
    );
  }
}
