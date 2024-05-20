import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import 'searchUsersScreen.dart';

class FollowersScreen extends StatefulWidget {
  const FollowersScreen({super.key});

  @override
  State<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends State<FollowersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Jenny_wislton'),
          leading: const Icon(Icons.arrow_back),
          actions: [
            GestureDetector(
              onTap: (){
                Get.to(const SearchTopUsers());
              },
                child: Icon(Icons.search)),
            SizedBox(
              width: 10,
            )
          ],
          bottom: const TabBar(
            indicatorColor: AppTheme.primaryColor,
            labelColor: AppTheme.primaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: 'Followers'),
              Tab(text: 'Following'),
              Tab(text: 'Suggested'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                          minRadius: 30,
                          maxRadius: 30,
                          backgroundColor: AppTheme.lightColor,
                          child: Image.asset(
                            'assets/images/apple.png',
                            height: 20,
                            width: 20,
                          )),
                      title: const Text(
                        'Manish Prajapat',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      subtitle: const Text(
                        '@manishprajapat',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomDialog();
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                          decoration:
                              BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(25)),
                          child: const Text(
                            'Follow',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ));
                }),
            ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                          minRadius: 30,
                          maxRadius: 30,
                          backgroundColor: AppTheme.lightColor,
                          child: Image.asset(
                            'assets/images/apple.png',
                            height: 20,
                            width: 20,
                          )),
                      title: const Text(
                        'Manish Prajapat',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      subtitle: const Text(
                        '@manishprajapat',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      trailing: Container(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                        decoration:
                            BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(25)),
                        child: const Text(
                          'Follow',
                          style: TextStyle(color: Colors.white),
                        ),
                      ));
                }),
            ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                          minRadius: 30,
                          maxRadius: 30,
                          backgroundColor: AppTheme.lightColor,
                          child: Image.asset(
                            'assets/images/apple.png',
                            height: 20,
                            width: 20,
                          )),
                      title: const Text(
                        'Manish Prajapat',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      subtitle: const Text(
                        '@manishprajapat',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      trailing: Container(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                        decoration:
                            BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(25)),
                        child: const Text(
                          'Follow',
                          style: TextStyle(color: Colors.white),
                        ),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const CircleAvatar(
                maxRadius: 60,
                minRadius: 60,
                backgroundColor: AppTheme.primaryColor,
                backgroundImage: AssetImage(
                  'assets/images/first.png',
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                '27 M Totel Likes!',
                style: TextStyle(
                  fontSize: 20,
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Your account is ready to use. you will be redirected to the homepage in a few second',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              CommonButton(text: 'Ok', onPressed: () {}, color: AppTheme.primaryColor, textColor: Colors.white),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
