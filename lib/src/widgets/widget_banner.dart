// import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/models/models_img_banner.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class CtBanner extends StatelessWidget {
  final List<ModelImagenBanner> imgs;
  final bool isFormAssets;
  final bool? showdescription;
  final Widget? topChild;
  final Widget? bottomChild;
  final double hg;
  final BorderRadius? radius;
  const CtBanner({
    Key? key,
    required this.imgs,
    this.isFormAssets = true,
    this.topChild,
    this.bottomChild,
    this.hg = 0.3,
    this.radius,
    this.showdescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topChild != null) topChild!,
        ScrollCards(
          itemCount: imgs.length,
          height: height * hg,
          itemColorNoSelected: lPrimaryColor.withAlpha(150),
          itemColorSelected: lPrimaryColor,
          currentPage: (value) {},
          radius: radius,
          itembuilder: (context, index) {
            return cardBaner(imgs[index],
                showDescription: showdescription ?? true);
          },
        ),
        if (bottomChild != null) bottomChild!,
      ],
    );
  }

  Widget cardBaner(ModelImagenBanner imgBanner, {bool showDescription = true}) {
    return Stack(
      fit: StackFit.expand,
      children: [
        cardContainer(imgBanner.url),
        if (showDescription)
          descriptionCads(
            imgBanner.title,
            imgBanner.description,
          )
      ],
    );
  }

  Widget cardContainer(String url) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: isFormAssets
          ? Image.asset(
              url,
              fit: BoxFit.cover,
            )
          : Image.network(
              url,
              fit: BoxFit.cover,
            ),
    );
  }

  Widget descriptionCads(String title, String description) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.black45,
        width: double.infinity,
        height: 105,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                title,
                color: Colors.white,
                type: 'title2',
                maxLines: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              text(
                description,
                color: Colors.white,
                maxLines: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ScrollCards extends StatefulWidget {
  final int itemCount;
  final Function(int value) currentPage;
  final double height;
  final BorderRadius? radius;
  final Widget Function(BuildContext context, int index) itembuilder;
  final Color itemColorSelected;
  final Color itemColorNoSelected;

  const ScrollCards({
    Key? key,
    required this.itemCount,
    required this.height,
    required this.currentPage,
    required this.itembuilder,
    this.itemColorSelected = Colors.white,
    this.itemColorNoSelected = Colors.grey,
    this.radius,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ScrollCardsState createState() => _ScrollCardsState();
}

class _ScrollCardsState extends State<ScrollCards> {
  PageController pageLocalsCtrl = PageController();
  int _currentPage = 0;
  Timer? timer;
  @override
  void initState() {
    pageLocalsCtrl = PageController(
      initialPage: 0,
    );
    super.initState();
    autoScroll();
  }

  @override
  void dispose() {
    pageLocalsCtrl.dispose();
    timer!.cancel();
    super.dispose();
  }

  void autoScroll() {
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_currentPage >= widget.itemCount - 1) {
        pageLocalsCtrl.animateToPage(
          0,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInCubic,
        );
      } else {
        pageLocalsCtrl.animateToPage(
          _currentPage + 1,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInCubic,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          cardsContainer(),
          dotsItems(),
        ],
      ),
    );
  }

  Padding dotsItems() {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.height * 0.03,
      ),
      child: itemSelected(
        _currentPage,
        widget.itemCount,
      ),
    );
  }

  Widget cardsContainer() {
    return Expanded(
      child: ClipRRect(
        borderRadius: widget.radius ?? BorderRadius.circular(18),
        child: Container(
          color: Colors.transparent,
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageLocalsCtrl,
            onPageChanged: (value) {
              widget.currentPage(value);
              setState(() {
                _currentPage = value;
              });
            },
            itemCount: widget.itemCount,
            itemBuilder: widget.itembuilder,
          ),
        ),
      ),
    );
  }

  Widget itemSelected(int indexItem, int countItem) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        countItem,
        (index) {
          return itemIconSelected(
            selected: index == indexItem ? true : false,
          );
        },
      ),
    );
  }

  Widget itemIconSelected({bool selected = false}) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      duration: const Duration(
        milliseconds: 300,
      ),
      curve: Curves.easeInOutQuart,
      height: selected ? 10 : 8,
      width: selected ? 20 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: selected ? widget.itemColorSelected : widget.itemColorNoSelected,
      ),
    );
  }
}
