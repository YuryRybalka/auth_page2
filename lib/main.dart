import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color : Color (0xFF777777), width : 2));
    const linkTexStyle = TextStyle(
        fontSize : 18,
        fontWeight: FontWeight.bold,
        color : Color(0xFF0079D0));
    return MaterialApp(
        home: Scaffold(
          //appBar: AppBar(title: Center(child: Text('Мой authpage test'))),
          body: Container(
              width: double.infinity,
              child: Column(children:  [
                const SizedBox(height: 80),
                const SizedBox(width: 103, height:80, child: Placeholder(),),
                const SizedBox(height: 20),
                const Text('Введите логин в виде 10 цифр номера телефона',
                style : const TextStyle(fontSize : 16,color : Color.fromRGBO(0,0,0,0.6)),),
                const SizedBox(height: 20),
                const SizedBox(width:224,
                  child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        enabledBorder: borderStyle,
                        focusedBorder: borderStyle,
                        labelText: "Телефон",
                      )
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(width:224,
                  child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        enabledBorder: borderStyle,
                        focusedBorder: borderStyle,
                        labelText: "Пароль",
                      )
                  ),
                ),
                const SizedBox(height: 28),
                SizedBox(
                    width: 154, height: 42,
                    child: ElevatedButton(
                        onPressed: () {},
                          child: const Text('Войти'),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF0079D0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36.0),
                            ),
                          ) , // ElevatedButton.styleFrom
                    )
                ),
                const SizedBox(height: 32),
                InkWell(child:  const Text('Регистрация',style : linkTexStyle
                                          ),
                                onTap: () {}
                ),
                const SizedBox(height: 20),
                InkWell(child: const Text('Забыли пароль?',
                                          style : linkTexStyle
                                      ),
                        onTap: () {}
                )
              ],
              )
          ),
        )
    );
  } //build
} //MyApp