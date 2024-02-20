import 'package:flutter/material.dart';
import 'package:login_animated/pages/login/widgets/input_field.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Form(
        child: Column(
          children: [
            InputField(
              hint: 'Usuário',
              obscure: false,
              icon: Icons.person_outline,
            ),
            InputField(
              hint: 'Senha',
              obscure: true,
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
