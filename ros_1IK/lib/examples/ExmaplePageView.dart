import 'package:flutter/material.dart';

class LinkToExamplePageView extends StatelessWidget {
  const LinkToExamplePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinkToExamplePageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('PageViewWidget',),
              onPressed:() {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return PageViewWidget();
                  })
                );
              },
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              child: Text('PageViewBuilderWidget'),
              onPressed:() {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return PageViewBuilderWidget();
                  })
                );
              },
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              child: Text('PageViewCustomWidget'),
              onPressed:() {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return PageViewCustomWidget();
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

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({super.key, required this.text});

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

class PageViewWidget extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: <Widget>[
        Container(
          color: Colors.red,
          child: Center(
            child: Text('Stop!'),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text('Ready?'),
          ),
        ),
        Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Go!', style: TextStyle(fontSize: 40),),
              ElevatedButton(
                  child: Text('Reload'),
                  onPressed: () {
                    controller.jumpToPage(0);
                  })
            ],
          ),
        ),
      ],
    );
  }
}

class PageViewBuilderWidget extends StatelessWidget {
  const PageViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: index % 2 == 0 ? Colors.cyan : Color(0xFFE3256B),
          alignment: Alignment.center,
          child: Text('$index'),
        );
      },
    );
  }
}

class PageViewCustomWidget extends StatelessWidget {
  const PageViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      childrenDelegate: SliverChildListDelegate([
        Text('1'),
        Text('2'),
        Text('3'),
      ]),
    );
  }
}