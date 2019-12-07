import 'package:flutter/material.dart';
import './controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gantira'),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('gantira@gmail.com'),
              accountName: Text('Angga'),
            ),
            ListTile(
              title: Text('Home'),
              leading: CircleAvatar(
                child: Icon(Icons.apps),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/kategori'),
              title: Text('Kategori'),
              leading: CircleAvatar(
                child: Icon(Icons.archive),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Register'),
              leading: CircleAvatar(
                child: Icon(Icons.verified_user),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        
      ),
    );
  }
}
