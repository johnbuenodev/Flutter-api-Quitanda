import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quitanda_app/src/components/custom-text-field.dart';
import 'package:quitanda_app/src/config/custom-colors.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final sizeScreen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor, //Colors.green,
      body: SingleChildScrollView(
        child: SizedBox(
          height: sizeScreen.height,
          width: sizeScreen.width,
          child: Column(
          children: [
            Expanded(
              //Vai expandir o maximo q estiver disponivel para ele dentro da tela
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 40,
                      ),
                      children: [
                        TextSpan(
                          text: 'Green',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'grocer',
                          style: TextStyle(
                            color: CustomColors.customContrastColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                    child: DefaultTextStyle(
                      // Categorias animated
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                      child: AnimatedTextKit(
                        repeatForever:
                            true, // seta q será repetido infinitamente
                        pause: Duration
                            .zero, //Seta q o intervalo de uma animação para outra é zero
                        animatedTexts: [
                          FadeAnimatedText('Frutas'),
                          FadeAnimatedText('Verduras'),
                          FadeAnimatedText('Legumes'),
                          FadeAnimatedText('Carnes'),
                          FadeAnimatedText('Cereais'),
                          FadeAnimatedText('Lacticínios'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //Container ocupará somente o espaço devido para alocar os elementos dentro dele
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                //Todo Container
                //crossAxisAlignment: CrossAxisAlignment.stretch, se precisar volto
                children: [
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     isDense: true,
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(18),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 24,
                  // ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     isDense: true,
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(18),
                  //     ),
                  //   ),
                  // ),

                  //
                  CustomTextField(
                    prefixIcon: Icons.email,
                    label: 'Email',
                    sufixIcon: Icons.email,
                    showPrefix: true,
                  ),
                  CustomTextField(
                    prefixIcon: Icons.lock,
                    label: 'Password',
                    sufixIcon: Icons.visibility,
                    showPrefix: true,
                    showSufix: true,
                    secretField: true,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Entrar",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  //Container(
                  //alignment: Alignment.centerRight,
                  //padding: EdgeInsets.only(right: 0, top: 16, bottom: 16, left: 16),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: CustomColors.customContrastColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90), //deixar mais claro
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90), //deixar mais claro
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        side: BorderSide(
                          width: 2,
                          color: Colors.green,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Criar conta',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  //),
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
