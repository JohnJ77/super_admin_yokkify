import 'package:flutter/material.dart';

class CustomPopupButton extends StatelessWidget {
  const CustomPopupButton(
      {Key? key,
      required this.buttonColor,
      required this.paddingBoton,
      required this.text,
      required this.popupMenuItem,
      required this.offsetMenu,
      required this.menuWidth,
      required this.menuHeight})
      : super(key: key);

  final Color buttonColor;
  final EdgeInsets paddingBoton;
  final dynamic text;
  final Widget popupMenuItem;
  final Offset offsetMenu;
  final double menuWidth;
  final double menuHeight;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Colors.transparent,
      elevation: 0,
      offset: offsetMenu,
      constraints: BoxConstraints.expand(width: menuWidth, height: menuHeight),
      tooltip: "",
      // shape: OutlineInputBorder(
      //     borderSide:
      //         BorderSide(color: Color.fromRGBO(255, 255, 255, 0), width: 1),
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(15),
      //     )),
      child: Container(
        padding: paddingBoton,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          //more than 50% of width makes circle
        ),
        child: text,
      ),
      itemBuilder: (context) => [
        CustomPopupMenuItem(
          color: Colors.transparent,
          enabled: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [popupMenuItem],
          ),
        ),
      ],
    );
  }
}

class CustomPopupMenuItem<T> extends PopupMenuItem<T> {
  final Color color;

  const CustomPopupMenuItem({
    required bool enabled,
    required Widget child,
    required this.color,
  }) : super(enabled: enabled, child: child);

  @override
  _CustomPopupMenuItemState<T> createState() => _CustomPopupMenuItemState<T>();
}

class _CustomPopupMenuItemState<T>
    extends PopupMenuItemState<T, CustomPopupMenuItem<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: super.build(context),
      color: widget.color,
    );
  }
}
