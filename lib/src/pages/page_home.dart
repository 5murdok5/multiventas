import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_navigation_page.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/models/models_img_banner.dart';
import 'package:multiservicios/src/pages/page_detail_service.dart';
import 'package:multiservicios/src/widgets/widget_banner.dart';
import 'package:multiservicios/src/widgets/widget_search.dart';
import 'package:multiservicios/src/widgets/widget_service_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: WdSearch(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: bannerSection(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => WdCardService(
                onTap: () => toPage(
                  page: const PgDetailService(),
                ),
              ),
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget bannerSection() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddApp,
        vertical: 18,
      ),
      child: CtBanner(
        imgs: listImages,
        isFormAssets: false,
        hg: 0.27,
        showdescription: false,
      ),
    );
  }
}
