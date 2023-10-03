import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExampleImage extends StatelessWidget {
  const ExampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetNamePath = 'assets/images/bali.jpg';
    const String assetNameSvg = "assets/flower.svg";
    const String assetNameUrl = 'https://resizer.mail.ru/p/8756212a-2e3b-553f-a1cd-dc7edfb0d02d/AQAKOHoaLV1AuslOBaO8qVDvUAlkXeV9GN-atpcfFie2HG7xflNEEqw6qQEcUSrc75vE2gGp9Fw7J_Wts8J0H-c1XaY.jpg';

    Image imageFromAsset = Image.asset(assetNamePath, fit: BoxFit.cover);

    Image imageFromNetwork = Image.network(assetNameUrl);

    Image changedImage = Image(
      image: imageFromNetwork.image,
      color: Colors.green,
      colorBlendMode: BlendMode.color,
    );

    SvgPicture imageFromAssetSvg =
        SvgPicture.asset(assetNameSvg, fit: BoxFit.cover);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            imageFromAsset,
            imageFromAssetSvg,
            imageFromNetwork,
            changedImage,
          ],
        ),
      ),
    );
  }
}