import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Dashboard",
        home: Scaffold(
            appBar: new AppBar(
              leading: new Icon(Icons.home),
              title: new Center(child: Text("Menu Utama")),
              backgroundColor: Colors.pink[600],
              actions: <Widget>[
                new Icon(Icons.search),
              ],
            ),
            backgroundColor: Colors.pink[100],
            body: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: GridView.count(crossAxisCount: 2, children: <Widget>[
                  MyMenu(
                      title: "Akademik",
                      icon: Icons.account_balance,
                      warna: Colors.brown),
                  MyMenu(
                      title: "Informasi", icon: Icons.info, warna: Colors.blue),
                  MyMenu(
                      title: "Perkuliahan",
                      icon: Icons.school,
                      warna: Colors.orange),
                  MyMenu(
                      title: "Dosen",
                      icon: Icons.person_pin,
                      warna: Colors.red),
                  MyMenu(
                      title: "E-learning",
                      icon: Icons.local_library,
                      warna: Colors.yellow),
                  MyMenu(
                      title: "Perpustakaan",
                      icon: Icons.book,
                      warna: Colors.purple),
                  MyMenu(
                      title: "Lokasi",
                      icon: Icons.add_location_alt,
                      warna: Colors.teal),
                  MyMenu(
                      title: "Tugas",
                      icon: Icons.assignment_outlined,
                      warna: Colors.indigo),
                  MyMenu(
                      title: "Email",
                      icon: Icons.attach_email_rounded,
                      warna: Colors.amberAccent[20]),
                  MyMenu(
                      title: "Profil",
                      icon: Icons.admin_panel_settings_sharp,
                      warna: Colors.lightBlue),
                ]))));
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna});
  final String title;
  final IconData icon;
  final MaterialColor warna;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {},
          splashColor: Colors.pink,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  size: 70.0,
                  color: warna,
                ),
                Text(title, style: new TextStyle(fontSize: 17.0))
              ],
            ),
          ),
        ));
  }
}
