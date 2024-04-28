import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardsMaterial extends StatefulWidget {
  final double? cardWidth;
  final double? cardHeight;
  final Color? backgroundCardColor;
  final Color? colorTexts;
  final String titleText;
  final String subtitleText;
  final Widget iconEditButton;
  final Widget iconDeleteButton;
  final Widget iconCheckTodo;
  final Color? colorIconsButtons;
  final VoidCallback? onPress;
  final double? radiusCircularCard;
  CardsMaterial({
    super.key,
    this.cardWidth,
    this.cardHeight,
    this.backgroundCardColor,
    this.colorTexts,
    required this.titleText,
    required this.subtitleText,
    required this.iconEditButton,
    required this.iconDeleteButton,
    required this.iconCheckTodo,
    this.colorIconsButtons,
    this.onPress,
    this.radiusCircularCard,
  });

  factory CardsMaterial.infoCard(
      {String? titleCard,
      String? subtitleCard,
      double? widthCard,
      double? heightCard,
      Color? backgroundCard,
      Color? colorTexts,
      Color? colorIconsButtons,
      required Widget iconEditButton,
      required Widget iconDeleteButton,
      required Widget iconCheckTodo,
      VoidCallback? onPressed,
      double? radiusCiruclarCard}) {
    return CardsMaterial(
      cardWidth: widthCard,
      cardHeight: heightCard,
      backgroundCardColor: backgroundCard,
      colorTexts: colorTexts,
      titleText: titleCard ?? "",
      subtitleText: subtitleCard ?? "",
      iconEditButton: iconEditButton,
      iconDeleteButton: iconDeleteButton,
      iconCheckTodo: iconCheckTodo,
      colorIconsButtons: colorIconsButtons,
      onPress: onPressed,
      radiusCircularCard: radiusCiruclarCard,
    );
  }

  @override
  State<StatefulWidget> createState() => _CardsMaterialState();
}

class _CardsMaterialState extends State<CardsMaterial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.cardWidth,
      height: widget.cardHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radiusCircularCard ?? 8.0),
        color: widget.backgroundCardColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(widget.titleText),
              Spacer(),
              IconButton(
                  onPressed: widget.onPress, icon: widget.iconEditButton),
              const SizedBox(width: 5.0),
              IconButton(
                  onPressed: widget.onPress, icon: widget.iconDeleteButton),
              const SizedBox(width: 5.0),
              IconButton(onPressed: widget.onPress, icon: widget.iconCheckTodo),
            ],
          ),
          Text(widget.subtitleText),
        ],
      ),
    );
  }
}
