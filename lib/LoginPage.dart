import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login.png"),fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: const EdgeInsets.only(top: 130,left: 35),
                child: const Text("Welcome\nBack ",style: TextStyle(fontSize: 35,color: Colors.white),)),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.5,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email:',
                        fillColor: Colors.brown.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password:',
                        fillColor: Colors.brown.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sign in',style: TextStyle(fontSize: 20,
                            color: Color(0xff4c505b),
                            fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(0xff4c505b),
                          child: IconButton(
                              onPressed: (){},
                              color: Colors.white,
                              icon: const Icon(Icons.arrow_forward)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        }, child: const Text('Sign Up',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff4c505b),
                              fontSize: 18),)),
                        TextButton(onPressed: (){},
                            child: const Text('Forgot Password',style:
                            TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff4c505b),
                              fontSize: 18,),))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
