import 'package:flutter/material.dart';

class BookStoreLoginScreen extends StatelessWidget {
  const BookStoreLoginScreen({Key? key}) : super(key: key);

  Widget _createUsernameField() {
    return TextField(
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        hintText: 'Enter your username here',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            style: BorderStyle.solid,
            color: Colors.black,
          ),
        ),
        labelText: 'Username',
        prefixIcon: Icon(Icons.account_circle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookStore',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(bodyText1: TextStyle(fontSize: 20.0)),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image(
                  image: AssetImage('assets/images/bookstore/logo3.png'),
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage('assets/images/bookstore/logo4.png'),
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                _createUsernameField(),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(fontSize: 20.0),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password here',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        style: BorderStyle.solid,
                        color: Colors.black,
                      ),
                    ),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have account?',
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 20.0),
                        ))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image(
                      image: AssetImage('assets/images/bookstore/facebook.png'),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image:
                          AssetImage('assets/images/bookstore/google-plus.png'),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image:
                          AssetImage('assets/images/bookstore/instagram.png'),
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
