import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            forceElevated: true,
            // pinned: true,
            leading: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Budget App"),
              centerTitle: true,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                SliverGrid.count(crossAxisCount: 10);
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.greenAccent),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
