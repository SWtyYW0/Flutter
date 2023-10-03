import 'package:flutter/material.dart';

class ExampleStackPositionedIndexedStack extends StatelessWidget {
  const ExampleStackPositionedIndexedStack({super.key});

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
          scrollDirection: Axis.horizontal,
          children: const [
            StackWidget(),
            PositionedWidget(),
            IndexedStackWidget(),
          ],
        ),
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      // alignment: Alignment(1, 1),
      children: <Widget>[
        BackgroundImage(),
        AboutIsland(),
        HeartIcon(),
      ],
    );
  }
}

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: <Widget>[
        BackgroundImage(),
        Positioned(
          top: 490,
          child: AboutIsland(),
        ),
        Positioned(
          right: 60,
          top: 500,
          child: HeartIcon(),
        ),
      ],
    );
  }
}

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({super.key});

  @override
  _IndexedStackWidgetState createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  int _index = 0;
  double size = 100.0;

  void _switchLayout() {
    if (_index != 2) {
      setState(() {
        _index++;
        size += 100.0;
      });
    } else {
      setState(() {
        _index = 0;
        size = 50.0;
      });
    }
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IndexedStack(
            index: _index,
            children: [
              AnimatedSquare(size, Colors.redAccent),
              AnimatedSquare(size, Colors.orangeAccent),
              AnimatedSquare(size, Colors.greenAccent),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              _switchLayout();
            },
            child: const Text('Color Button'),
          )
        ],
      ),
    );
  }
}

class AnimatedSquare extends StatelessWidget {
  final double size;
  final Color color;

  const AnimatedSquare(this.size, this.color);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInBack,
      duration: Duration(seconds: 1),
      width: size,
      height: size,
      color: color,
    );
  }
}

class HeartIcon extends StatelessWidget {
  const HeartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.favorite,
      color: Colors.red,
      size: 30,
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints.expand(height: double.maxFinite),
      child: Image.asset('assets/images/bali.jpg', fit: BoxFit.cover),
    );
  }
}

class AboutIsland extends StatelessWidget {
  const AboutIsland({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Остров Бали',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            child: const Text(
              'Бали — настоящая сказка наяву, прекрасный остров, покрытый террасами изумрудных рисовых полей и лесами из гвоздичных и коричных деревьев, усыпанных ароматными цветами. ',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}