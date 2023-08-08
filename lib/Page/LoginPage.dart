import 'package:flutter/material.dart';
import 'package:textingapp/util/register.dart';
import 'package:textingapp/Page/HomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login Page",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _loginPage();
}

class _loginPage extends State<MyHomePage> {
  final myEmail = TextEditingController();
  final myPass = TextEditingController();
  var email = 'a1a1';
  var pass = '1212';

  @override
  void disporse() {
    myEmail.dispose();
    myPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/BOBUR2.jpg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 50),
                ),
                SizedBox(
                  height: 14,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: myEmail,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(60)),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'email',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  controller: myPass,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.security),
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(60)),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'password',
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  HomePage()),
                    );
                  },
                  child: Text('Forgot your password?'),
                  style:
                      // ButtonStyle(backgroundColor: Colors.transparent),
                      ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent),
                ),
                // Text("Forgot your password?", style: TextStyle(fontSize: 14),),
                SizedBox(height: 2),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ))),
                  onPressed: () {
                    if (email==myEmail.text && pass==myPass.text){
                      print('Successfully');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('Successfully')
                        ),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );

                    }
                    else{
                      print('UnSuccessfully');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('UnSuccessfully')
                        ),
                      );
                    }
                  },
                  child: Text('confirm'),
                ),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const signup()),
                    );
                  },
                  child: Text("Register now"),
                  style:
                      // ButtonStyle(backgroundColor: Colors.transparent),
                      ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent),
                ),
                // Text("Forgot your password?", style: TextStyle(fontSize: 14),),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
    );
  }
}

