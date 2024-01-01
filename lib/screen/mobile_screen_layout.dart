import 'package:flutter/material.dart';
import 'package:whatsup_ui_prectice/utils/colors.dart';
import 'package:whatsup_ui_prectice/widgets/contacts_List.dart';

class MobileLayoutScreen extends StatelessWidget {
  const MobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: tabColor,
            title: Text(
              'WhatsApp',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.camera_alt, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
                  indicatorColor: Colors.white,
                   indicatorWeight: 4,
                   labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(
                fontWeight: FontWeight.bold,),
                tabs:[
                  Icon(Icons.people_alt),
                  Tab(text: 'Chats'),
                  Tab(text: 'Updates'),
                  Tab(text: 'Calls'),

                ]
            ),

          ),
          body: ContactsList(),
        ));
  }
}
