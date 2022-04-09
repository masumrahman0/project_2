import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/image.png',
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFFF343B42),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter your details to continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFF343B42),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Form(
                      key: _formkey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email Address'),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter Your Email",
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Email Can't be empty";
                              } else if (val.length > 28) {
                                return "can't be more than 28";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Password"),
                          TextFormField(
                            obscureText: isHiddenPassword,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter Your Password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: InkWell(
                                onTap: _togglepasswordview,
                                child: Icon(Icons.visibility),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Email Can't be empty";
                              } else if (val.length < 8) {
                                return "can't be less than 8";
                              } else {
                                return null;
                              }
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/forgotpassword');
                                  },
                                  child: Text("Forgot Password?"))
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/dashboardscreen');
                                },
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                    Size(307, 61),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFF62BB46),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Need an Account? Try Sutraq"),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                child: Image.asset(
                                    "assets/images/fingerprint.png"),
                                    
                              ),
                              SizedBox(height: 10,),
                              Text("Tap to use fingerprint",style: TextStyle(color: Colors.green),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglepasswordview() {
    // if (isHiddenPassword == true){
    //   isHiddenPassword = false;
    // }else{
    //   isHiddenPassword = true;
    // }
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
