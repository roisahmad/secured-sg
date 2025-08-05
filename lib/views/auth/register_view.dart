import 'package:flutter/material.dart';
import '../widgets/background_widget.dart';
import '../widgets/button.dart';
import '../widgets/text_input.dart';
import '../widgets/appbar_widget.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        showBackButton: true,
        onBackTap: () => Navigator.pop(context),
      ),
      body: BackgroundWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 32),
                TextInput(
                  label: 'First Name',
                  hint: '',
                  controller: emailController,
                ),
                const SizedBox(height: 16),
                TextInput(
                  label: 'Last Name',
                  hint: '',
                  controller: emailController,
                ),
                const SizedBox(height: 16),
                TextInput(
                  label: 'E-mail',
                  hint: '',
                  controller: emailController,
                ),
                const SizedBox(height: 16),
                TextInput(
                  label: 'Password',
                  hint: '',
                  obscureText: true,
                  controller: passwordController,
                ),
                const SizedBox(height: 16),
                TextInput(
                  label: 'Confirm Password',
                  hint: '',
                  obscureText: true,
                  controller: passwordController,
                ),
                const SizedBox(height: 32),
                Button(
                  text: 'SUBMIT',
                  onPressed: () {
                    // handle login here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
