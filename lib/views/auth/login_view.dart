import 'package:flutter/material.dart';
import 'package:secure_sg_app/routes/app_routes.dart';
import 'package:secure_sg_app/utils/constants.dart';
import '../widgets/text_input.dart';
import '../widgets/button.dart';
import '../widgets/wave_clipper_widget.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: LiquidTopClipperLayer1(),
              child: Container(height: 240, color: Constants.secondaryColor),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: LiquidTopClipperLayer2(),
              child: Container(height: 160, color: Constants.primaryColor),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: LiquidBottomClipperLayer1(),
              child: Container(height: 172, color: Constants.secondaryColor),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: LiquidBottomClipperLayer2(),
              child: Container(height: 120, color: Constants.primaryColor),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 16),
                          // const Text(
                          //   'Hi, Welcome Back!',
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.w500,
                          //   ),
                          // ),
                          // const SizedBox(height: 8),
                          // const Text(
                          //   'Sign In',
                          //   style: TextStyle(
                          //     fontSize: 26,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Secured',
                                  style: TextStyle(
                                    color: Constants.primaryColor,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'SG',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
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
                              Navigator.pushNamed(
                                context,
                                AppRoutes.mainNavigation,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
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
        ],
      ),
    );
  }
}
