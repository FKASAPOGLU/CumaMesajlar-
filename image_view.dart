import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

class ImageView extends StatefulWidget {
  final String asset;

  const ImageView({Key key, @required this.asset}) : super(key: key);
  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            widget.asset,
            fit: BoxFit.contain,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _shareImage(widget.asset);
        },
        tooltip: 'Share',
        child: Icon(Icons.share),
        backgroundColor: Color(0xFF8a25d0),
      ),
    );
  }
}

void _shareImage(String asset) async {
  try {
    final ByteData bytes = await rootBundle.load(asset);
    await WcFlutterShare.share(
        sharePopupTitle: 'share',
        fileName: 'share.png',
        mimeType: 'image/png',
        bytesOfFile: bytes.buffer.asUint8List());
  } catch (e) {
    print('error: $e');
  }
}
