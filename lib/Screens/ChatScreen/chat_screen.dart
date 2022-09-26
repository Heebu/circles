import 'package:circles/Screens/ChatScreen/settings.dart';
import 'package:circles/Widgets/colors.dart';
import 'package:circles/Widgets/text.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
            collapsedHeight: 200,
            toolbarHeight: 200,
            elevation: 20,
            stretch: true,
            centerTitle: true,
            title: Header1Text(
              text: ' ${AppColor.purpleCircle}Circles',
            ),
            floating: true,
            snap: true,
            bottom: AppBar(
              title: Row(
                children: [
                  Text('Chats'),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.no_encryption_gmailerrorred_sharp),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatSettings(),
                        ),
                      );
                    },
                    icon: Icon(Icons.settings),
                  ),
                ],
              ),
              backgroundColor: Colors.purpleAccent,
            ),
            expandedHeight: 100),
        SliverToBoxAdapter(
            child: Container(
          padding: EdgeInsets.only(bottom: 30),
          height: 550,
          child: ListView.builder(
            itemCount: 21,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          child: Center(
                            child: Icon(Icons.person_rounded),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Adedeji Idris',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'How Far Guy',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              TimeOfDay.now().format(context).toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.sentiment_dissatisfied)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )),
      ],
    ));
  }
}
