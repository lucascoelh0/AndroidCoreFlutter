import 'package:android_core_flutter/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:android_core_flutter/strings.dart';

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
              children: <Widget>[
                const SizedBox(height: 40),
                const TextField(
                  decoration: InputDecoration(
                    hintText: Strings.email,
                  ),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: Strings.password,
                  ),
                ),
                const SizedBox(height: 80),
                ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: Colors.red,
                  ),
                  child: Text(
                    Strings.login.toUpperCase(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: <Widget>[
                      const Expanded(child: Divider()),
                      Text(Strings.or.toUpperCase()),
                      const Expanded(child: Divider())
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => {
                      goToScreen(
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

  void goToScreen(BuildContext context, Widget screen) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
