import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "Coder Rajan";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>(); // Fixed variable name casing

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) { // Added null check operator
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      // Removed duplicate navigation
      await Navigator.pushNamed(context, '/home');
      setState(() {
        changeButton = false; // Reset button state after navigation
      });
    }
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/image_for_app.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Sign in to continue",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) { // Added null check
                          return "Email cannot be empty";
                        }
                        return null; // Added return null for valid case
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) { // Added null check
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be at least 6";
                        }
                        return null; // Added return null for valid case
                      },
                    ),
                    SizedBox(height: 16),
                    Material(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context), // Fixed function call syntax
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 40,
                          width: changeButton ? 50 : 150,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}