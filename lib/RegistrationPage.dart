import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/register.png"),fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body:  Stack(
          children: [
            Container(
                padding: const EdgeInsets.only(left: 35,top: 40),
                child: const Text('Create\nAccount',style: TextStyle(fontSize: 35,color: CupertinoColors.white),)),
           SingleChildScrollView(
             child: Container(
               padding: EdgeInsets.only(
                 top: MediaQuery.of(context).size.height*0.28,
                 right: 35,
                 left: 35,
               ),
               child: Column(
                 children: [
                   TextField(
                     decoration: InputDecoration(
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color: CupertinoColors.black)
                       ),
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: const BorderSide(color: CupertinoColors.white)
                         ),
                         hintText: 'Name:',
                         hintStyle: const TextStyle(color: Colors.white),
                         border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                       )
                     ),
                   ),
                   const SizedBox(height: 30),
                   TextField(
                     decoration: InputDecoration(
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color: Colors.black)
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color: Colors.white),
                       ),
                       hintText: 'Email:',
                       hintStyle: const TextStyle(color: Colors.white),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                       )
                     ),
                   ),
                   const SizedBox(height: 30),
                   TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color: Colors.white),
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color: Colors.white),
                       ),
                       hintText: 'Password:',
                       hintStyle: const TextStyle(color: Colors.white),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                     ),
                   ),
                   const SizedBox(
                     height: 40,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       TextButton(onPressed: (){}, child:
                       const Text('Sign in',
                         style:
                         TextStyle(color: Colors.white,fontSize: 25),)),
                       CircleAvatar(
                         radius: 30,
                         backgroundColor: const Color(0xff4c505b),
                         child: IconButton(onPressed: () {},icon: const Icon(
                           Icons.arrow_forward,
                           color: Colors.white,)),
                       )
                     ],
                   ),
                   Row(
                     children: [
                       TextButton(onPressed: (){},
                           child: const Text('Sign Up',
                             style: TextStyle(
                               decoration: TextDecoration.underline,
                               fontSize: 20,
                               color: Colors.white
                             ),))
                     ],
                   ),
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
