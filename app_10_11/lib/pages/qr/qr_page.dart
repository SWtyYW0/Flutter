import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practice_7/pages/qr/qr_web_view.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:webview_flutter/webview_flutter.dart';



class QrPage extends StatefulWidget {
  const QrPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  bool isPaused = false;
  bool isFlashOn = false;
  bool isCameraFront = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, 
      body: Column(
        children: <Widget>[
          Expanded(flex: 14, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: Wrap(
              runSpacing: 50,
              direction: Axis.vertical,
              children: <Widget>[
                if (isPaused)
                  IconButton(
                    onPressed: () async {
                      await controller?.resumeCamera();
                      setState(() {
                        isPaused = false;
                      }); 
                    },
                
                    icon: Icon(Icons.play_circle, color: Color.fromRGBO(112, 98, 51, 1.0))
                  )
                else
                  IconButton(
                    onPressed: () async {
                      await controller?.pauseCamera();
                      setState(() {
                        isPaused = true;
                      }); 
                    },
                    icon: Icon(Icons.pause_circle, color: Color.fromRGBO(112, 98, 51, 1.0)),
                  ),
                IconButton(
                  onPressed: () async {
                    await controller?.toggleFlash();
                    setState(() {
                      isFlashOn = !isFlashOn;
                    });
                  },
                  icon: isFlashOn ? Icon(Icons.flash_on_sharp, color: Color.fromRGBO(112, 98, 51, 1.0),) : Icon(Icons.flash_off_sharp, color: Color.fromRGBO(112, 98, 51, 1.0)),
                ),
                IconButton(
                  onPressed: () async {
                    await controller?.flipCamera();
                    setState(() {
                      isCameraFront = !isCameraFront;
                    });
                  },
                  icon: isCameraFront ? Icon(Icons.cameraswitch, color: Color.fromRGBO(112, 98, 51, 1.0),) : Icon(Icons.cameraswitch, color: Color.fromRGBO(112, 98, 51, 1.0),)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 200.0
        : 300.0;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.white,
          borderRadius: 10,
          borderLength: 15,
          borderWidth: 5,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) async {
      await controller.pauseCamera();
      setState(() {
        result = scanData;
      });
      if (scanData.code!.startsWith('http')){
        // ignore: use_build_context_synchronously
        await Navigator.push(context, 
          MaterialPageRoute(
            builder: (context) {
              return QrWebViewPage(webViewController: WebViewController()
                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                  ..loadRequest(Uri.parse('${scanData.code}'))
              );
            }
          )
        );
      }
      
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}