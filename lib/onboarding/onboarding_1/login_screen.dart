import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailConroller = TextEditingController();
  bool isEmailEmpty = true;
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: emailConroller,
                onChanged: (value) {
                  setState(() {
                    isEmailEmpty = value.isEmpty;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter email address here',
                  prefixIcon: Icon(Icons.email_outlined),
                  suffixIcon: isEmailEmpty
                      ? null
                      : IconButton(
                          onPressed: () {
                            emailConroller.clear();
                          },
                          icon: Icon(Icons.close)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: isPasswordHidden,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter password here',
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordHidden = !isPasswordHidden;
                        });
                      },
                      icon: Icon(isPasswordHidden
                          ? Icons.visibility
                          : Icons.visibility_off)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: () {}, child: Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}
