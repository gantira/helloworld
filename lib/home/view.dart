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
        backgroundColor: Colors.white,
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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Hallo..',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: <Widget>[
                    MenuIcon(
                      icon: Icons.hotel,
                      iconColor: Colors.red,
                      label: 'Hotel',
                    ),
                    MenuIcon(
                      icon: Icons.flight,
                      iconColor: Colors.green,
                      label: 'Pesawat',
                    ),
                    MenuIcon(
                      icon: Icons.train,
                      iconColor: Colors.purple,
                      label: 'KAI',
                    ),
                    MenuIcon(
                      icon: Icons.satellite,
                      iconColor: Colors.indigo,
                      label: 'Liburan',
                    ),
                    MenuIcon(
                      icon: Icons.card_giftcard,
                      iconColor: Colors.orange,
                      label: 'Vouchers',
                    ),
                    MenuIcon(
                      icon: Icons.trip_origin,
                      iconColor: Colors.pink,
                      label: 'Point',
                    ),
                    MenuIcon(
                      icon: Icons.satellite,
                      iconColor: Colors.indigo,
                      label: 'Account',
                    ),
                    MenuIcon(
                      icon: Icons.not_listed_location,
                      iconColor: Colors.blue,
                      label: 'Lainnya',
                    ),
                  ],
                )
              ]),
            )
          ],
        ));
  }
}

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;

  MenuIcon({this.icon, this.iconColor, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: iconColor.withOpacity(.2),
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(label)
        ],
      ),
    );
  }
}
