import 'package:flutter/material.dart';

class LinkToExampleGridViewPage extends StatelessWidget {
  const LinkToExampleGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinkToExampleGridViewPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('ExampleGridViewPage',),
              onPressed:() {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return ExampleGridViewPage();
                  })
                );
              },
            ),
          ]
        ),
      ),
    );
  }
}

class ExampleGridViewPage extends StatelessWidget {
  const ExampleGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExampleGridViewPage'),
        centerTitle: true,
      ),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          GridViewWidget(),
          GridViewBuilderWidget(),
          GridViewCountWidget(),
          const GridViewExtentWidget(),
          const GridViewCustomWidget(),
        ],
      ),
    );
  }
}

class ThirdTextWidget extends StatelessWidget {
  final String text;
  const ThirdTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: const <Widget>[
        ThirdTextWidget(text: "1"),
        ThirdTextWidget(text: "2"),
        ThirdTextWidget(text: "3"),
        ThirdTextWidget(text: "4"),
        ThirdTextWidget(text: "5"),
        ThirdTextWidget(text: "6"),
        ThirdTextWidget(text: "7"),
        ThirdTextWidget(text: "8"),
        ThirdTextWidget(text: "9"),
        ThirdTextWidget(text: "10"),
      ],
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return ThirdTextWidget(text: '$index');
        });
  }
}

class GridViewCountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: const <Widget>[
        ThirdTextWidget(text: "1"),
        ThirdTextWidget(text: "2"),
        ThirdTextWidget(text: "3"),
        ThirdTextWidget(text: "4"),
        ThirdTextWidget(text: "5"),
        ThirdTextWidget(text: "6"),
        ThirdTextWidget(text: "7"),
        ThirdTextWidget(text: "8"),
        ThirdTextWidget(text: "9"),
        ThirdTextWidget(text: "10"),
      ],
    );
  }
}

class GridViewExtentWidget extends StatelessWidget {
  const GridViewExtentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    print(queryData.size);

    return Container(
        width: 300,
        color: Colors.white,
        child: GridView.extent(
          maxCrossAxisExtent: 90,
          children: const [
            ThirdTextWidget(text: "1"),
            ThirdTextWidget(text: "2"),
            ThirdTextWidget(text: "3"),
            ThirdTextWidget(text: "4"),
            ThirdTextWidget(text: "5"),
          ],
        ));
  }
}

class GridViewCustomWidget extends StatelessWidget {
  const GridViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      // childrenDelegate: SliverChildListDelegate([
      //   ThirdTextWidget(text: "1"),
      //   ThirdTextWidget(text: "2"),
      //   ThirdTextWidget(text: "3"),
      // ]));
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return ThirdTextWidget(text: '$index');
      }),
    );
  }
}