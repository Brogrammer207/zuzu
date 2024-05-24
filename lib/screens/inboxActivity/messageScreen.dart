import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/apptheme.dart';
import 'videocallScreen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Message'),
          ],
        ),
        actions: [
         Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(onTap: () {}, child: const Icon(Icons.add_circle_outline_outlined)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(onTap: () {}, child: const Icon(Icons.more_horiz)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF979797).withOpacity(0.1),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search product",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.more_horiz),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                'Recently',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                margin: EdgeInsets.only(left: 20),
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          minRadius: 30,
                          maxRadius: 30,
                          backgroundColor: AppTheme.lightColor,
                          backgroundImage: AssetImage('assets/images/girl.png',),
                        ),
                      );

                }),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Message',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: (){
                        Get.to(const VideoCallScreen());
                      },
                        leading: const CircleAvatar(
                            minRadius: 30,
                            maxRadius: 30,
                            backgroundColor: AppTheme.lightColor,
                            backgroundImage: AssetImage('assets/images/girl.png',),
                           ),
                        title: const Text(
                          'Christopher Prajapat',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        subtitle: const Text(
                          '@Christopherprajapat',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                        trailing: Container(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                          decoration:
                          BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(11)),
                          child: const Text(
                            'Find',
                            style: TextStyle(color: Colors.white),
                          ),
                        ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
