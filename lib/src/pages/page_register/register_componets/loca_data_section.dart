import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios_proveedor/src/themes/theme_themes.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_btn_cont.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_card.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_chips.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_input.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_overlay.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_text.dart';

class LocalDataSection extends StatelessWidget {
  const LocalDataSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: OverlayCont(
        widget: SizedBox(
          width: width,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: paddApp + 5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                titleSection(),
                selectService(),
                text(
                  'Mis Servicios',
                  type: 'title1',
                  padding: EdgeInsets.only(
                    top: 2,
                    bottom: 10,
                  ),
                ),
                chipsContainer(),
                habAspacework(),
                fomrLoctionLocal(),
                const Align(
                  alignment: Alignment.centerRight,
                  child: BtnContinuar(
                    titleBtn: 'Continuar',
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget titleSection() {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          text(
            '¡Ya Falta Poco!',
            type: 'title',
            padding: EdgeInsets.only(
              top: height * 0.03,
              bottom: 5,
            ),
          ),
          text(
            'Solo nos queda preguntar, información de tus servicios.',
            maxLines: 5,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget selectService() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0, top: height * 0.07),
      child: DropMenuList(
        valueSelected: (value) {},
        isExpanded: true,
        items: const [
          'Seleccionar Servicio',
          'Agregar un servicio',
          'Carpinteria',
          'Construccion',
          'Arquitectura',
          'Seguridad',
          'Atencion Medica Personalizada',
        ],
      ),
    );
  }

  Widget chipsContainer() {
    return Container(
      padding: EdgeInsets.only(
        bottom: 15,
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

  Widget habAspacework() {
    return CtCard(
      showShadow: true,
      radius: 12,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: text('Posee un Local/lugar de trabajo'),
          ),
          Switch(
            value: true,
            onChanged: (vl) {},
            activeColor: lPrimaryColor,
          )
        ],
      ),
    );
  }

  Widget fomrLoctionLocal() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        inputLocation(titleinp: 'Ubicacion del Local'),
        inputLocation(
          titleinp: 'Ubicacion de Recidencia',
        ),
        const Input(
          maxLines: null,
          title: 'Descricion del local',
        )
      ],
    );
  }

  Widget inputLocation({required String titleinp}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Input(
            title: titleinp,
            padding: const EdgeInsets.only(bottom: 15),
            prefixIcon: const Icon(
              Icons.person_sharp,
            ),
          ),
        ),
        const CtCard(
          color: lPrimaryColor,
          margin: EdgeInsets.only(left: 5, top: 5),
          child: Icon(
            Icons.near_me_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
