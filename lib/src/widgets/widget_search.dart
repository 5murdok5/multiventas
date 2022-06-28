import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multiservicios/src/helpers/helpers_navigation_page.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/pages/page_search.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_card.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class WdSearch extends StatelessWidget {
  const WdSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height * 0.25,
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(9, 0, 0, 0),
            offset: Offset(0, 8),
            blurRadius: 8.0,
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: paddApp,
          ),
          child: Column(
            children: [
              topSearch(),
              const SizedBox(
                height: 22,
              ),
              InkWell(
                onTap: () => toPage(
                  page: const PageSearch(),
                ),
                child: inputFake(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget topSearch() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(
            Icons.chevron_left_outlined,
            color: lPrimaryColor,
          ),
          btnLocation(),
          const FaIcon(
            FontAwesomeIcons.bars,
            color: lIconColor,
            size: 22,
          )
        ],
      ),
    );
  }

  Widget btnLocation() {
    return CtCard(
      child: Column(
        children: [
          text(
            'Ubicacion Actual',
            color: lText.withAlpha(
              180,
            ),
            size: 12,
          ),
          text(
            'Loja, Loja Ecuador',
            type: 'title1',
            color: lText.withAlpha(
              180,
            ),
            size: 13,
          ),
        ],
      ),
    );
  }

  Widget inputFake() {
    return CtCard(
      color: const Color(0xffF0F0F0),
      showborder: true,
      radius: 100,
      width: double.infinity,
      widthborder: 1.5,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.search,
            color: Colors.black45,
          ),
          const SizedBox(
            width: 8,
          ),
          text(
            'Buscar...',
          )
        ],
      ),
    );
  }
}
