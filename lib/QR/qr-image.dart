import 'package:flutter/material.dart';
import 'package:folk/QR/qr-painter.dart';
import 'package:qr/qr.dart';

class QrImage extends StatelessWidget {
  QrImage({
    @required String data,
    this.size,
    this.padding = const EdgeInsets.all(10.0),
    this.backgroundColor,
    Color foregroundColor = const Color(0xff538b22),
    int version = 4,
    int errorCorrectionLevel = QrErrorCorrectLevel.L,
  }) : _painter = new QrPainter(data, foregroundColor, version, errorCorrectionLevel);

  final QrPainter _painter;
  final Color backgroundColor;
  final EdgeInsets padding;
  final double size;

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: size,
      height: size,
      color: backgroundColor,
      child: new Padding(
        padding: this.padding,
        child: new CustomPaint(
          painter: _painter,
        ),
      ),
    );
  }
}