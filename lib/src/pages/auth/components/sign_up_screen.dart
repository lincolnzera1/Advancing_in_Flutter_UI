import 'package:flutter/material.dart';
import 'package:getx_redemption/src/pages/auth/components/custom_text_field.dart';
import 'package:getx_redemption/src/config/custom_colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: "###.###.###-##",
    filter: {"#": RegExp(r'[0-9]')}
  );

  final celphoneFormatter = MaskTextInputFormatter(
    mask: "(##) #####-####"
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      child: Container(
                    child: const Center(
                      child: Text(
                        "Cadastro, aqui",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  )),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomTextField(icon: Icons.email, label: "Email"),
                          CustomTextField(
                              icon: Icons.lock, label: "Senha", isSecret: true),
                          CustomTextField(icon: Icons.person, label: "Nome"),
                          CustomTextField(icon: Icons.phone, label: "Celular", inputFormatters: [celphoneFormatter],),
                          CustomTextField(icon: Icons.copy, label: "CPF", inputFormatters: [cpfFormatter],),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18))),
                                onPressed: () {},
                                child: const Text(
                                  "Cadastrar usuário",
                                  style: TextStyle(fontSize: 18),
                                )),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 10,
                left: 10,
                child: SafeArea(
                    child: IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
