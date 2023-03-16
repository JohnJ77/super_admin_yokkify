import '../components/boton_widget2_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

Future popupWidgetExitoso(BuildContext context, {text = "" }) async {
  return  showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.white,
          content: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Image.asset(
                    'assets/images/aprobacion.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Exitosa',
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).subtitle1Family,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).subtitle1Family),
                      ),
                ),
                Text(
                  (text == "") ?  'Hemos realizado los cambios de forma exitosa' : text,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: BotonWidget2Widget(
                        text: 'Ok',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
