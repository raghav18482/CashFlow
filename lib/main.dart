import 'package:cashflow/loginpage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabsExample(),
    );
  }
}

class TabsExample extends StatelessWidget {
  const TabsExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Center(child: Text('Details', style:
           TextStyle( color: Colors.orange,
          fontSize: 30),)
      ),
      Center(child: Text('Details', style:
      TextStyle( color: Colors.orange,
          fontSize: 30),)
      ),
      Center(child: Text('Details', style:
      TextStyle( color: Colors.orange,
          fontSize: 30),)
      ),
      Center(child: Text('Details', style:
      TextStyle( color: Colors.orange,
          fontSize: 30),)
      ),
      Center(child: Text('Details', style:
      TextStyle( color: Colors.orange,
          fontSize: 30),)
      ),
    ];
    final _kTabs = <Tab>[
      Tab(icon: Icon(Icons.cloud), text: 'Tab1'),
      Tab(icon: Icon(Icons.alarm), text: 'Tab2'),
      Tab(icon: Icon(Icons.forum), text: 'Tab3'),
      Tab(icon: Icon(Icons.forum), text: 'Tab3'),
      Tab(icon: Icon(Icons.forum), text: 'Tab3'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(

//        appBar: AppBar(
//          title: Text('appbar title'),
//          backgroundColor: Colors.cyan,
//          // If `TabController controller` is not provided, then a
//          // DefaultTabController ancestor must be provided instead.
//          // Another way is to use a self-defined controller, c.f. "Bottom tab
//          // bar" example.
//          bottom: TabBar(
//            tabs: _kTabs,
//          ),
//        ),
        body: Builder(
          builder: (BuildContext context) =>Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 20),
            child: Column(
              children: <Widget>[
                TabPageSelector(),
                Expanded(
                  flex: 2,
                    child: TabBarView(
                      children: _kTabPages,
                    )
                ),
                RaisedButton(
                  color: Colors.lightBlueAccent,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                )
              ],
            )
          )
        )
      ),
    );
  }
}

