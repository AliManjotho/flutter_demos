import 'package:flutter/material.dart';

class SnackbarDemo2 extends StatelessWidget {
  SnackbarDemo2({Key? key}) : super(key: key);

  var scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar Demo 2'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(20.0),
                elevation: 0.0,
                backgroundColor: Colors.green,
                dismissDirection: DismissDirection.horizontal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                content: Container(
                  child: Row(
                    children: [
                      Icon(Icons.person_add_alt, color: Colors.white),
                      SizedBox(width: 10),
                      Text('New contact added!'),
                    ],
                  ),
                ),
                action: SnackBarAction(
                  onPressed: () {},
                  label: 'Undo',
                  textColor: Colors.white,
                ),
              );
              scaffoldMessengerKey.currentState!.showSnackBar(snackbar);
            },
            child: Text('Show'),
          ),
        ),
      ),
    );
  }
}
