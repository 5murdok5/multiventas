import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios_proveedor/src/themes/theme_themes.dart';

class Input extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool? showError;
  final EdgeInsetsGeometry padding;
  final Widget? prefixIcon;
  final int? maxLines;
  final bool readOnly;
  final bool autofocus;
  final Function()? onTap;
  final Color? colorInput;
  final Color colorBorderInp;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final bool uppercasse;
  final bool enable;
  final double radiusInp;
  const Input({
    Key? key,
    this.title = "text example",
    this.controller,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
    this.obscureText,
    this.showError,
    this.padding = const EdgeInsets.only(
      bottom: 12,
    ),
    this.prefixIcon,
    this.maxLines,
    this.readOnly = false,
    this.onTap,
    this.colorInput = Colors.transparent,
    this.autofocus = false,
    this.onChanged,
    this.focusNode,
    this.uppercasse = true,
    this.enable = true,
    this.radiusInp = 10,
    this.colorBorderInp = lSecondaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        focusNode: focusNode,
        onTap: onTap,
        readOnly: readOnly,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        autofocus: autofocus,
        maxLines: maxLines,
        enabled: enable,
        inputFormatters: uppercasse
            ? [
                UpperCaseTextFormatter(),
              ]
            : [],
        onChanged: onChanged,
        style: theme.textTheme.bodyText1!.copyWith(
          color: showError == true ? Colors.red : colorBorderInp,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          labelText: title,
          fillColor: colorInput,
          labelStyle: theme.textTheme.bodyText1!.copyWith(
            color:
                showError == true ? Colors.red : colorBorderInp.withAlpha(200),
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorBorderInp,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(radiusInp),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorBorderInp,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorBorderInp,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorBorderInp.withAlpha(150),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class DropMenuList extends StatefulWidget {
  final bool isExpanded;
  final List<String> items;
  final bool? showError;
  final Function(String value) valueSelected;
  const DropMenuList({
    Key? key,
    this.isExpanded = false,
    this.showError,
    required this.valueSelected,
    required this.items,
  }) : super(key: key);

  @override
  State<DropMenuList> createState() => _DropMenuListState();
}

class _DropMenuListState extends State<DropMenuList> {
  String valueSelected = "";
  @override
  void initState() {
    setState(() {
      valueSelected = widget.items[0];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: widget.showError == true
              ? Colors.red
              : lSecondaryColor.withAlpha(205),
          style: BorderStyle.solid,
          width: 0.80,
        ),
      ),
      child: DropdownButton<String>(
        style: theme.textTheme.bodyText1!.copyWith(
          color: widget.showError == true ? Colors.red : lSecondaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),
        value: valueSelected,
        isExpanded: widget.isExpanded,
        borderRadius: BorderRadius.circular(8),
        items: widget.items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            valueSelected = value!;
          });
          widget.valueSelected(value!);
        },
      ),
    );
  }
}
