import 'package:flutter/material.dart';

class CommonIndicator {
  static Widget loadingIndicator() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(),
          SizedBox(
            height: 10,
          ),
          Text("Loading",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              )),
        ],
      ),
    );
  }

  static Widget imageCircle(
      Color backgroundColor, double sizeRadius, String url) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: sizeRadius,
      backgroundImage: NetworkImage(url),
    );
  }
}
