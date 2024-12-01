import 'package:app_tienda/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConstant.appScendoryColor,
        title: Text(
          "Bienvenido a mi aplicación",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Aquí cambiamos de Lottie a Image
            Container(
              width: Get.width / 1, // Ancho de la imagen (100%)
              height: Get.height / 4, // Altura de la imagen (25%)
              child: Image.asset(
                'assets/images/cel.png',
                fit: BoxFit.contain, // Mantener proporciones sin distorsionar
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                "Felices compras",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                child: Center(
                  child: Material(
                    child: Container(
                      width: Get.width / 1.2,
                      height: Get.height / 12,
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
                      child: TextButton.icon(
                          icon: Image.asset(
                            'assets/images/google.png',
                            width: Get.width / 12,
                            height: Get.height / 12,
                          ),
                          onPressed: () {},
                          label: Text(
                            "Iniciar sesión con Google",
                            style: TextStyle(color: AppConstant.appTextColor),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 45,
            ),
            Center(
              child: Material(
                child: Container(
                  width: Get.width / 1.2,
                  height: Get.height / 12,
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
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.email,
                      color: AppConstant.appTextColor,
                    ),
                    label: Text(
                      "Iniciar sesión con correo electrónico",
                      style: TextStyle(color: AppConstant.appTextColor),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
