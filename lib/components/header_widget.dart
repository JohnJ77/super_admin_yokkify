import 'package:super_admin_yokkify/custom_widgets/custom_popup_button.dart';
import 'package:super_admin_yokkify/login/login_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomPopupButton(
            buttonColor: Colors.transparent,
            paddingBoton: EdgeInsets.all(0),
            text: Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Turismo Medellín',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 30,
                  ),
                ],
              ),
            ),
            popupMenuItem: LoginWidget(),
            offsetMenu: Offset(0.0, 65.0),
            menuWidth: MediaQuery.of(context).size.width * 0.4,
            menuHeight: MediaQuery.of(context).size.height * 0.65,
          ),
        ],
      ),
    );
  }
}
