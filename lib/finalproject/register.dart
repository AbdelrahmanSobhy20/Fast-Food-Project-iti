import 'package:firebase_auth/firebase_auth.dart';
import 'package:fisrtapp/finalproject/login.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class RegisterRes extends StatefulWidget {
  const RegisterRes({Key? key}) : super(key: key);

  @override
  State<RegisterRes> createState() => _RegisterResState();
}

class _RegisterResState extends State<RegisterRes> {
  bool visible = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover)),
          child: Container(
              margin: const EdgeInsets.fromLTRB(30, 100, 30, 30),
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: const Image(
                        image: AssetImage("assets/images/logo1.png"),
                        height: 200,
                        width: 200,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.cyan[50],
                      ),
                      child: TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.cyan,
                                width: 2,
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.cyan,
                              width: 2,
                            ),
                          ),
                          fillColor: Colors.cyan,
                          focusColor: Colors.cyan,
                          hoverColor: Colors.cyan,
                          labelText: "Email",
                          labelStyle: const TextStyle(
                            color: Colors.cyan,
                          ),
                          prefixIcon: const Icon(
                            Icons.mail,
                            color: Colors.cyan,
                            size: 30,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.cyan,
                                width: 5,
                              )),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan[50],
                    ),
                    child: TextFormField(
                      controller: password,
                      obscureText: visible,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.cyan,
                              width: 2,
                            )),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.cyan,
                            width: 2,
                          ),
                        ),
                        fillColor: Colors.cyan,
                        suffixIconColor: Colors.cyan,
                        labelText: "Password",
                        labelStyle: const TextStyle(
                          color: Colors.cyan,
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.cyan,
                          size: 30,
                        ),
                        suffixIcon: IconButton(
                          icon: visible == true
                              ? const Icon(Icons.remove_red_eye)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            visible = !visible;
                            setState(() {});
                          },
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.cyan,
                              width: 5,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan[50],
                    ),
                    child: TextFormField(
                      controller: password,
                      obscureText: visible,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.cyan,
                              width: 2,
                            )),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.cyan,
                            width: 2,
                          ),
                        ),
                        fillColor: Colors.cyan,
                        suffixIconColor: Colors.cyan,
                        labelText: "Confirm Password",
                        labelStyle: const TextStyle(
                          color: Colors.cyan,
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.cyan,
                          size: 30,
                        ),
                        suffixIcon: IconButton(
                          icon: visible == true
                              ? const Icon(Icons.remove_red_eye)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            visible = !visible;
                            setState(() {});
                          },
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.cyan,
                              width: 5,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.cyan,
                    child: MaterialButton(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeRes()));
                        //await ApiProvider().loginUser(email: email.text, password: password.text);
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email.text, password: password.text)
                            .then((value) {
                          print(value.user?.email);
                          print(value.user?.uid);
                        });
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange.shade500,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(child:TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder:(context)=> const LoginRes()));
                            },
                            child: const Text(
                              "Login Now",
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.cyan,
                              ),
                            )))
                      ],
                    ),
                  ),
                ],
              )))),
    );
  }
}
