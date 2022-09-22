import 'package:flutter/material.dart';

class SnackbarDemo1 extends StatelessWidget {
  SnackbarDemo1({Key? key}) : super(key: key);

  var scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar Demo 1'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: Container(
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.white),
                      SizedBox(width: 10),
                      Text('Contact Deleted!'),
                    ],
                  ),
                ),
                backgroundColor: Colors.red,
                dismissDirection: DismissDirection.horizontal,
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
