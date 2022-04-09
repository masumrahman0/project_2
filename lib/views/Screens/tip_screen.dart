import 'package:flutter/material.dart';

class TipScreen extends StatelessWidget {
  const TipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF090232),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/idea.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/loginscreen');
                        },
                        child: Text(
                          "GOT IT!",
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
    );
  }
}
