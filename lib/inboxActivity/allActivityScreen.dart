import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuzu/inboxActivity/messageScreen.dart';
import 'package:zuzu/widgets/apptheme.dart';

class AllActivityScreen extends StatefulWidget {
  const AllActivityScreen({Key? key}) : super(key: key);

  @override
  State<AllActivityScreen> createState() => _AllActivityScreenState();
}

class _AllActivityScreenState extends State<AllActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.videocam_outlined, color: AppTheme.primaryColor),
        title: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Christopher'),
              Icon(Icons.keyboard_arrow_down_outlined),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {},
              child: const Icon(Icons.share),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Today',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ),
              ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: (){
                        Get.to(MessageScreen());
                      },
                        leading: const CircleAvatar(
                          minRadius: 30,
                          maxRadius: 30,
                          backgroundColor: AppTheme.lightColor,
                          backgroundImage: AssetImage(
                            'assets/images/girl.png',
                          ),
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
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Yesterday',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: const CircleAvatar(
                          minRadius: 30,
                          maxRadius: 30,
                          backgroundColor: AppTheme.lightColor,
                          backgroundImage: AssetImage(
                            'assets/images/girl.png',
                          ),
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
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'This Week',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: const CircleAvatar(
                          minRadius: 30,
                          maxRadius: 30,
                          backgroundColor: AppTheme.lightColor,
                          backgroundImage: AssetImage(
                            'assets/images/girl.png',
                          ),
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
