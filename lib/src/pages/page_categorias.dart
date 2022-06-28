import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multiservicios/src/helpers/helpers_navigation_page.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/pages/page_home.dart';
import 'package:multiservicios/src/pages/page_map.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_card.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class PgCategory extends StatelessWidget {
  const PgCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddApp + 10,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: titleCategory(),
            ),
            SliverToBoxAdapter(
              child: btnSelectLocation(),
            ),
            //TODO Grid view
            // gridView(),
            //TODO listView
            listView()
          ],
        ),
      ),
    );
  }

  SliverList listView() {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(
          5,
          (index) => contCategory(isGrid: false),
        ),
      ),
    );
  }

  SliverGrid gridView() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return contCategory();
      }, childCount: 5),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 170,
      ),
    );
  }

  Widget titleCategory() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        text(
          'Selecciona Una Categoria',
          type: 'title',
          padding: EdgeInsets.only(
            top: height * 0.08,
            bottom: 5,
          ),
        ),
        text(
          'Tenemos una gran variedad de servicios para ti, selecciona una y explora',
          maxLines: 4,
          padding: EdgeInsets.only(
            bottom: height * 0.04,
          ),
        ),
      ],
    );
  }

  Widget contCategory({bool isGrid = false}) {
    return InkWell(
      onTap: () => toPage(
        page: const HomePage(),
      ),
      child: CtCard(
        margin: EdgeInsets.all(isGrid ? 12 : 5),
        showShadow: true,
        shadowColor: const Color.fromARGB(7, 0, 0, 0),
        child: isGrid ? gridViewCont() : listViewCont(),
      ),
    );
  }

  Widget listViewCont() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: text('Electricista', type: 'title1'),
          ),
          const FaIcon(
            FontAwesomeIcons.bolt,
            size: 35,
          ),
        ],
      ),
    );
  }

  Widget gridViewCont() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FaIcon(
          FontAwesomeIcons.bolt,
          size: 40,
        ),
        text(
          'Electricista',
          type: 'title1',
          padding: const EdgeInsets.only(
            top: 15,
          ),
        ),
      ],
    );
  }

  Widget btnSelectLocation() {
    return InkWell(
      onTap: () => toPage(page: const MapPage()),
      child: CtCard(
        showShadow: true,
        shadowColor: const Color.fromARGB(7, 0, 0, 0),
        radius: 100,
        margin: EdgeInsets.fromLTRB(
          width * 0.1,
          0,
          width * 0.1,
          15,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.settings,
              color: lPrimaryColor,
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            text(
              'Cambiar ubicación',
            ),
          ],
        ),
      ),
    );
  }
}
