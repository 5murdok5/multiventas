import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios_proveedor/src/logic/providers/provider_register.dart';
import 'package:multiservicios_proveedor/src/themes/theme_themes.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_btn_cont.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_card.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_overlay.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_text.dart';
import 'package:provider/provider.dart';

class DNISection extends StatelessWidget {
  const DNISection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: OverlayCont(
        widget: contFormLg(context),
      ),
    );
  }

  Widget contFormLg(BuildContext cont) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: paddApp + 5,
        ),
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleLg(),
            sbtitleLg(),
            contImgCard(),
            Align(
              alignment: Alignment.centerRight,
              child: BtnContinuar(
                onPressed: () => cont.read<PrvRegister>().changePage(),
                titleBtn: 'Está Listo?, Continuemos',
                disable: true,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget titleLg() {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          text(
            '¡Faltan algunos datos!',
            type: 'title',
            padding: EdgeInsets.only(
              top: height * 0.03,
              bottom: 5,
            ),
          ),
          text(
            'Para continuar se requiere que llenes unos datos, como información para tus clientes.',
            maxLines: 5,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget sbtitleLg() {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: height * 0.07,
          ),
          text('Fotografía de Identificación', type: 'title'),
          const SizedBox(
            height: 5,
          ),
          text(
            'Para mayor seguridad de nuestros clientes debemos corroborar tu identidad. No te preocupes, es solo un paso adicional.',
            maxLines: 5,
          ),
        ],
      ),
    );
  }

  Widget contImgCard({String? imgImage}) {
    return CtCard(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      color: const Color.fromARGB(29, 53, 56, 70),
      borderColor: lSecondaryColor,
      showborder: true,
      height: 170,
      width: width,
      widthborder: 1.0,
      child: imgImage != null
          ? Image.network(imgImage)
          : Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.chrome_reader_mode_rounded,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      text(
                        'Parte Frontal',
                        fontWeight: FontWeight.w600,
                        color: lText.withAlpha(180),
                      )
                    ],
                  ),
                  text(
                    'Agregar Imagen',
                    size: 12,
                    color: lText.withAlpha(180),
                  )
                ],
              ),
            ),
    );
  }
}
