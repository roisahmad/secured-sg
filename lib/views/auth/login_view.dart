import 'package:flutter/material.dart';
import 'package:secure_sg_app/routes/app_routes.dart';
import '../widgets/background_widget.dart';
import '../widgets/text_input.dart';
import '../widgets/button.dart';
import '../widgets/appbar_widget.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: BackgroundWidget(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      const Text(
                        'Hi, Welcome Back!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 32),
                      TextInput(
                        label: 'E-mail',
                        hint: 'Email',
                        controller: emailController,
                      ),
                      const SizedBox(height: 16),
                      TextInput(
                        label: 'Password',
                        hint: 'Password',
                        obscureText: true,
                        controller: passwordController,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (_) {}),
                              const Text('Remember me'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Button(
                        text: 'LOG IN',
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.home);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.register);
                      },
                      child: Text(
                        'Create now',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFF4e94be),
                          color: const Color(0xFF4e94be),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
