import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mid Exam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Panel'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.elliptical(500, 50),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.elliptical(500, 50),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          obscureText: true, 
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.arrow_forward),
                      const SizedBox(width: 10),
                      Text('Login'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
