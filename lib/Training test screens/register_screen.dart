import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key}) ;
  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen>{

  bool visible = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding : const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text("Register",style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 40,),
            TextFormField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(
                  Icons.mail,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: password,
              obscureText: visible,
              decoration:  InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(
                  Icons.lock,
                ),
                suffixIcon: IconButton(
                  icon:visible==true? const Icon(Icons.remove_red_eye):const Icon(Icons.visibility_off),
                  onPressed: () {
                    visible=! visible;
                    setState(() {
                    });
                  },),
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(onPressed: () async{
                //await ApiProvider().loginUser(email: email.text, password: password.text);

                FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text).then((value) {
                  print(value.user?.email);
                  print(value.user?.uid);
                });
                
              },
                child: const Text("Register",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
              ),),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(onPressed:(){print("register");}, child: const Text("Register Now"))
              ],
            ),
          ],
        ),),
    );
  }
}
