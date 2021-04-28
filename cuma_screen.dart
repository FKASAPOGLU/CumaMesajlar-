import 'package:flutter/material.dart';
import 'asset_list.dart';
import 'image_view.dart';


class CumaScreen extends StatefulWidget {
  final String title;

  const CumaScreen({Key key, @required this.title}) : super(key: key);

  @override
  _CumaScreenState createState() => _CumaScreenState();
}

class _CumaScreenState extends State<CumaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: cumaList.length,
        itemBuilder: (BuildContext context, int index) => Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageView(asset: cumaList[index]),
                ),
              );
            },
            child: Card(
              child: Image.asset(
                cumaList[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      ),
      appBar: AppBar(title: Text(widget.title)),
    );
  }
}
