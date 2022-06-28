import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_card.dart';
import 'package:multiservicios/src/widgets/widget_img_container.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class WdCardService extends StatelessWidget {
  final Function()? onTap;
  const WdCardService({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CtCard(
        margin: EdgeInsets.only(
          bottom: 10,
          left: paddApp,
          right: paddApp,
        ),
        showShadow: true,
        child: Column(
          children: [
            imgContainer(
              'https://tecnne.com/wp-content/uploads/2014/12/Allied-Works-Willapa-Bay-House-tecnne.jpg',
              heighti: height * 0.17,
              radius: 12,
            ),
            userData(),
            // text(
            //   'Fugiat eu dolor fugiat dolor laboris id nulla aliquip deserunt amet do consectetur.',
            //   maxLines: 2,
            // )
          ],
        ),
      ),
    );
  }

  Widget userData() {
    return Transform.translate(
      offset: const Offset(0, -14),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            imgContainer(
              'https://tecnne.com/wp-content/uploads/2014/12/Allied-Works-Willapa-Bay-House-tecnne.jpg',
              heighti: 75,
              widthi: 75,
              radius: 10,
            ),
            Expanded(
              child: infoUser(),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoUser() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: text(
                  'Jhon Doe',
                  type: 'title1',
                ),
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => const FaIcon(
                    FontAwesomeIcons.star,
                    color: lPrimaryColor,
                    size: 15,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          text(
            '104 Ashmore Crescent, Markham, ON L3R 6V1, Can dsad',
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
