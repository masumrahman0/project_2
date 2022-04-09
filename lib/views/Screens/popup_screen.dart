import 'package:flutter/material.dart';

class PopupScreen extends StatelessWidget {
  const PopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Container(
            height: 448,
            width: 332,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/inbox.png"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Check your Inbox!",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "An email has been sent to you. \nClick the link to reset your \npassword.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/tipscreen');
                    },
                    child: Text(
                      "CHECK MAIL",
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
                ),
              ],
            ),
          ),
        ));
  }
}
