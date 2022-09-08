import 'package:android_core_flutter/screens/register_screen.dart';
import 'package:android_core_flutter/screens/restaurants_screen.dart';
import 'package:flutter/material.dart';
import 'package:android_core_flutter/strings.dart';

import '../utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital House Foods'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Column(
              children: const <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: Strings.email,
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: Strings.password,
                  ),
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
                    child: Text(
                      Strings.login.toUpperCase(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 30,
                    ),
                    child: Row(
                      children: <Widget>[
                        const Expanded(
                            child: Divider(
                          thickness: 1,
                        )),
                        Text(Strings.or.toUpperCase()),
                        const Expanded(
                            child: Divider(
                          thickness: 1,
                        ))
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      goToScreen(
                        false,
                        context,
                        const RegisterScreen(),
                      )
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      primary: Colors.grey,
                    ),
                    child: Text(
                      Strings.register.toUpperCase(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
