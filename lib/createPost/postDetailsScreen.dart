import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../screens/widgets/apptheme.dart';
import '../screens/widgets/commanButton.dart';


class PostDetailsScreen extends StatefulWidget {
  const PostDetailsScreen({super.key});

  @override
  State<PostDetailsScreen> createState() => _PostDetailsScreenState();
}

class _PostDetailsScreenState extends State<PostDetailsScreen> {
  bool _toggleValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('Post'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(11)),
                    child: const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(11)),
                    child: Image.asset('assets/images/girl.png'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: AppTheme.primaryColor, width: 2)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.tag,
                              color: AppTheme.primaryColor,
                            ),
                            Center(
                                child: Text(
                              'Account',
                              style: TextStyle(color: AppTheme.primaryColor),
                            )),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade400,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Tag People'),
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
              leading: const Icon(Icons.map_outlined),
              title: const Text('Location'),
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
              leading: const Icon(Icons.lock),
              title: const Text('Visible to everyOne'),
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
              leading: const Icon(Icons.chat),
              title: const Text('Allow Comments'),
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
              leading: const Icon(Icons.person),
              title: const Text('Allow Duet'),
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
              leading: const Icon(Icons.switch_access_shortcut),
              title: const Text('Allow Switch'),
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

              leading: const Icon(Icons.more_horiz),
              title: const Text('More Option'),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min, // Set to minimize the width of the row
                children: [
                  // Add some space between the text and icon
                  Icon(Icons.arrow_forward_ios_outlined, size: 20),
                ],
              ),
              onTap: () {},
            ),
            
            const SizedBox(height: 10,),
            const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Automatically share to:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                )),
            const SizedBox(height: 10,),
            const Row(
              children: [
                SizedBox(width: 20,),
                CircleAvatar(
                  minRadius: 30,
                  maxRadius: 30,
                  backgroundImage: AssetImage('assets/images/facebook.png',),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  minRadius: 30,
                  maxRadius: 30,
                  backgroundImage: AssetImage('assets/images/google.png',),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  minRadius: 30,
                  maxRadius: 30,
                  backgroundImage: AssetImage('assets/images/apple.png',),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  minRadius: 30,
                  maxRadius: 30,
                  backgroundImage: AssetImage('assets/images/facebook.png',),
                ),
                SizedBox(width: 10,),

              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.all(15.0).copyWith(bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: CommonButton(
                    text: 'Draft',
                    color: const Color(0x33ff4d67),
                    textColor: AppTheme.primaryColor,
                    onPressed: () {
                      // Add your logic for button press
                    },
                  ),
                ),
                Expanded(
                  child: CommonButton(
                    text: 'post',
                    color: AppTheme.primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                      // Add your logic for button press
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
