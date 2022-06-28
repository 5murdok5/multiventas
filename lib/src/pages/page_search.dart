import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_actions.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_appbar.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class PageSearch extends StatelessWidget {
  const PageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => dismisKeybr(context),
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CtAppBar(
              title: 'Buscar Servicios',
            ),
            inputSearch(),
            noItemsOnsearch(),
          ],
        ),
      ),
    );
  }

  Widget inputSearch() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddApp,
      ),
      child: TextFormField(
        style: theme.textTheme.bodyText1!.copyWith(
          color: lSecondaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black45,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 126, 126, 126), width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          hintText: 'Mobile Number',
        ),
      ),
    );
  }

  Widget noItemsOnsearch() {
    return text(
      'Servicio no encontrado...',
      type: 'body1',
      color: const Color.fromARGB(134, 158, 158, 158),
      padding: EdgeInsets.symmetric(
        horizontal: paddApp,
        vertical: 25,
      ),
    );
  }
}
