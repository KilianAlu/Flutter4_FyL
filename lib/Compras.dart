import 'package:flutter/material.dart';
import 'package:flutter4/Login.dart';
import 'package:flutter4/model/Global.dart';
import 'package:flutter4/routing/routes.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'package:intl/intl.dart';

import 'model/Objeto.dart';

class Compras extends StatefulWidget{
  const Compras({super.key});
  final String a = "a";

  @override
  State<StatefulWidget> createState() => comprasState();

}
class comprasState extends State<Compras>{
 @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
       List<Objeto> objetos = [
  Objeto("Nintendo3ds", text.nintendo3ds, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.es%2FNintendo-3DS-Console-Importaci%25C3%25B3n-italiana%2Fdp%2FB004LWZK80&psig=AOvVaw0wamNB71Kvkt6KDh4wclmN&ust=1681306732805000&source=images&cd=vfe&ved=0CA4QjRxqFwoTCJjanOf5of4CFQAAAAAdAAAAABAv",NumberFormat(Intl.defaultLocale).format(200),DateTime.now()),  
  Objeto("Nintendo Switch", text.nintendoSwitch,"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.es%2FNintendo-Switch-Consola-color-Modelo%2Fdp%2FB07WKNQ8JT&psig=AOvVaw3hILu0-AwViYiHo705W61v&ust=1681306964930000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCPC9u9X6of4CFQAAAAAdAAAAABAD",NumberFormat(Intl.defaultLocale).format(200),DateTime.now()),
  Objeto(text.mesa, text.mesaTexto, "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstol.es%2Fwp-content%2Fuploads%2F2017%2F06%2FMesa_Paralax_vB-1-1200x900.jpg&tbnid=-_SVwVJ8WX9kNM&vet=12ahUKEwjC9-KE-6H-AhWypkwKHaiBDosQMygCegUIARCrAw..i&imgrefurl=https%3A%2F%2Fstol.es%2Fproducto%2Fparallax%2F&docid=SvUNwiZnhGvkOM&w=1200&h=900&q=Mesa&ved=2ahUKEwjC9-KE-6H-AhWypkwKHaiBDosQMygCegUIARCrAw",NumberFormat(Intl.defaultLocale).format(200),DateTime.now()),
  Objeto(text.microondas, text.mesaTexto,"https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.corbero.es%2Fwp-content%2Fuploads%2F2020%2F07%2FMICROONDAS_CORBERO_CMICG220W.jpg&tbnid=JNK2rJsO62fjFM&vet=12ahUKEwjn6ueX_KH-AhVtnycCHVunA-cQMygBegUIARCSBA..i&imgrefurl=https%3A%2F%2Fwww.corbero.es%2Felectrodomesticos%2Fcocina%2Fmicroondas%2Fmicroondas-de-libre-instalacion%2Fmicroondas-cmicg220w%2F&docid=3wKtuKci1kAC2M&w=1920&h=1190&q=microondas&ved=2ahUKEwjn6ueX_KH-AhVtnycCHVunA-cQMygBegUIARCSBA", NumberFormat(Intl.defaultLocale).format(200),DateTime.now()),
  Objeto(text.anillo, text.anilloTexto, "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.diamantesa.es%2Fwp-content%2Fuploads%2Fvender-anillos-sortijas-diamantes-brillantes-1024x1024.png&tbnid=aH5SxoN2t10PkM&vet=12ahUKEwiM_cC8_KH-AhWvcaQEHVG7A6UQMygBegUIARCNAw..i&imgrefurl=https%3A%2F%2Fwww.diamantesa.es%2Fvender-diamantes-brillantes%2Fjoyas-anillos%2F&docid=Y97oKvSDEcFvtM&w=1024&h=1024&q=anillo&ved=2ahUKEwiM_cC8_KH-AhWvcaQEHVG7A6UQMygBegUIARCNAw", NumberFormat(Intl.defaultLocale).format(200),DateTime.now()),
  Objeto(text.raton,text.ratonTexto, "https://www.google.com/imgres?imgurl=https%3A%2F%2Fthumb.pccomponentes.com%2Fw-300-300%2Farticles%2F28%2F287353%2Flogitech-g203-lightsync-2nd-gen-raton-gaming-8000dpi-rgb-negro.jpg&tbnid=cgBrgzLFLu4EqM&vet=12ahUKEwjX5OuO_aH-AhXimycCHakdDCwQ94IIKAF6BQgBELID..i&imgrefurl=https%3A%2F%2Fwww.pccomponentes.com%2Flogitech-g203-lightsync-2nd-gen-raton-gaming-8000dpi-rgb-negro&docid=JdMZA1o4gnzllM&w=300&h=300&q=raton%20de%20ordenador&ved=2ahUKEwjX5OuO_aH-AhXimycCHakdDCwQ94IIKAF6BQgBELID",NumberFormat(Intl.defaultLocale).format(200),DateTime.now()),
  Objeto(text.teclado, text.tecladoTexto, "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstore.storeimages.cdn-apple.com%2F4668%2Fas-images.apple.com%2Fis%2FMQ052Y%3Fwid%3D4000%26hei%3D1800%26fmt%3Djpeg%26qlt%3D95%26.v%3D1496359271525&tbnid=9Biqt_NLnN0wOM&vet=12ahUKEwiElJCq_aH-AhVGpicCHSFiCTIQMygBegUIARD7Ag..i&imgrefurl=https%3A%2F%2Fwww.apple.com%2Fes%2Fshop%2Fproduct%2FMQ052Y%2FA%2Fmagic-keyboard-con-teclado-num%25C3%25A9rico-espa%25C3%25B1ol&docid=zKhDytkeW-EMnM&w=4000&h=1800&q=tecladi&ved=2ahUKEwiElJCq_aH-AhVGpicCHSFiCTIQMygBegUIARD7Ag",NumberFormat(Intl.defaultLocale).format(200),DateTime.now()),
  Objeto(text.vaso, text.vasoTexto,"https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.carrefour.es%2Fhd_510x_%2Fcrs%2Fcdn_static%2Fcatalog%2Fhd%2F735987_00_1.jpg&tbnid=S2brQfRHnObJhM&vet=12ahUKEwjBmPrk_aH-AhVRkicCHQZTDnoQMygCegUIARDvAg..i&imgrefurl=https%3A%2F%2Fwww.carrefour.es%2Fvaso-sidra-maxi-carrefour-home-50-cl%2FVC4A-18312017%2Fp&docid=6jI4lAcNQ7-XFM&w=510&h=510&q=vaso&ved=2ahUKEwjBmPrk_aH-AhVRkicCHQZTDnoQMygCegUIARDvAg", NumberFormat(Intl.defaultLocale).format(200),DateTime.now()),
  Objeto(text.termo, text.termoTexto, "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.creapromocion.com%2F25189-large_default%2Ftermo-acero-inoxidable-500-ml-.jpg&tbnid=J2FtNIC-_w005M&vet=12ahUKEwjzvJSF_qH-AhWCp0wKHecGDSAQMygDegUIARC-Aw..i&imgrefurl=https%3A%2F%2Fwww.creapromocion.com%2Ftermos-personalizados%2F5466-termo-acero-inoxidable-500-ml-&docid=T1c6p4cuRby2YM&w=588&h=588&q=termo&ved=2ahUKEwjzvJSF_qH-AhWCp0wKHecGDSAQMygDegUIARC-Aw",  NumberFormat(Intl.defaultLocale).format(200),DateTime.now()),
  Objeto(text.monitor, text.monitorTexto,"https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.lg.com%2Fes%2Fimages%2Fmonitores%2Fmd07532390%2Fgallery%2FDm-04.jpg&tbnid=ck9OI3QrRv8PuM&vet=12ahUKEwiriaPy_qH-AhVGpicCHSFiCTIQMygCegUIARCoAw..i&imgrefurl=https%3A%2F%2Fwww.lg.com%2Fes%2Fmonitores%2Flg-24mp400-b&docid=lRgEEK5MaSRXYM&w=1100&h=730&q=Monitor&ved=2ahUKEwiriaPy_qH-AhVGpicCHSFiCTIQMygCegUIARCoAw",NumberFormat(Intl.defaultLocale).format(200),DateTime.now())
      ];
    return Scaffold(
      appBar: AppBar(
        title: Text("COMPRAS"),
      ),
      body: Center(
          child: InkWell(
              child: ListView.builder(
                  itemCount: objetos.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Hero(
                            tag: objetos[index].nombre,
                            child: Image.network(
                              objetos[index].foto,
                              width: 150,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            children: [Text(objetos[index].nombre)],
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.ciudad,arguments: objetos[index]);
                      },
                    );
                  }))),
    );
  }}