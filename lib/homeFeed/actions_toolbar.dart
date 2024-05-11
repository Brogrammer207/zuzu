import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:share_plus/share_plus.dart';
import 'package:zuzu/homeFeed/tik_tok_icons_icons.dart';
import 'package:zuzu/homeFeed/useThisSoundScreen.dart';

import '../widgets/apptheme.dart';
import 'circle_image_animation.dart';

class ActionsToolbar extends StatelessWidget {
  static const double ActionWidgetSize = 60.0;

  static const double ActionIconSize = 35.0;

  static const double ShareActionIconSize = 25.0;

  static const double ProfileImageSize = 50.0;

  static const double PlusIconSize = 20.0;

  final String numLikes;
  final String numComments;
  final String userPic;

  ActionsToolbar(this.numLikes, this.numComments, this.userPic);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getFollowAction(pictureUrl: userPic),
        _getSocialAction(icon: Icons.heart_broken, title: numLikes, onPressed: () {}),
        _getSocialAction(
            icon: Icons.chat,
            title: numComments,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SingleChildScrollView(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              '24.8K Comments',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey.shade300,
                            ),
                            ListView.builder(
                                itemCount: 4,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return const Column(
                                    children: [
                                      ListTile(
                                        leading: CircleAvatar(
                                            maxRadius: 20,
                                            minRadius: 20,
                                            backgroundImage: AssetImage('assets/images/girl.png')),
                                        title: Text(
                                          'Manish Prajapat',
                                          style:
                                              TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                                        ),
                                        trailing: Icon(
                                          Icons.more_horiz,
                                          color: AppTheme.primaryColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20, right: 20),
                                        child: Text(
                                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
                                          style:
                                              TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Icon(Icons.heart_broken),
                                            Text(
                                              '938',
                                              style: TextStyle(
                                                  fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '3 days ago',
                                              style: TextStyle(
                                                  fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Reply',
                                              style: TextStyle(
                                                  fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  );
                                }),
                          ],
                        )),
                  );
                },
              );
            }),
        _getSocialAction(
            icon: Icons.share,
            title: 'Share',
            isShare: true,
            onPressed: () async {
              log('message');
              await Share.share(
                'Share',
                subject: 'Share',
              );
            }),
        CircleImageAnimation(
          child: _getMusicPlayerAction(userPic),
          onpressed: (){
            Get.to(UseThisSoundScreen());
          },
        )
      ]),
    );
  }

  Widget _getSocialAction({
    required String title,
    required IconData icon,
    bool isShare = false,
    required VoidCallback onPressed,
  }) {
    return Container(
        margin: const EdgeInsets.only(top: 15.0),
        width: 60.0,
        height: 60.0,
        child: GestureDetector(
          onTap: onPressed,
          child: Column(children: [
            Icon(icon, size: isShare ? 25.0 : 35.0, color: Colors.grey[300]),
            Padding(
              padding: EdgeInsets.only(top: isShare ? 5.0 : 5.0),
              child: Text(title,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: isShare ? 14.0 : 14.0)),
            )
          ]),
        ));
  }

  Widget _getFollowAction({required String pictureUrl}) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        width: 60.0,
        height: 60.0,
        child: Stack(children: [_getProfilePicture(pictureUrl), _getPlusIcon()]));
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
      child: Container(
          width: PlusIconSize, // PlusIconSize = 20.0;
          height: PlusIconSize, // PlusIconSize = 20.0;
          decoration:
              BoxDecoration(color: const Color.fromARGB(255, 255, 43, 84), borderRadius: BorderRadius.circular(15.0)),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 20.0,
          )),
    );
  }

  Widget _getProfilePicture(userPic) {
    return Positioned(
        left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
        child: Container(
            padding: const EdgeInsets.all(1.0), // Add 1.0 point padding to create border
            height: ProfileImageSize, // ProfileImageSize = 50.0;
            width: ProfileImageSize, // ProfileImageSize = 50.0;
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
            // import 'package:cached_network_image/cached_network_image.dart'; at the top to use CachedNetworkImage
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10000.0),
                child: CachedNetworkImage(
                  imageUrl: userPic,
                  placeholder: (context, url) => new CircularProgressIndicator(),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ))));
  }

  LinearGradient get musicGradient => LinearGradient(
      colors: [Colors.grey[800]!, Colors.grey[900]!, Colors.grey[900]!, Colors.grey[800]!],
      stops: [0.0, 0.4, 0.6, 1.0],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight);

  Widget _getMusicPlayerAction(userPic) {
    return Container(
        margin: const EdgeInsets.only(top: 10.0),
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Column(children: [
          Container(
              padding: const EdgeInsets.all(11.0),
              height: ProfileImageSize,
              width: ProfileImageSize,
              decoration:
                  BoxDecoration(gradient: musicGradient, borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10000.0),
                  child: CachedNetworkImage(
                    imageUrl: userPic,
                    placeholder: (context, url) => new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ))),
        ]));
  }
}
