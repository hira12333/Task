import 'package:flutter/widgets.dart';

class AppUtils {
  double mqw = 0;
  double mqh = 0;
  double blockSizeHorizontal = 0;
  double blockSizeVertical = 0;
  double textMultiplier = 0;
  double imageSizeMultiplier = 0;
  double heightMultiplier = 0;

  AppUtils(BuildContext context) {
    mqw = MediaQuery.of(context).size.width;
    mqh = MediaQuery.of(context).size.height;

    blockSizeHorizontal = mqw / 100;
    blockSizeVertical = mqh / 100;

    textMultiplier = blockSizeVertical;
    imageSizeMultiplier = blockSizeHorizontal;
    heightMultiplier = blockSizeVertical;
  }

// You can add more custom calculations or methods based on your needs.
}
