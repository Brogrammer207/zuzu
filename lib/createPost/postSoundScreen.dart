import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/widgets/apptheme.dart';

class PostSoundScreen extends StatefulWidget {
  const PostSoundScreen({super.key});

  @override
  State<PostSoundScreen> createState() => _PostSoundScreenState();
}

class _PostSoundScreenState extends State<PostSoundScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.cancel_outlined),
          title: const Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Text('Sound'), Icon(Icons.keyboard_arrow_down_outlined)],
            ),
          ),
          actions: const [
            Icon(Icons.more_horiz),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
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
                  suffixIcon: const Icon(Icons.more_horiz, color: AppTheme.primaryColor),
                ),
              ),
            ),
            const SizedBox(height: 10), // Add some space between TextFormField and TabBar
            const TabBar(
              indicatorColor: AppTheme.primaryColor,
              labelColor: AppTheme.primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: 'Discover'),
                Tab(text: 'Favorites'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                      itemCount: 15,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            height: 70,
                            width: 60,
                            decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                borderRadius: BorderRadius.circular(11),
                                image: const DecorationImage(
                                    image: AssetImage(
                                  'assets/images/girl.png',
                                ))),
                          ),
                          title: const Text(
                            'Side to Side',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                          subtitle: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Airand andesd',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                              ),
                              Text(
                                '01:00',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                              ),
                            ],
                          ),
                          trailing: const Text(
                            '938.6k',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
