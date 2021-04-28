import 'package:flutter/material.dart';
import 'asset_list.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: mainAssetList.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => navigationList[index],
                ),
              );
            },
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      mainAssetList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    titleList[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      inherit: true,
                      color: Colors.white,
                      height: 12,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(centerTitle: true, title: Text('Kategoriler')),
    );
  }
}
