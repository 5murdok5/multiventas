import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_card.dart';

class OverlayCont extends StatelessWidget {
  final Widget? widget;
  const OverlayCont({Key? key, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                topSection(constraints.maxHeight),
                widget ?? const SizedBox(),
                bottomSection(constraints.maxHeight),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget iconCont() {
    return Align(
      alignment: Alignment.topRight,
      child: SafeArea(
        child: CtCard(
          margin: EdgeInsets.only(right: paddInit - 25, top: 10),
          width: 120,
          height: 45,
          color: lPrimaryColor,
          child: const SizedBox(),
        ),
      ),
    );
  }

  Widget topSection(double hgScreen) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(
            width * 2,
            height * 0.2,
          ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
        ),
        iconCont()
      ],
    );
  }

  Widget bottomSection(double hgScreen) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomPaint(
        size: Size(
            width * 2,
            height *
                0.2), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainterBottom(),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()..color = lIconColor;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.001);
    path0.lineTo(size.width, size.height * 0.001);
    path0.lineTo(size.width, size.height * 0.3);
    path0.lineTo(size.width * 0.0008333, size.height * 0.6);
    path0.lineTo(0, size.height * 0.0028571);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainterBottom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()..color = lPrimaryColor;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.7);
    path0.lineTo(size.width, size.height * 0.4);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    path0.lineTo(0, size.height * 0.5);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
