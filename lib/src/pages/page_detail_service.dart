import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_actions.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/models/models_img_banner.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_banner.dart';
import 'package:multiservicios/src/widgets/widget_card.dart';
import 'package:multiservicios/src/widgets/widget_chips.dart';
import 'package:multiservicios/src/widgets/widget_img_container.dart';
import 'package:multiservicios/src/widgets/widget_qualitify.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class PgDetailService extends StatelessWidget {
  const PgDetailService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          contData(),
          btnBack(),
          btnsContact(),
        ],
      ),
    );
  }

  SingleChildScrollView contData() {
    return SingleChildScrollView(
      child: Column(
        children: [
          bannerservSection(),
          infoUser(),
          const SizedBox(
            height: 10,
          ),
          text(
            'Incididunt adipisicing tempor occaecat ex velit anim adipisicing sunt non culpa id voluptate fugiat. Cupidatat cupidatat duis id nulla aliquip dolor est. Minim proident aute sint laboris sint exercitation. Nisi officia amet elit fugiat ut velit.',
            maxLines: 3,
            padding: EdgeInsets.symmetric(
              horizontal: paddApp,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 15,
          ),
          listServices(),
          btnViewMore(),
          addresSection(),
          porfolio(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Widget btnsContact() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CtCard(
        padding: EdgeInsets.symmetric(
          vertical: 3,
          horizontal: paddApp,
        ),
        showShadow: true,
        shadowOfs: Offset(0, -8),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: text(
                'Más Información',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(lPrimaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(
                      color: lPrimaryColor,
                    ),
                  ),
                ),
              ),
              onPressed: () {},
              child: text(
                'Contactar',
                type: 'title1',
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget btnBack() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        child: InkWell(
          onTap: () => back(),
          child: const CtCard(
            color: Color.fromARGB(209, 255, 255, 255),
            child: Icon(
              Icons.chevron_left_outlined,
              color: lIconColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget bannerservSection() {
    return Stack(
      children: [
        CtBanner(
          imgs: listImages,
          isFormAssets: false,
          radius: const BorderRadius.only(
            bottomRight: Radius.circular(25),
          ),
          hg: 0.45,
          showdescription: false,
        ),
      ],
    );
  }

  Widget infoUser() {
    return SizedBox(
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddApp,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                text(
                  'Jhon Doe',
                  type: 'title',
                ),
                const WdQualitify(
                  numOn: 2,
                  sizeIcon: 15,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listServices() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddApp,
      ),
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        spacing: 5,
        children: List.generate(
          7,
          (index) => CtChips(
            textChip: 'value $index',
          ),
        ),
      ),
    );
  }

  Widget btnViewMore({Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: paddApp - 5),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            text(
              'Ver mas',
              color: lPrimaryColor,
              size: 15,
              fontWeight: FontWeight.w500,
            ),
            const Icon(
              Icons.chevron_right_rounded,
              color: lPrimaryColor,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }

  Widget addresSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddApp,
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          text(
            'Dirección',
            type: 'title',
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
          ),
          CtCard(
            height: height * 0.22,
            width: double.infinity,
            showShadow: true,
            color: Colors.blue[50],
            child: Stack(
              children: const [
                Center(
                  child: Icon(
                    Icons.location_on,
                    color: lPrimaryColor,
                    size: 30,
                  ),
                ),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: TextButton(
                //     style: ButtonStyle(

                //     ),
                //     onPressed: () {},
                //     child: text(
                //       'ver mapa',
                //     ),
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget porfolio() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddApp,
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          text(
            'Portafolio',
            type: 'title',
            padding: const EdgeInsets.only(
              bottom: 10,
              top: 15,
            ),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: List.generate(
              6,
              (index) => CtCard(
                margin: const EdgeInsets.all(4),
                height: 110,
                width: 110,
                padding: const EdgeInsets.all(0),
                child: imgContainer(
                  'https://quenoticias.com/wp-content/uploads/2021/10/Gato.jpg',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
