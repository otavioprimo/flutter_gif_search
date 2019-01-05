import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:buscador_gifs/util/loading_gif.dart';

class CacheGif extends StatelessWidget {
  final String _gifUrl;

  CacheGif(this._gifUrl);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: Container(
        width: 200.0,
        height: 200.0,
        alignment: Alignment.center,
        child: LoadingGif(),
      ),
      imageUrl: _gifUrl,
      fit: BoxFit.cover,
      errorWidget: new Icon(Icons.error),
    );
  }
}
