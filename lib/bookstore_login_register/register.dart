import 'package:flutter/material.dart';

class BookStoreRegisterScreen extends StatelessWidget {
  const BookStoreRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookStore',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Color(0Xfff9f9f9),
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image(
                  image: AssetImage('assets/images/bookstore/logo4.png'),
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
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
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(fontSize: 20.0),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        style: BorderStyle.solid,
                        color: Colors.black,
                      ),
                    ),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.account_circle),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(fontSize: 20.0),
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
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
                TextField(
                  style: TextStyle(fontSize: 20.0),
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        style: BorderStyle.solid,
                        color: Colors.black,
                      ),
                    ),
                    labelText: 'Confirm Password',
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
                        'Register',
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
                      'Already registered?',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20.0),
                        ))
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
