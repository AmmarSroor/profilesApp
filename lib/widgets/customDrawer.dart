import 'package:flutter/material.dart';
import 'package:profiles_app/screens/loginScreen.dart';
class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.asset('assets/images/itg.jpg',fit: BoxFit.fill,),
            ),
            ListTile(
              title: Text('View profile',),
            ),
            ListTile(
              title: Text('Edit profile',),
            ),
            ListTile(
              title: Text('Create new account',),
            ),
            ExpansionTile(
              title: Text('Location'),
              textColor: Colors.redAccent,
              iconColor: Colors.redAccent,
              children: [
                ListTile(
                  title: Text('Jabal Al Weibdeh',),
                  //subtitle: Text('0781497808'),
                  leading: Icon(Icons.location_on,color: Colors.red,),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Contact us'),
              textColor: Colors.redAccent,
              iconColor: Colors.redAccent,
              children: [
                ListTile(
                  title: Text('Phone',),
                  subtitle: Text('06-1234567'),
                  leading: Icon(Icons.phone,color: Colors.green,),
                ),
              ],
            ),
            ListTile(
              title: Text('Log out',),

              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacementNamed(
                    LoginScreen.routeName);
              }
            ),
          ],
        ),
      ),
    );
  }
}
