import 'package:flutter/material.dart';

import '../screen/mobile_chat_screen.dart';
import '../utils/information_list.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: information.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MobileChatScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  title: Text(
                    information[index]['name'].toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      information[index]['message'].toString(),
                      style: const TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      information[index]['profilePic'].toString(),
                    ),
                    radius: 30,
                  ),
                   trailing: Text(
                information[index]['time'].toString(),
                style: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
                ),

                ),

                ),

              ),
            );
          }),
    );
  }
}
