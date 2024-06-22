import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts package (if using Poppins font)

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Text field controllers for registration fields
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center elements vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center elements horizontally
          children: <Widget>[
            // Centered Registration heading with Poppins font (optional)
            Center(
              child: Text(
                'Register',
                style: GoogleFonts.poppins(
                  // Use GoogleFonts.poppins if desired
                  textStyle:
                      const TextStyle(fontSize: 24.0), // Adjust font size
                ),
              ),
            ),
            const SizedBox(height: 20.0), // Adjust spacing as needed

            // Name text field
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                icon: const Padding(
                  padding: EdgeInsets.only(right: 10.0), // Adjust padding
                  child: Icon(Icons.person),
                ),
                contentPadding: const EdgeInsets.fromLTRB(
                    12.0, 10.0, 0.0, 10.0), // Adjust padding for text
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Colors.deepPurple, // Adjust color based on theme
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color:
                        Colors.deepPurpleAccent, // Adjust color based on theme
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Email text field
            TextField(
              controller: _emailController,
              keyboardType:
                  TextInputType.emailAddress, // Set keyboard type for email
              decoration: InputDecoration(
                labelText: 'Email',
                icon: const Padding(
                  padding: EdgeInsets.only(right: 10.0), // Adjust padding
                  child: Icon(Icons.email),
                ),
                contentPadding: const EdgeInsets.fromLTRB(
                    12.0, 10.0, 0.0, 10.0), // Adjust padding for text
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Colors.deepPurple, // Adjust color based on theme
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color:
                        Colors.deepPurpleAccent, // Adjust color based on theme
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
                contentPadding: const EdgeInsets.fromLTRB(
                    12.0, 10.0, 0.0, 10.0), // Adjust padding for text
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Colors.deepPurple, // Adjust color based on theme
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: const BorderSide(
                    color:
                        Colors.deepPurpleAccent, // Adjust color based on theme
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Register button
            ElevatedButton(
              onPressed: () {
                // Handle registration logic here
                print("Registering....");
              },
              child: Text(
                'Register',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
