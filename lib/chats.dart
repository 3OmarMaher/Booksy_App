import 'package:booksy/core/constant/constant.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF075E54),
          title: Text(
            'WhatsApp',
            style: Styles.textStyle20.copyWith(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: const ChatList(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF25D366),
          child: const Icon(Icons.message),
          onPressed: () {},
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return const ChatItem();
      },
    );
  }
}

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/appBarLogo.png'),
      ),
      title: const Text('Contact Name'),
      subtitle: const Text('How are you doing?'),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text('11:30 AM'),
          Container(
            width: 25,
            height: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              '2',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
