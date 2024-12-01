import 'package:app_tienda/screens/auth-ui/sign-up-screen.dart';
import 'package:app_tienda/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.appScendoryColor,
          centerTitle: true,
          title: Text(
            "Sign In",
            style: TextStyle(
              color: const Color.fromARGB(255, 6, 6, 6),
            ),
          ),
        ),
        body: SingleChildScrollView(
          // Añadido para que el contenido sea desplazable
          child: Container(
            child: Column(
              children: [
                // Si el teclado no está visible, muestra el texto encima del logo
                if (!isKeyboardVisible) ...[
                  SizedBox(height: Get.height / 20), // Espacio antes del texto
                  Text(
                    'Welcome to my app',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppConstant.appTextColor,
                    ),
                  ),
                  SizedBox(
                      height: Get.height / 20), // Espacio antes de la imagen
                ],

                // Ajuste de imagen con contenedor
                Container(
                  width: Get.width / 1, // Ancho de la imagen (100%)
                  height: Get.height / 4, // Altura de la imagen (25%)
                  child: Image.asset(
                    'assets/images/cel.png',
                    fit: BoxFit
                        .contain, // Mantener proporciones sin distorsionar
                  ),
                ),

                // Formulario de inicio de sesión
                SizedBox(
                  height: Get.height / 12,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appScendoryColor,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appScendoryColor,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.visibility_off),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                      color: AppConstant.appScendoryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height / 40,
                ),
                Material(
                  child: Container(
                    child: Center(
                      child: Material(
                        child: Container(
                          width: Get.width / 1.5,
                          height: Get.height / 13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4.0,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Iniciar sesión",
                              style: TextStyle(color: AppConstant.appTextColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height / 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an acccount?",
                      style: TextStyle(color: AppConstant.appTextColor),
                    ),
                    GestureDetector(
                      onTap: () => Get.offAll(() => SignUpScreen()),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppConstant.appTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
