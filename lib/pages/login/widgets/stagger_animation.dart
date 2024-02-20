import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({super.key, required this.controller})
      : buttonSqueeze = Tween<double>(
          begin: 320,
          end: 60,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0, 0.15),
          ),
        );

  final Animation<double> buttonSqueeze;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _buildAnimation,
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: InkWell(
        onTap: () {
          controller.forward();
        },
        child: Container(
            width: buttonSqueeze.value,
            height: 60,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(247, 64, 106, 1.0),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: _buildInside(context)),
      ),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (buttonSqueeze.value > 65) {
      return const Text(
        'Entrar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      );
    } else {
      return const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1.0,
      );
    }
  }
}
