import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_load.dart';

class Button extends StatelessWidget {
  final double radius;
  final String textbtn;
  final Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final Color? colorBtn;
  final Color? colorText;
  final bool onlyBorder;
  final bool showArrowIcon;
  final bool? load;
  final bool? disable;
  final Widget? widgetText;

  final EdgeInsetsGeometry margin;
  const Button({
    Key? key,
    this.radius = 10,
    this.textbtn = "text_example",
    this.onTap,
    this.colorBtn = lPrimaryColor,
    this.colorText = Colors.white,
    this.onlyBorder = false,
    this.showArrowIcon = true,
    this.margin = const EdgeInsets.symmetric(vertical: 4),
    this.load,
    this.disable = false,
    this.padding,
    this.widgetText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: load == true ? 0.82 : 1.0,
      child: Padding(
        padding: margin,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Material(
                color: onlyBorder
                    ? Colors.transparent
                    : disable == true
                        ? Colors.grey
                        : colorBtn,
                child: InkWell(
                  splashColor: onlyBorder
                      ? colorBtn!.withAlpha(100)
                      : lPrimaryColor.withAlpha(100),
                  onTap: load == true || disable == true ? null : onTap,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: double.infinity,
                    padding:
                        padding ?? const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: onlyBorder
                            ? disable == true
                                ? Colors.grey[300]!
                                : colorBtn!
                            : Colors.transparent,
                        width: 1.7,
                      ),
                      borderRadius: BorderRadius.circular(radius),
                      color: onlyBorder
                          ? Colors.transparent
                          : disable == true
                              ? Colors.grey
                              : Colors.transparent,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widgetText ?? const SizedBox(),
                        Text(
                          textbtn,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.subtitle1!.copyWith(
                            color: onlyBorder
                                ? disable == true
                                    ? Colors.grey[300]
                                    : colorBtn
                                : disable == true
                                    ? Colors.grey[300]
                                    : colorText ?? lText,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: load == true
                    ? loadwidget(
                        colorIndicator: onlyBorder
                            ? disable!
                                ? Colors.white
                                : colorBtn
                            : disable!
                                ? Colors.white
                                : colorText,
                      )
                    : Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: showArrowIcon
                            ? onlyBorder
                                ? disable == true
                                    ? Colors.grey[300]
                                    : colorBtn
                                : disable == true
                                    ? Colors.grey[300]
                                    : colorText
                            : Colors.transparent,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
