import 'package:flutter/material.dart';

import 'appdrawer_demo.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo,
      child: ListView(
        children: [
          InkWell(
            onTap: () {},
            child: DrawerHeader(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(color: Colors.indigo.shade400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage:
                        AssetImage('assets/images/drawer/profile.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bill Gates',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'bill.gates@hotmail.com',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
            child: ListTile(
              title: Text('Profile'),
              textColor: Colors.white,
              leading: Icon(Icons.account_circle),
              iconColor: Colors.white,
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WalletScreen(),
                  ));
            },
            child: ListTile(
              title: Text('Wallet Screen'),
              textColor: Colors.white,
              leading: Icon(Icons.wallet),
              iconColor: Colors.white,
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentMethodsScreen(),
                  ));
            },
            child: ListTile(
              title: Text('Payment Methods'),
              textColor: Colors.white,
              leading: Icon(Icons.payment),
              iconColor: Colors.white,
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          Divider(color: Colors.white),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ));
            },
            child: ListTile(
              title: Text('Settings'),
              textColor: Colors.white,
              leading: Icon(Icons.settings),
              iconColor: Colors.white,
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Logout'),
              textColor: Colors.white,
              leading: Icon(Icons.logout_outlined),
              iconColor: Colors.white,
              trailing: Icon(Icons.arrow_right),
            ),
          ),
        ],
      ),
    );
  }
}
