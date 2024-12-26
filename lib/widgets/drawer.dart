import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Coder Rajan"),
            accountEmail: Text("m6O9o@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.licdn.com/dms/image/v2/D5603AQFrTJ68s7c8Ow/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1728811076167?e=2147483647&v=beta&t=-j17ujNkL_xsCV7-wAAiY9gpBuDTKimDLxdNsqBPPkQ"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("m6O9o@example.com"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            subtitle: Text("+91 1234567890"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("Add Account"),
            subtitle: Text("Add new account"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}