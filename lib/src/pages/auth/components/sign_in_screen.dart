import 'package:flutter/material.dart';
import 'package:getx_redemption/src/pages/auth/components/custom_text_field.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:getx_redemption/src/pages/auth/components/sign_up_screen.dart';
import 'package:getx_redemption/src/models/base/base_screen.dart';
import 'package:getx_redemption/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded( 
                  child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Nome do App
                      Text.rich(
                          TextSpan(style: const TextStyle(fontSize: 50), children: [
                        const TextSpan(
                            text: "Lit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "Fruit",
                            style: TextStyle(
                                color: CustomColors.customContrastColor,
                                fontWeight: FontWeight.bold)),
                      ])),

                      // Categorias
                      SizedBox(
                        height: 30,
                        child: DefaultTextStyle(
                          style: const TextStyle(fontSize: 25),
                          child: AnimatedTextKit(
                            pause: Duration.zero,
                            animatedTexts: [
                              FadeAnimatedText("Frutas"),
                              FadeAnimatedText("Verduras"),
                              FadeAnimatedText("Legumes"),
                              FadeAnimatedText("Carnes"),
                              FadeAnimatedText("Cereais"),
                              FadeAnimatedText("Laticíneos"),
                            ],
                            repeatForever: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),

              // Login / Criar conta
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Email
                    CustomTextField(
                      icon: Icons.email,
                      label: "Email",
                    ),

                    // Senha
                    CustomTextField(
                      icon: Icons.lock,
                      label: "Senha",
                      isSecret: true,
                    ),

                    // Entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18))),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                                return const BaseScreen();
                              },)
                            );
                          },
                          child: const Text(
                            "Entrar",
                            style: TextStyle(fontSize: 18),
                          )),
                    ),

                    // Esqueceu a senha?
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Esqueceu a senha?",
                                style: TextStyle(color: CustomColors.customContrastColor))),
                      ),
                    ),

                    // Linhas e Ou
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: const [
                          Expanded(
                              child: Divider(
                            thickness: 2,
                            color: Colors.grey,
                          )),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text("Ou"),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 2,
                            color: Colors.grey,
                          ))
                        ],
                      ),
                    ),

                    // Criar conta
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            side:
                                const BorderSide(width: 3, color: Colors.green),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: 
                                (c){
                                  return SignUpScreen();
                                }
                              )
                            );
                          },
                          child: const Text(
                            "Criar conta",
                            style: TextStyle(fontSize: 18),
                          )),
                    )
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
