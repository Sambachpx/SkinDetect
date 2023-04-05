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

              Image.asset(
                "assets/logo-removebg-preview.png",
              ),
              const Text(
                "Bienvenue",
                style: TextStyle(
                  fontSize: 42,
                ),
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
