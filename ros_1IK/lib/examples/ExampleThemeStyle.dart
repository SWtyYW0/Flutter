import 'package:flutter/material.dart';
import 'package:ros_1IK/examples/theme/ui/BAppBar.dart';
import 'package:ros_1IK/examples/theme/utils/constants.dart';
import 'package:ros_1IK/examples/theme/utils/theme.dart';

class ExampleTheme extends StatelessWidget {
  const ExampleTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.light(),
      theme: ThemeData.dark(),
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      // theme: basicTheme(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(
          'Custom Theme',
          // style: Theme.of(context).textTheme.headline6,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontSize: LargeTextSize),
        ),
      ),
      body: ListWidget(),
      bottomNavigationBar: BAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 20, bottom: 5, right: 10, left: 10),
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return (index == 14)
            ? Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: ElevatedButton(
                  child: Text("Load More"),
                  onPressed: () {},
                )
                // child: Theme(
                //   data: Theme.of(context).copyWith(accentColor: Colors.yellow),
                //   child: ElevatedButton(
                //     child: Text("Load More"),
                //     onPressed: () {},
                //   ),
                // ),
                )
            : Card(
                child: ListTile(
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      iconTheme: Theme.of(context).iconTheme.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Header $index',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  subtitle: Text(
                    'Description text $index',
                    // style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              );
      },
    );
  }
}