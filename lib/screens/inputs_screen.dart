import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);
  //Un key ayuda a mantener la referencia de un widget

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Christian',
      'apellido': 'Cervantes',
      'correo': "chrisatnat@hotmail.com",
      'password': '123456',
      'role': 'user'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text("Inputs y Forms"),
        ),
        // Funciona como list view pero permite hacer scroll
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  //Diferencia entre textformfield y textfield
                  //TextField algo sin formulario
                  //TextFormField algo con formulario y se agrega validaciones
                  //TextFormField es mas usado
                  CustomInputField(
                    labelText: "Nombre",
                    hintText: "Nombre de usuario",
                    formProperty: "nombre",
                    formValues: formValues,
                  ),

                  const SizedBox(height: 30),

                  CustomInputField(
                    labelText: "Apellido",
                    hintText: "Apellido del usuario",
                    formProperty: "apellido",
                    formValues: formValues,
                  ),

                  const SizedBox(height: 30),

                  CustomInputField(
                    labelText: "Correo",
                    hintText: "Correo del usuario",
                    keyboardType: TextInputType.emailAddress,
                    formProperty: "correo",
                    formValues: formValues,
                  ),

                  const SizedBox(height: 30),

                  CustomInputField(
                    labelText: "Contraseña",
                    hintText: "Contraseña del usuario",
                    formProperty: "password",
                    formValues: formValues,
                    obscureText: true,
                  ),

                  const SizedBox(height: 30),

                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        child: Text("Admin"),
                        value: "Admin",
                      ),
                      DropdownMenuItem(
                        child: Text("SuperUser"),
                        value: "SuperUser",
                      ),
                      DropdownMenuItem(
                        child: Text("Developer"),
                        value: "Developer",
                      ),
                      DropdownMenuItem(
                        child: Text("Jr. Developer"),
                        value: "Jr. Developer",
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),

                  ElevatedButton(
                    onPressed: () {
                      //Todo:imprimir valores del formulario
                      //Sirve para desactivar el teclado en una accion
                      FocusScope.of(context).requestFocus(
                        FocusNode(),
                      );

                      if (!myFormKey.currentState!.validate()) {
                        print("Formulario no válido");
                        return;
                      }

                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: Center(child: Text("Guardar")),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
