import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white30,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/loginscreen');
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.green,
        ),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/image.png',
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFFF343B42),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter the email address associated with \nyour account to recover password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFF343B42),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Email Address"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
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
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/popupscreen');
                },
                child: Text(
                  "RECOVER PASSWORD",
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
            ],
          ),
        ),
      ),
    );
  }
}
