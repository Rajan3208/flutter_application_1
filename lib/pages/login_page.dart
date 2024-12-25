import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Widget
            Image.asset(
              "assets/images/image_for_app.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            // Welcome Text
            SizedBox(height: 20), // Adds spacing
            Text(
              "Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Subtitle Text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "Sign in to continue",
                style: TextStyle(fontSize: 18),
              ),
            ),
            // Add spacing for bottom alignment if needed
            SizedBox(height: 20),
            // Input Fields
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    labelText: "Email",
                  ),
                ),
                SizedBox(height: 16), // Adds spacing between fields
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 16.0), // Adds spacing
                ElevatedButton(
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  ),
                  onPressed: () {
                    // Add login logic here
                    print("Hi Rajan");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
