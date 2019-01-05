import 'package:buscador_gifs/util/cache_gif.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              Share.share(_gifData["images"]["original"]["url"]);
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(child: CacheGif(_gifData["images"]["original"]["url"])),
    );
  }
}
