import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ChooseFood/MainChoosefood.dart';
import 'package:flutter_application_1/Foodmenu.dart/Menu.dart';
import 'package:flutter_application_1/calculators/Homescreencal.dart';
import 'package:flutter_application_1/catorylist.dart';
import 'package:flutter_application_1/countnum.dart';
import 'package:flutter_application_1/login_page/login_page.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 135, 120),
      appBar: AppBar(
        
        centerTitle: true,
        title: Text(
  'GTN SHOP',

),
actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.logout_outlined,
        color: Colors.white,
      ),
      onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                });
              },
    )
  ],
        backgroundColor: Color.fromARGB(255, 140, 44, 243),
      ),
      body :  Center(
        child: Container(
          
           child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
               width: 200.0,
                  height: 100.0,
              child: ElevatedButton(
        
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CountNum()));
                },
                child: const Text('นับเลข'),
              ),
            ),
            SizedBox(height: 20,),
            
            SizedBox(
               width: 200.0,
                  height: 100.0,
              child: ElevatedButton(
                
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage()));
                },
                child: const Text('เครื่องคิดเลข'),
              ),
            ),
            SizedBox(
                  height: 20,
                ),
            SizedBox(
               width: 200.0,
                  height: 100.0,
              child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Menu()));
                    },
                    child: const Text('เมนูอาหาร'),
                  ),
            ),
            SizedBox(
                  height: 20,
                ),
                SizedBox(
                   width: 200.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseFood()));
                    },
                    child: const Text('เลือกเมนูอาหาร'),
                  ),
                ),
          ],
        ),
    ),
      ));
  }
}
    
  
    
    
    
    
    
  

