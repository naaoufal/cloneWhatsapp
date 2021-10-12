import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp clone"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New group"), value: "New group",
              ),
              PopupMenuItem(
                child: Text("New broadcast"), value: "New broadcast",
              ),
              PopupMenuItem(
                child: Text("Whatsapp web"), value: "Whatsapp web",
              ),
              PopupMenuItem(
                child: Text("Started message"), value: "Started message",
              ),
              PopupMenuItem(
                child: Text("Setting"), value: "Setting",
              ),
            ];
          })
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("Camera"),
          Text("Chats"),
          Text("Status"),
          Text("Calls"),
        ],
      ),
    );
  }
}
