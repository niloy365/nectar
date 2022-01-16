import 'package:flutter/material.dart';
import 'package:nectar/screens/location.dart';
import 'package:nectar/screens/signup.dart';

class Login extends StatefulWidget {
  static const String path = "Login";
  int value = 1;

  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _value;
  bool ishiddenPassword = true;
  bool isDropDownButton = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordControlller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Location.path);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 50,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/gajor.png")),
              const Text(
                "Login",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              const Text("Enter your emails and password",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff7C7C7C))), //fontWeight: FontWeight.w600,
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "loganpaul@gmail.com",
                  hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              TextField(
                obscureText: ishiddenPassword,
                controller: passwordControlller,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  suffixIcon: InkWell(
                    // onTap: _togglePasswordView,
                    child: Icon(ishiddenPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {}, child: Text("Forgot Password?")),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Log In",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff53B175),
                    onPrimary: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minimumSize: const Size(364, 67), //////// HERE
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUp.path);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Color(0xff53B175)),
                      ))
                ],
              ),
              Container(
                width: 134,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: ElevatedButton(
                    onPressed: () {},
                    child: null,
                    style: ElevatedButton.styleFrom(primary: Colors.grey)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
