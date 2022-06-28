import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiservicios_proveedor/src/logic/providers/provider_register.dart';
import 'package:multiservicios_proveedor/src/pages/page_register/register_componets/data_section.dart';
import 'package:multiservicios_proveedor/src/pages/page_register/register_componets/dni_section.dart';
import 'package:multiservicios_proveedor/src/pages/page_register/register_componets/loca_data_section.dart';
import 'package:multiservicios_proveedor/src/pages/page_register/register_componets/porfolio_section.dart';
import 'package:provider/provider.dart';

class PgRegister extends StatelessWidget {
  final bool isCliente;
  const PgRegister({Key? key, this.isCliente = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: PageView(
          controller: context.read<PrvRegister>().pgctr,
          physics: const BouncingScrollPhysics(),
          children: const [
            DNISection(),
            DataSection(),
            LocalDataSection(),
            ProfolioSection(),
          ],
        ),
      ),
    );
  }
}
