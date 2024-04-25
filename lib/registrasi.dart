import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class RegistrasiScreen extends StatefulWidget {
  const RegistrasiScreen({super.key});

  @override
  State<RegistrasiScreen> createState() => _RegistrasiScreenState();
}

class _RegistrasiScreenState extends State<RegistrasiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        // tombol kembali di atas sebelah kiri
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Fungsi untuk menangani ketika tombol kembali ditekan
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Let’s Register Your",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 17),
              Text(
                "Account.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 165),
              // Kotak input dengan sudut tumpul
              TextField(
                decoration: InputDecoration(
                  labelText: 'nama',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Kotak input dengan sudut tumpul
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Kotak input password dengan sudut tumpul
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),

              SizedBox(height: 90),
              // Tombol login dengan warna kuning

              // Tombol register dengan teks "Don't have an account? Register"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => login()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              //  SizedBox(height: 2),
              ElevatedButton(
                onPressed: () {
                  // Fungsi untuk menangani ketika tombol login ditekan
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
