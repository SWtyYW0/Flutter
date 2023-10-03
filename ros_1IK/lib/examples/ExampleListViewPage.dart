import 'package:flutter/material.dart';

class LinkToExampleListViewPage extends StatelessWidget {
  const LinkToExampleListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinkToExampleListViewPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('ExampleListViewPage',),
              onPressed:() {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return ExampleListViewPage();
                  })
                );
              },
            )
          ]
        ),
      ),
    );
  }
}

class ExampleListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExampleListViewPage'),
        centerTitle: true,
      ),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          ListViewWidget(),
          ListViewBuilderWidget(),
          ListViewSeparatedWidget(),
          ListViewCustomWidget(),
        ],
      ),
    );
  }
}

class SecondTextWidget extends StatelessWidget {
  const SecondTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      // controller: ScrollController(initialScrollOffset: 100),
      // physics: NeverScrollableScrollPhysics(),
      // padding: EdgeInsets.all(20),
      children: <Widget>[
        SecondTextWidget(text: "1"),
        SecondTextWidget(text: "2"),
        SecondTextWidget(text: "3"),
        SecondTextWidget(text: "4"),
        SecondTextWidget(text: "5"),
        SecondTextWidget(text: "6"),
        SecondTextWidget(text: "7"),
        SecondTextWidget(text: "8"),
        SecondTextWidget(text: "9"),
        SecondTextWidget(text: "10"),
      ],
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: 20,
        itemBuilder: (context, index) {
      return SecondTextWidget(text: '$index');
    });
  }
}

class ListViewSeparatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return SecondTextWidget(text: "$index");
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.black);
        },
        itemCount: 20);
  }
}

class ListViewCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.custom(childrenDelegate:
        SliverChildBuilderDelegate((BuildContext context, int index) {
      return SecondTextWidget(text: "$index");
    }));
  }
}