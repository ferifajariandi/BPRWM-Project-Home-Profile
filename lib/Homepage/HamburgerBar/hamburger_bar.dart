import 'package:flutter/material.dart';
import 'package:untitled/Homepage/Berita/hitungkredit.dart';
import 'package:untitled/Homepage/HamburgerBar/people_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: Padding(
          padding: padding,
          child: ListView(
            children: [
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'People',
                icon: Icons.people,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                  text: 'Email',
                  icon: Icons.email,
                  onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                  text: 'Notification',
                  icon: Icons.notifications,
                  onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                  text: 'Update',
                  icon: Icons.update,
    onClicked: () => selectedItem(context, 3),

              ),
              const SizedBox(height: 24,),
              Divider(color: Colors.white70,),
              const SizedBox(height: 16,),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                  text: 'Setting',
                  icon: Icons.settings,
                  onClicked: () => selectedItem(context, 4),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                  text: 'Bantuan',
                  icon: Icons.help,
                  onClicked: () => selectedItem(context, 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {

  final color = Colors.white;
  final hoverColor = Colors.red;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color),),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PeoplePage(),
    ));
    break;
    // case 0:
    //   Navigator.of(context).push(MaterialPageRoute(
    //     builder: (context) => PeoplePage(),
    //   ));
    //   break;
  }
}