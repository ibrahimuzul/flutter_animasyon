import 'package:flutter/material.dart';

class TransformWidget extends StatefulWidget {
  @override
  _TransformWidgetState createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  var _sliderDegeri = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform Widget"),
      ),
      body: Column(
        children: [
          getSlider(),
          SizedBox(
            height: 10,
          ),
          getRotate(),
          SizedBox(
            height: 10,
          ),
          getScale(),
          SizedBox(
            height: 10,
          ),
          getTranslate(),
        ],
      ),
    );
  }

  getSlider() {
    return Slider(
      value: _sliderDegeri,
      min: 0,
      max: 100,
      onChanged: (yeniDeger) {
        setState(() {
          _sliderDegeri = yeniDeger;
        });
      },
    );
  }

  getRotate() {
    return Container(
      child: Transform.rotate(
        angle: _sliderDegeri,
        origin: Offset(50,0),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),
      ),
    );
  }

  getScale() {
    return Container(
      child: Transform.scale(
        scale: _sliderDegeri==0?1:_sliderDegeri/50,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.pink,
        ),
      ),
    );
  }

  getTranslate() {
    return Container(
      child: Transform.translate(
        offset:Offset(_sliderDegeri,_sliderDegeri),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.orange,
        ),
      ),
    );
  }
}
