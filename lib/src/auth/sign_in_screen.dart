import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getx_redemption/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.green,
          )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
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

                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      onPressed: () {},
                      child: const Text(
                        "Entrar",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Esqueceu a senha?",
                            style: TextStyle(color: Colors.red))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
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
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)
                        ),
                        side: const BorderSide(width: 3, color: Colors.green),
                      ),
                      onPressed: () {},
                      child: const Text("Criar conta", style: TextStyle(fontSize: 18),)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
