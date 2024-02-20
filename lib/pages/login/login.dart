import 'package:flutter/material.dart';
import 'package:login_animated/generated/assets.dart';
import 'package:login_animated/pages/home/home_page.dart';
import 'package:login_animated/pages/login/widgets/form_container.dart';
import 'package:login_animated/pages/login/widgets/sign_up_button.dart';
import 'package:login_animated/pages/login/widgets/stagger_animation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70, bottom: 32),
                      child: Image.asset(Assets.imagesTickicon,
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const FormContainer(),
                    const SignUpButton(),
                  ],
                ),
                StaggerAnimation(controller: _animationController),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
