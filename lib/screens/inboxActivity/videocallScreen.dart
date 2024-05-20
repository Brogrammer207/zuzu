import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/apptheme.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120,),
            CircleAvatar(
              minRadius: 100,
              maxRadius: 100,
              backgroundColor: AppTheme.lightColor,
              backgroundImage: const AssetImage('assets/images/girl.png',),
            ),
            SizedBox(height: 100,),
            Text(
              'Manisha Dain',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
            ),
            Text(
              '07:39 minutes',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
            ),SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  minRadius: 30,
                  maxRadius: 30,
                  backgroundColor: AppTheme.lightColor,
                  backgroundImage: const AssetImage('assets/images/apple.png',),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  minRadius: 30,
                  maxRadius: 30,
                  backgroundColor: AppTheme.lightColor,
                  backgroundImage: const AssetImage('assets/images/apple.png',),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  minRadius: 30,
                  maxRadius: 30,
                  backgroundColor: AppTheme.lightColor,
                  backgroundImage: const AssetImage('assets/images/apple.png',),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
