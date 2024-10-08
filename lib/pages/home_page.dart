import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp_clone/pages/call_page.dart';
import 'package:flutter_codigo_whatsapp_clone/pages/camera_page.dart';
import 'package:flutter_codigo_whatsapp_clone/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).primaryColor,
          indicatorWeight: 3.5,
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.white54,
          tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text(
                'CHATS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'STATUS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'CALLS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        title: Text(
          'Whatsapp',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Theme.of(context).primaryColor,
        ),
        shape: CircleBorder(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(),
          ChatPage(),
          Center(child: Text('STATUS')),
          CallPage(),
        ],
      ),
    );
  }
}
