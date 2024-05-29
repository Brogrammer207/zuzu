import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/apptheme.dart';
import '../../widgets/commanButton.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('Report'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Select A Reason',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListView.builder(
              itemCount: 15,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context,index){
                 return Row(
                   children: [
                     Radio(value: 1, groupValue: 1,
                         activeColor: const Color(0xffff6178),
                         onChanged: (value){}),
                     const SizedBox(width: 5,),
                     const Text(
                       'Select A Reason',
                       style: TextStyle(color: Colors.black),
                     ),
                   ],
                 );
            })
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
                    text: 'Cancel',
                    textColor: AppTheme.primaryColor,
                    color: const Color(0xffffedf0),
                    onPressed: () {
                      // Add your logic for button press
                    },
                  ),
                ),
                Expanded(
                  child: CommonButton(
                    text: 'Submit',
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
