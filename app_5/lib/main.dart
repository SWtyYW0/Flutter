import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());





}

//////////////// 1 task

  // runApp(Align(alignment: Alignment.centerLeft ,
  // child: Text(
  //   'Текст слева по центру !',                       
  //   textDirection: TextDirection.ltr,
  //   style: TextStyle(fontSize: 24)
  // ),));


//////////////// 2 task

  // runApp(Align(alignment: Alignment.center ,
  // child: Text(
  //   'Центр!',
  //   textDirection: TextDirection.ltr,               
  //   style: TextStyle(fontSize: 24)
  // ),));


//////////////// 3 task

// runApp(Padding(padding: EdgeInsets.all(40),
//   child: Align(alignment: Alignment.topCenter,
//   child: Text(
//     'Hello flutter',
//     textDirection:TextDirection.ltr              
//     ),
//   ),
// )
//   );


/////////////// 4 task

  //   runApp(Container(
  //   padding: EdgeInsets.only(top:30, left:10),
  //   color: Colors.teal,
  //   child:Column(
  //       textDirection: TextDirection.ltr,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         Text('Вот мысль, которой весь я предан,',              
  //             textDirection: TextDirection.ltr),
  //         Text('Итог всего, что ум скопил.',
  //             textDirection: TextDirection.ltr),
  //         Text('Лишь тот, кем бой за жизнь изведан,',
  //             textDirection: TextDirection.ltr),
  //         Text('Жизнь и свободу заслужил.',
  //             textDirection: TextDirection.ltr)
  //       ],
  //     )
  //   )
  // );


//////////////////// 5 task

 //   runApp(Container(
  //   padding: EdgeInsets.all(30),
  //   color: Colors.teal,
  //   child:Row(
  //       textDirection: TextDirection.ltr,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       verticalDirection: VerticalDirection.down,
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: <Widget>[
  //         Text('Tom',
  //             textDirection: TextDirection.ltr),         
  //         Text('Bob',
  //             textDirection: TextDirection.ltr),
  //         Text('Sam',
  //             textDirection: TextDirection.ltr),
  //         Text('Alice',
  //             textDirection: TextDirection.ltr)
  //       ],
  //     )
  //   )
  // );


///////////// 6 task

//runApp(Container(
//     padding: EdgeInsets.all(30),
//     color: Colors.teal,
//     child:Row(
//         textDirection: TextDirection.ltr,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         verticalDirection: VerticalDirection.down,           
//         children: <Widget>[
//           Expanded(
//               child: Text('Чрез несколько дней после отъезда Анатоля, Пьер получил записку от князя Андрея, извещавшего '
//               'его о своем приезде и просившего Пьера заехать к нему.',
//               textDirection: TextDirection.ltr)
//           )
//         ]
//       )
//     )
//   );



//////////////// 7 task

// runApp(Container(
//     color: Colors.white,
//     padding: EdgeInsets.only(top:40, bottom: 10, left: 20, right: 20),
//     child: Stack(
//       textDirection: TextDirection.ltr,
//       children: <Widget>[
//         Container(
//           width: 200,
//           height: 200,
//           color: Colors.blueGrey,                                      
//         ),
//         Container(
//           width: 160,
//           height: 160,
//           color: Colors.cyan,
//         ),
//         Container(
//           width: 100,
//           height: 100,
//           color: Colors.blue,
//         ),
//       ],
//     )
//   )
//   );


////////////// 8 task

 //runApp(Container(
  //   color: Colors.white,
  //   child: Image.network("https://picsum.photos/250?image=9"),   
  // ));


/////////////// 9 task

// runApp(MaterialApp(
//       home: Scaffold(
//       body: Image.asset("assets/images/asd.jpg", width: 320, height: 240),   
//       appBar: AppBar(
//         title: const Text("METANIT.COM"),
//       ),
//     ),
//   ));


/////////////// 10 task

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("My Flutter App"),                   --10 zadacha 
//         ),
//         body: Center(
//           child: buildTypesButton(),
//         ),
//       ),
//     );
//   }

//   Widget buildTypesButton() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         TextButton(
//           onPressed: () {},
//           child: Text('TextButton'),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),
//         SizedBox(
//           height: 20,
//         ),
//         OutlinedButton(
//           onPressed: () {},
//           child: Text("OutlinedButton"),
//         ),
//       ],
//     );
//   }
// }





////////////// 11 task

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: TextField(decoration: InputDecoration(hintText: "Введите логин:")),                     
        appBar: AppBar(title: const Text("App")),
      ),
    );
  }

  Widget buildTypesButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('TextButton',),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),
        SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("OutlinedButton"),
        ),
      ],
    );
  }
}









//////////////////////////////////////////////////////

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
