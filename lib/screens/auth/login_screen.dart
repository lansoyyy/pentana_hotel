import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pentana_hotel/screens/home_screen.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/button_widget.dart';
import 'package:pentana_hotel/widgets/logo_widget.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';
import 'package:pentana_hotel/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    minRadius: 125,
                    maxRadius: 125,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  LogoWidget(),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 300,
                    width: 400,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFieldWidget(
                          controller: username,
                          label: 'Username',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFieldWidget(
                          showEye: true,
                          isObscure: true,
                          controller: password,
                          label: 'Password',
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ButtonWidget(
                          color: Colors.amber,
                          label: 'Login',
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                          },
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
