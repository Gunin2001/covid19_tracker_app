import 'package:covid19_tracker_app/Templates/BookAppointmentScreen.dart';
import 'package:covid19_tracker_app/Templates/BookTestScreen.dart';
import 'package:covid19_tracker_app/Templates/ReportCase.dart';
import 'package:covid19_tracker_app/Templates/SearchNewsScreen.dart';
import 'package:covid19_tracker_app/Templates/TrackCasesScreen.dart';
import 'package:flutter/material.dart';

import 'Precautions.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("HomePage"),
        ));
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Book Apt'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookAppointmentScreen()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Book Test'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookTestScreen()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Precautions'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrecautionsScreen()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Report a Case'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReportCaseScreen()),
              )
            },
          ),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Search Covid Info'),
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchNewsScreen()),
                    )
                  }),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Track Cases'),
            onTap: () => { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TrackCasesScreen()),
            )},
          ),
        ],
      ),
    );
  }
}
