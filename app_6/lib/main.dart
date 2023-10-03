import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            DialogExample(),
            TabBarExample(),
            CardExapmlee(),
            DrawerExample(),
            ListsExample(),
            CheckboxExample(),
            RadioExample(),
            LinearProgressExample(),
            ProgressesExample(),
            SnakBarExample(),
            BottomNavigationBarExample(),
            TableExample(),
          ],
        ),
      ),
    );
  }
}

class DialogExample extends StatefulWidget {
  @override
  _DialogExampleState createState() => _DialogExampleState();
}


class _DialogExampleState extends State<DialogExample> {
  String answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The main question"),
        backgroundColor: Colors.black,
      ),
      body:Container(
        color: const Color.fromARGB(255, 39, 38, 38),
        child: Center(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Вопрос",style: TextStyle(color: Colors.white)),
              onPressed: () async {
                String answValue = await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Мне ждать мое кофе?"),
                      content: Text("Вроде как исправил вашу ошибку"),
                      actions: [
                        ElevatedButton(
                          child: Text("Да:)",
                          style: TextStyle(color: Colors.white)
                          ),
                          onPressed: () {
                            Navigator.of(context).pop("Yes, Of course!");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          child: Text(
                            "No:(",
                            style: TextStyle(color: Colors.white), 
                          ),
                          onPressed: () {
                            Navigator.of(context).pop("No, you owe me coffee.");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                        ),
                        
                      ],
                    );
                  },
                );

                setState(() {
                  answer = answValue;
                });
              },
              style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
            ),
            SizedBox(width: 5, height: 5),
            Text("Teacher said: " + answer.toString(), style: TextStyle(color: Color.fromARGB(255, 168, 163, 163))),
          ],
        ),

      ),
      )
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar createTabBar() {
      return const TabBar(
        isScrollable: true,
        tabs: [
          Row(children: [
            Icon(Icons.directions_car),
            SizedBox(width: 5),
            Text("Car")
          ]),
          Row(children: [
            Icon(Icons.directions_transit),
            SizedBox(width: 5),
            Text("Transit")
          ]),
          Row(children: [
            Icon(Icons.directions_bike),
            SizedBox(width: 5),
            Text("Bike")
          ]),
          Row(children: [
            Icon(Icons.directions_boat),
            SizedBox(width: 5),
            Text("Boat")
          ]),
          Row(children: [
            Icon(Icons.directions_railway),
            SizedBox(width: 5),
            Text("Railway")
          ]),
          Row(children: [
            Icon(Icons.directions_bus),
            SizedBox(width: 5),
            Text("Bus")
          ]),
        ],
      );
    }

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: createTabBar(),
          title: const Text('TabBar'),
          backgroundColor: Color.fromARGB(255, 70, 57, 57)
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Car")),
            Center(child: Text("Transit")),
            Center(child: Text("Bike")),
            Center(child: Text("Boat")),
            Center(child: Text("Railway")),
            Center(child: Text("Bus"))
          ],
        ),
      ),
    );
  }
}

class CardExapmlee extends StatelessWidget {
  const CardExapmlee({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 350,
        padding: const EdgeInsets.all(10),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(15)),
          ),
          color: Colors.red,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.album, size: 60),
                title: Text(
                  'Sonu Nigam',
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  'Best of Sonu Nigam Music',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ButtonBar(
                children: [
                  ElevatedButton(
                    child: Text('Play'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text('Close'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.grey, 
                    ),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Drawer'),
        backgroundColor: Color.fromARGB(255, 70, 57, 57),
      ),
      body: Center(child: Text('Page')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 22, 22, 22)),
                  accountEmail: Text('2011312@uib.kz'),
                  accountName: Text('Ikram Abashev'),
                  
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/motivation.png'),
                  ),
                )),
            ListTile(
              title: new Text("Profile"),
              leading: Icon(Icons.account_box),
              onTap: () {},
            ),
            ListTile(
              title: new Text('settings'),
              leading: Icon(Icons.settings),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}

class ListsExample extends StatelessWidget {
  const ListsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List'),
        backgroundColor: Color.fromARGB(255, 70, 57, 57)
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contacts'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  List<bool> checkboxValues = [false, false, false, false, false];
  List<String> checkboxNames = ['Web', 'Data Science', 'ML/AI', 'Game Dev', 'Mobile App'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Developer'),
        backgroundColor: Color.fromARGB(255, 70, 57, 57)
      ),
      body: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text('Choose your favorite sphere:',
                style: TextStyle(fontSize: 20)),
          ),
          const Divider(
            height: 2,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: checkboxValues.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${checkboxNames[index]}'),
                    trailing: Checkbox(
                    value: checkboxValues[index],
                    onChanged: (newValue) {
                      setState(() {
                        checkboxValues[index] = newValue!;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          const Divider(
            height: 2,
            color: Colors.grey,
          ),
          Expanded(
            child: Wrap(
              spacing: 5,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                for (int index = 0; index < checkboxValues.length; index++)
                  if (checkboxValues[index])
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 3, 120, 9),
                      ),
                      onPressed: () {},
                      child: Text(checkboxNames[index],
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {

  String _value = '';

  List<String> availableGenders = ['Male', 'Female'];
  Map<String, String> genderDescriptions = {
    'Male': 'Hello gentlemen',
    'Female': 'Hello madam',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Kindacode.com'),
        backgroundColor: Color.fromARGB(255, 70, 57, 57)
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text('Please choose your gender:',
                style: TextStyle(fontSize: 18)),
          ),
          Container(
            height: 200,
            child: Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(20),
                itemCount: availableGenders.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${availableGenders[index]}'),
                    leading: Radio(
                      groupValue: _value,
                      value: availableGenders[index],
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }, 
                    ),
                  );
                },
              ),
            ),
          ),
          _value.isNotEmpty
              ? Text(
                    genderDescriptions[_value] ?? '',
                    style: TextStyle(fontSize: 18),
                  )
              : Container(),
        ],
      ),
    );
  }
}

class LinearProgressExample extends StatefulWidget {
  const LinearProgressExample({super.key});

  @override
  State<LinearProgressExample> createState() => _LinearProgressExampleState();
}

class _LinearProgressExampleState extends State<LinearProgressExample> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Linear Progress Bar'),
        backgroundColor: Color.fromARGB(255, 70, 57, 57)
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: _loading ? const LinearProgressIndicator() : const Text(
            'Press button for downloading',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loading = !_loading;
          });
        },
        tooltip: 'Download',
        backgroundColor: Color.fromARGB(255, 70, 57, 57),
        child: const Icon(Icons.cloud_download),
      ),
    );
  }
}

class ProgressesExample extends StatelessWidget {
  const ProgressesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Loader'),
        backgroundColor: Color.fromARGB(255, 70, 57, 57)
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 10),
          LinearProgressIndicator(),
        ],
      ),
    );
  }
}


class SnakBarExample extends StatelessWidget {
  const SnakBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snackbar'),
          backgroundColor: Color.fromARGB(255, 70, 57, 57)
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('Привет, это Snackbar!'),
                action: SnackBarAction(
                  label: 'Закрыть',
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Show Snackbar'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 70, 57, 57)
              )
          )
        ),
      );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() => BottomNavigationBarExampleState();
}

class BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {

  final List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile User')),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        backgroundColor: Color.fromARGB(255, 70, 57, 57)
      ),
      body: _pages[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex, 
        selectedItemColor: Colors.blue, 
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class TableExample extends StatelessWidget {
  const TableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
        backgroundColor: Color.fromARGB(255, 70, 57, 57)
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Table(
          defaultColumnWidth:FixedColumnWidth(105),
          border: TableBorder.all(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 2
          ),
          children: const [
            TableRow( 
              children: [
                Column(children:[Text('Students', style: TextStyle(fontSize: 20.0))]),
                Column(children:[Text('Discipline', style: TextStyle(fontSize: 20.0))]),
                Column(children:[Text('Score', style: TextStyle(fontSize: 20.0))]),
              ],
            ),
            TableRow( 
              children: [
                Column(children:[Text('Ikram')]),
                Column(children:[Text('Flutter')]),
                Column(children:[Text('98')]),
              ]
            ),
            TableRow( 
              children: [
                Column(children:[Text('Madi')]),
                Column(children:[Text('Web')]),
                Column(children:[Text('100')]),
              ]
            ),
            TableRow( 
              children: [
                Column(children:[Text('Kazbek')]),
                Column(children:[Text('Ontology')]),
                Column(children:[Text('75')]),
              ]
            ),
            TableRow( 
              children: [
                Column(children:[Text('Ali')]),
                Column(children:[Text('Amazon')]),
                Column(children:[Text('80')]),
              ]
            )
          ]
        ),
      )
    );
  }
}






//////////////////////////////////////////////////////////////////////////////////////////

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage ({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return MyHomePageState();
//   }
// }

// class MyHomePageState extends State<MyHomePage> {
//   String answer = "...";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold (
//         appBar: AppBar(
//             title: Text("Flutter AlertDialog Example")
//         ),
//         body: Center (
//             child: Row (
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   ElevatedButton (
//                     child: Text("Вопрос"),
//                     onPressed: () {
//                       showMyAlertDialog(context);
//                     },
//                   ),
//                   SizedBox(width:5, height:5),
//                   Text("Teacher said: " + this.answer.toString())
//                 ]
//             )
//         )
//     );
//   }

//   showMyAlertDialog(BuildContext context) async {
//     AlertDialog dialog = AlertDialog(
//       title: Text("Мне ждать мое кофе?"),
//       content: Text("Вроде как исправил вашу ошибку"),
//       actions: [
//         ElevatedButton(
//             child: Text("Да:)"),
//             onPressed: (){
//               Navigator.of(context).pop("Yes, Of course!"); 
//             }
//         ),
//         ElevatedButton(
//             child: Text("No:("),
//             onPressed: (){
//               Navigator.of(context).pop("No, you owe me coffee."); 
//             }
//         ),
//       ],
//     );

// String answ_Value = await showDialog(
//           context: context,
//         builder: (BuildContext context) {
//           return dialog;
//         }
//     );
//       setState(() {
//       this.answer = answ_Value;
//     });
//   }
// }

//////////////////////////////////////////////////////////////////////////////////////////

