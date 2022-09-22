import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


typedef OnWidgetSizeChange = void Function(Size size);

class MeasureSizeRenderObject extends RenderProxyBox {
  Size? oldSize;
  final OnWidgetSizeChange onChange;

  MeasureSizeRenderObject(this.onChange);

  @override
  void performLayout() {
    super.performLayout();

    Size newSize = child!.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onChange(newSize);
    });
  }
}

class MeasureSize extends SingleChildRenderObjectWidget {
  final OnWidgetSizeChange onChange;

  const MeasureSize({
    Key? key,
    required this.onChange,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return MeasureSizeRenderObject(onChange);
  }
}

class FunctiontoMeasureAnyWidget extends StatefulWidget {
  const FunctiontoMeasureAnyWidget({Key? key}) : super(key: key);

  @override
  State<FunctiontoMeasureAnyWidget> createState() =>
      _FunctiontoMeasureAnyWidgetState();
}

class _FunctiontoMeasureAnyWidgetState
    extends State<FunctiontoMeasureAnyWidget> {
  @override
  Widget build(BuildContext context) {
    MeasureSize(
      child: Container(),
      onChange: (size) {
        var myChildSize = Size.zero;
        setState(() {
          myChildSize = size;
          print(myChildSize);
        });
      },
    );
    return Container();
  }
}
