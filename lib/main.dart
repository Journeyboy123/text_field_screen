import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPaintPointersEnabled = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "This is title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  // //   setState(() {
  //     // _counter++;
  //   });
  // }

  var textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset("/images/mechanical.jpg",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5),
            Positioned(
              left: 0,
              right: 0,
              top: 10,
              child: Image.asset(
                "/images/logo.jpg",
                width: 100,
                height: 90,
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              top: 103,
              child: Text(
                "Mechanical Tool",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 24, 24, 23),
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.account_circle,
                                  size: 30,
                                ),
                              ),
                              Text("Accounts"),
                            ],
                          ),
                          height: 100,
                          width: 200,
                          color: Color.fromARGB(255, 207, 198, 198),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.home,
                                    size: 30,
                                  ),
                                ),
                                Text("Home")
                              ],
                            ),
                            height: 100,
                            width: 200,
                            color: Color.fromARGB(255, 207, 198, 198),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.computer,
                                  size: 30,
                                ),
                              ),
                              Text("Computer")
                            ],
                          ),
                          height: 100,
                          width: 200,
                          color: Color.fromARGB(255, 207, 198, 198),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.contact_page,
                                    size: 30,
                                  ),
                                ),
                                Text("Contact")
                              ],
                            ),
                            height: 100,
                            width: 200,
                            color: Color.fromARGB(255, 207, 198, 198),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.book_outlined,
                                  size: 30,
                                ),
                              ),
                              Text("Book")
                            ],
                          ),
                          height: 100,
                          width: 200,
                          color: const Color.fromARGB(255, 207, 198, 198),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.settings,
                                    size: 30,
                                  ),
                                ),
                                Text("Settings")
                              ],
                            ),
                            height: 100,
                            width: 200,
                            color: const Color.fromARGB(255, 207, 198, 198),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
