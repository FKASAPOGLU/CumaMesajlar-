import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/* class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Kategoriler"),
          centerTitle: true,
          shadowColor: Color(0xff2871fa),
          backgroundColor: Color(0xff2871fa),
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.all(5),
            primary: true,
            shrinkWrap: true,
            addAutomaticKeepAlives: true,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor: MaterialStateProperty.all<Color>(
                        Color(0xff6717cd),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          child: Image.asset(
                            "assets/screen/cuma.png",
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Cuma Mesajları",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              inherit: true,
                              color: Colors.white,
                              height: 12,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CumaScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff6717cd)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        new Card(
                          child: Image.asset(
                            "assets/screen/ramazan.png",
                            height: 200,
                            width: 1500,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Ramazan Bayramı Mesajları",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              inherit: true,
                              color: Colors.white,
                              height: 12,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff6717cd)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        new Card(
                          child: Image.asset(
                            "assets/screen/kurban.png",
                            height: 200,
                            width: 1000,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Kurban Bayramı Mesajları",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 12,
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff6717cd)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          child: Image.asset(
                            "assets/screen/regaip.png",
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Regaip Kandili Mesajları",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              inherit: true,
                              color: Colors.white,
                              height: 12,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff6717cd)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          child: Image.asset(
                            "assets/screen/mirac.png",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Miraç Kandili Mesajları",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              inherit: true,
                              color: Colors.white,
                              height: 12,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff6717cd)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          child: Image.asset(
                            "assets/screen/berat.png",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Berat Kandili Mesajları",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              inherit: true,
                              color: Colors.white,
                              height: 12,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff6717cd)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          child: Image.asset(
                            "assets/screen/kadir.png",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Kadir Gecesi Mesajları",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              inherit: true,
                              color: Colors.white,
                              height: 12,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff6717cd)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          child: Image.asset(
                            "assets/screen/mevlid.png",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Mevlid Kandili Mesajları",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              inherit: true,
                              color: Colors.white,
                              height: 12,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff6717cd)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          child: Image.asset(
                            "assets/screen/gunaydin.png",
                            height: 300,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Günaydın Mesajları",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              inherit: true,
                              color: Colors.white,
                              height: 12,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff6717cd)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          child: Image.asset(
                            "assets/screen/aksam.jpeg",
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AksamScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} */
