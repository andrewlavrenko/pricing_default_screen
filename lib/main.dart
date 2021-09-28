import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => Dialog(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/training_popup_blue.png",
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
                          child: Text(
                            'Оформите подписку, чтобы получить доступ к следующей тренировке',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color.fromRGBO(64, 68, 81, 1),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
                          child: Container(
                            child: ListTile(
                              title: Text(
                                'Месяц',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(62, 100, 255, 1),
                                    fontSize: 16),
                              ),
                              subtitle: Text(
                                '500 р',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(55, 60, 73, 1),
                                    fontSize: 14),
                              ),
                              onTap: () {},
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(135, 145, 180, 0.2).withOpacity(0.225),
                                  spreadRadius: 2,
                                  blurRadius: 5,

                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: Container(
                            child: ListTile(
                              title: Text(
                                'Год',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                              minVerticalPadding: 10,
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 10)),
                                      Text(
                                        '3 дня бесплатно!',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 10)),
                                      Row(
                                        children: [
                                          Text(
                                            '6000р',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    200, 205, 225, 1),
                                                fontSize: 12),
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5)),
                                          Text(
                                            '4800р каждый год',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 10)),
                                    ],
                                  ),
                                  Text(
                                    '-20%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              onTap: () {},
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/right_corner_star_yellow.png"), scale: 0.75,
                                alignment: Alignment.bottomRight,

                              ),
                              color: Color.fromRGBO(62, 100, 255, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(18, 39, 124, 0.2).withOpacity(0.125),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(
                                      3, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: Container(
                            child: ListTile(
                              title: Text(
                                'Навсегда',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(62, 100, 255, 1),
                                    fontSize: 16),
                              ),
                              subtitle: Text(
                                '15000 р',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(55, 60, 73, 1),
                                    fontSize: 14),
                              ),
                              onTap: () {},
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(135, 145, 180, 0.2).withOpacity(0.225),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(253, 170, 73, 1),
                                  Color.fromRGBO(255, 109, 63, 1)
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(255, 109, 63, 1).withOpacity(0.125),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(
                                      3, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                                minimumSize:
                                    MaterialStateProperty.all(Size(1000, 50)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                // elevation: MaterialStateProperty.all(3),
                                shadowColor: MaterialStateProperty.all(
                                    Colors.transparent),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Text(
                                  'Оформить',
                                  style: TextStyle(
                                    fontSize: 18,
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Оформить позже',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                //color: Color.fromRGBO(62, 100, 255, 1), //Color.fromRGBO(130, 172, 255, 1);
                                fontSize: 16,
                                foreground: Paint()..shader = linearGradient,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
        },
        child: const Icon(Icons.lightbulb),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color.fromRGBO(130, 172, 255, 1),
    Color.fromRGBO(62, 100, 255, 1)
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
