import 'package:flutter/material.dart';
import 'package:my_app/connexion.dart';

class AddAccountPage2 extends StatefulWidget {
  const AddAccountPage2({Key? key}) : super(key: key);

  @override
  State<AddAccountPage2> createState() => _AddAccountPageState2();
}

class _AddAccountPageState2 extends State<AddAccountPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => AddAccountPage()
                        )
                    );
          },
        ),
        title: const Text('Créer ton compte'),
      ),
      body: Container(
        margin: const EdgeInsets.all(40),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Entrez votre nom',
                  labelText: 'Nom',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Entrez votre prénom',
                  labelText: 'Prénom',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Entrez votre téléphone',
                  labelText: 'Téléphone',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
              ),

              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: 'Entrez votre mot de passe',
                  labelText: 'Mot de passe',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
              ),
              Padding(padding: EdgeInsets.all(20)),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(10))
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => AddAccountPage()
                        )
                    );
                  },
                  child: Text("s'inscrire")),
            ],

          ),
        ),
      ),
    );
  }
}