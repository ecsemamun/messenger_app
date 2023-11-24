import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              position: PopupMenuPosition.under,
              icon: Icon(CupertinoIcons.add_circled),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: "New Chat",
                    child: ListTile(
                      leading: Icon(CupertinoIcons.person_2_fill),
                      title: Text(
                        "New Chat",
                        maxLines: 1,
                      ),
                      onTap: () =>
                          ZIMKit().showDefaultNewGroupChatDialog(context),
                    ),
                  ),
                ];
              })
        ],
      ),
      body: ZIMKitConversationListView(
        onPressed: (context, conversation, defaultAction) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ZIMKitMessageListPage(
              conversationID: conversation.id,
              conversationType: conversation.type,
            );
          }));
        },
      ),
    );
  }
}
