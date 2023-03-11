import 'package:flutter/material.dart';
import 'package:projet_celec/HomePage.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: AppBar(//title: Text('rebot celec'),
               backgroundColor: Colors.transparent,
                //centerTitle: true,
              bottom: TabBar(tabs: [
                Tab(child: Text(""),

                ),
                Tab(child: Text(""),

                ),
                Tab(child: Text(""),

                                ),
                Tab(child: Text(""),

                ),

              ],),
            ),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("image/imaga1.jpg"),fit: BoxFit.cover),
            ),
            child: TabBarView(
              children: [
                MyHomePage(),
                Container(
                  child: Text("page 2"),
                ),
                Container(
                  child: Text("page 3"),
                ),
                Container(
                  child: Text("page 3"),
                ),
              ],
            ),
          ),
        ));
  }
}
