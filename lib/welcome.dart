import 'package:flutter/material.dart';
import 'package:flutter_application_1/registrasi.dart';

import 'login.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
        ),
        child: Column(
          children: [
                const Padding(
                  padding: EdgeInsetsDirectional.only(top: 100.0),
                  child: Image(image: AssetImage('assets/images/orang.png')),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text('Welcome To',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                 ),),
                 const Text('KOLNUT',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                 ),),
                 const Text('Menggunakan Al mutakhir untuk mempersonalisasi nutrisi dan meminimalkan biaya bagi penderita kolesterol ',textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                 ),),
                 const SizedBox(height: 30,),
                 GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context) => login()));
                  },
                  child: Container(
                    height: 53,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.yellow, 
                    ),
                      
                    child: const Center(child: Text('Login',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                   ),),),
                   ),
                 ),
                 SizedBox(height: 17),
                  GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context) => RegistrasiScreen()));
                  },
                  child: Container(
                    height: 53,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 94, 94, 94), 
                    ),
                      
                    child: const Center(child: Text('Register',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)
                   ),),),
                   ),
                 ),
                  const Spacer(),
          
                  
              ]
            ),
      ),

    );
      
  }
}