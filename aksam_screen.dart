import 'package:flutter/material.dart';
import 'asset_list.dart';

class AksamScreen extends StatefulWidget {
  final String title;

  const AksamScreen({Key key, @required this.title}) : super(key: key);

  @override
  _AksamScreenState createState() => _AksamScreenState();
}

class _AksamScreenState extends State<AksamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: aksamList.length,
        itemBuilder: (BuildContext context, int index) => Container(
          child: Card(
            child: Image.asset(
              aksamList[index],
              fit: BoxFit.cover,
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
