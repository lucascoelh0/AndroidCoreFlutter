import 'package:android_core_flutter/screens/restaurants_screen.dart';
import 'package:android_core_flutter/strings.dart';
import 'package:android_core_flutter/utils.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: const <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: Strings.name),
                ),
                TextField(
                  decoration: InputDecoration(hintText: Strings.email),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: Strings.password),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: Strings.repeatPassword),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      goToScreen(true, context, const RestaurantsScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      primary: Colors.red,
                    ),
                    child: Text(Strings.register.toUpperCase()),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
