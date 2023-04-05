import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'connexion.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: const Text("Accueil"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Bienvenue",
                style: TextStyle(
                  fontSize: 42,
                ),
              ),
              Image.asset(
                "assets/SkinDetect.png",
              ),
              const Text("Cliquez sur le menu",
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(10))
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => const AddAccountPage()
                        )
                    );
                  },
                  child: const Text("Connexion/Inscription")),


            ],
          )
      ),
    );
  }
  
}
