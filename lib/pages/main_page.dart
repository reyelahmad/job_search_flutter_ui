import 'package:flutter/material.dart';
import 'package:job_search_flutter_ui/pages/main_page_proparty/app_bar.dart';
import 'package:job_search_flutter_ui/pages/main_page_proparty/job_profile.dart';
import 'package:job_search_flutter_ui/pages/main_page_proparty/list_menu.dart';
import 'package:job_search_flutter_ui/pages/main_page_proparty/search_option.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.shade300,
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 10, left: 10),
          child: Column(
            children: [
              MyAppBar(),
              SizedBox(
                height: 15,
              ),
              SearchOption(),
              SizedBox(
                height: 15,
              ),
              ListMenu(),
              SizedBox(
                height: 15,
              ),
JobProfile(),
            ],
          ),
        )
      ],
    ));
  }
}
