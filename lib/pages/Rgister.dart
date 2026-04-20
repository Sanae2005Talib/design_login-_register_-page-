import 'package:flutter/material.dart';
import 'package:task_flow2/pages/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(148, 65, 153, 241),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 40.0),
                   Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Entrer Name",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(135, 255, 255, 255),
                      ),
                      suffixIcon: Icon(Icons.person, color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 20.0),
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Entrer Email",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(135, 255, 255, 255),
                      ),
                      suffixIcon: Icon(Icons.email, color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 20.0),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Entrer Password",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(135, 255, 255, 255),
                      ),
                      suffixIcon: Icon(Icons.password, color: Colors.white),
                    ),
                  ),
                   SizedBox(height: 20.0),
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Entrer Password",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(135, 255, 255, 255),
                      ),
                      suffixIcon: Icon(Icons.password, color: Colors.white),
                    ),
                  ), 
                  
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 170,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xff2b23ff),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                    "Already have an account ?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                    },
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
