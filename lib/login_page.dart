import 'package:flutter/material.dart';
import 'package:myapp/components/button.dart';
import 'package:myapp/components/textfields.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
//Controlador Form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//Metodo signin
  /*void signin() {
    if (formKey.currentState!.validate()) {
      String email = usernameController.text;
      String password = passwordController.text;
      if (email == 'usuario@institucion.edu.hn' && password == '123456') {
        Navigator.pushReplacementNamed(context, '/home', arguments: email);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Credenciales incorrectas')),
        );
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            key: formKey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                const Icon(Icons.lock, size: 100),
                const SizedBox(height: 50),
                Text(
                  'Bienvenido al Campus Virtual',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),

                const SizedBox(height: 25),
                //username TextField
                MyTextFIelds(
                  controller: usernameController,
                  hintText: 'Correo Electronico',
                  obscureText: false,
                  
                ),
                const SizedBox(height: 10),
                MyTextFIelds(
                  controller: passwordController,
                  hintText: 'Contraseña ',
                  obscureText: true,
                ),

                const SizedBox(height: 10),
                //Registrarse
                Text(
                  'Registarme',
                  style: TextStyle(color: Colors.grey[800]),
                ),

                const SizedBox(height: 25),
                MyButton(
                  onTap: () {
                  if (formKey.currentState!.validate()) {
                    String email = usernameController.text;
                    String password = passwordController.text;
                  if (email == 'usuario@institucion.edu.hn' && password == '123456') {
                       Navigator.pushReplacementNamed(context, '/pantalla_inicio', arguments: email);
                  } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Credenciales incorrectas')),
        );
      }
    }
  },
                ),
              ],
            ),
          ),
        ));
  }
}
