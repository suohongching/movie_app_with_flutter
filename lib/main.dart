import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("មើលកុន"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.indigo,
              ],
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Image.network(
      //       "https://cdn.moviefone.com/admin-uploads/posters/furiosa-movie-poster_1702377407.jpg?d=360x540&q=60"),
      // ),
      body: ListView(
        children: [
          Image.network(
              "https://cdn.moviefone.com/admin-uploads/posters/furiosa-movie-poster_1702377407.jpg?d=360x540&q=60"),
          Image.network(
              "https://m.media-amazon.com/images/M/MV5BYWJkY2Q4NmYtOGRlMi00YTg5LWE2ZmQtY2NkYzk3YTRmNWZlXkEyXkFqcGdeQXVyMTY3ODkyNDkz._V1_.jpg"),
          Image.network(
              "https://hips.hearstapps.com/hmg-prod/images/new-disney-movies-2024-inside-out-2-65957d36a1efb.jpeg?crop=1.00xw:0.845xh;0,0.0839xh&resize=980:*"),
          Image.network(
              "https://hips.hearstapps.com/hmg-prod/images/new-disney-movies-2024-kingdom-planet-of-the-apes-65957ba075369.jpeg?crop=1.00xw:0.834xh;0,0.120xh&resize=980:*"),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(0.5),
        child: ListView(
          children: [
            const DrawerHeader(
                child: Icon(
              Icons.face,
              size: 100,
              color: Colors.white,
            )),
            ListTile(
              tileColor: Colors.pink.withOpacity(0.7),
              iconColor: Colors.white,
              leading: const Icon(Icons.home),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              tileColor: Colors.blue.withOpacity(0.7),
              iconColor: Colors.white,
              leading: const Icon(Icons.call),
              title: const Text(
                "Contact",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              tileColor: Colors.orange.withOpacity(0.7),
              iconColor: Colors.white,
              leading: const Icon(Icons.person),
              title: const Text(
                "Developer",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Image.network(
                "https://lh3.googleusercontent.com/proxy/bEmBajkZeLbRQC-P2wrCZHTTNGIZPZEDomeZOuU60CpsrHjPBQNATMoHFgvyQEu1Tx0AmLR9EB-m0zcCu5QfX0MFEZFLnLy_NdZBoR56-_qpkg7Bnrvz9aLoaUm8eoY4x93Ip8fHdDCdup3o")
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow)),
            const SizedBox(width: 30),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ],
        ),
      ),
    );
  }
}
