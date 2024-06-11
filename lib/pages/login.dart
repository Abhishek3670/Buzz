import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text field controllers for username and password
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PIPBuzz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            // Centered Login heading
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Login',
                style: TextStyle(fontFamily: 'Poppins'),
                  ), // Adjust font size as needed
              ),
            const SizedBox(height: 20.0), // Adjust spacing as needed
            // Username text field with shifted icon
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                icon: const Padding(
                  padding: EdgeInsets.only(right: 10.0), // Adjust padding
                  child: Icon(Icons.person),
                ),
                contentPadding: const EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 10.0), // Adjust padding for text
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Colors.deepPurple, // Adjust color based on theme
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Colors.deepPurpleAccent, // Adjust color based on theme
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Password text field
            TextField(
              controller: _passwordController,
              obscureText: true, // Hide password characters
              decoration: InputDecoration(
                labelText: 'Password',
                icon: const Padding(
                  padding: EdgeInsets.only(right: 10.0), // Adjust padding
                  child: Icon(Icons.lock),
                ),
                contentPadding: const EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 10.0), // Adjust padding for text
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Colors.deepPurple, // Adjust color based on theme
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: const BorderSide(
                    color: Colors.deepPurpleAccent, // Adjust color based on theme
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Login button with width matching text field
            ElevatedButton(
              onPressed: () {
                // Handle login logic (e.g., validate credentials and navigate)
                print('Logging in...');
              },
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50.0)), // Set width
              ),
              child: const Text('Login'),
            ),
             // Forgot password button 
            TextButton(
              onPressed: () {
                // Handle forgot password logic (e.g., navigate to reset page)
                print('Forgot Password?');
              },
              child: const Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}
