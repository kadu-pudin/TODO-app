import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/logo.png',
                height: 200,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Nada é Impossível',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'A gente tá sempre lá para quem cria. Para melhorar performances. Fazer diferente. Lembrando sempre do nosso impacto no planeta.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Comprar agora',
                        style: TextStyle(
                            color: Colors.grey[300],
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
