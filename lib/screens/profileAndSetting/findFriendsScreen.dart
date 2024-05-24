import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';

class FindFrindsScreen extends StatefulWidget {
  const FindFrindsScreen({super.key});

  @override
  State<FindFrindsScreen> createState() => _FindFrindsScreenState();
}

class _FindFrindsScreenState extends State<FindFrindsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Find Friends'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(onTap: () {}, child: const Icon(Icons.qr_code_scanner_sharp)),
          )
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
                  suffixIcon: const Icon(Icons.more_outlined),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                        )
                    );
                  }),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Suggested Accounts',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
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
