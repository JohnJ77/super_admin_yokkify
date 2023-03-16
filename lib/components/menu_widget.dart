import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(),
                  child: SvgPicture.asset(
                    'assets/images/Logo.svg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () => GoRouter.of(context).go('/estadisticas'),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                    height: double.infinity,
                    decoration: BoxDecoration(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.03,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(),
                    child: SvgPicture.asset(
                      'assets/images/icon_estadisticas.svg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Estadisticas',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => GoRouter.of(context).go('/proveedores'),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                    height: double.infinity,
                    decoration: BoxDecoration(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.03,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(),
                    child: SvgPicture.asset(
                      'assets/images/icon_proveedor.svg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Proveedores',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => GoRouter.of(context).go('/destinos'),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                    height: double.infinity,
                    decoration: BoxDecoration(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.03,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(),
                    child: SvgPicture.asset(
                      'assets/images/icon_destinos.svg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Destinos',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => GoRouter.of(context).go('/touresDeYokkify'),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                    height: double.infinity,
                    decoration: BoxDecoration(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.03,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(),
                    child: SvgPicture.asset(
                      'assets/images/icon_tour.svg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Toures de Yokkify',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => GoRouter.of(context).go('/bokking'),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                    height: double.infinity,
                    decoration: BoxDecoration(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.03,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(),
                    child: SvgPicture.asset(
                      'assets/images/icon_booking.svg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Booking',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => GoRouter.of(context).go('/contabilidad'),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                    height: double.infinity,
                    decoration: BoxDecoration(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.03,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(),
                    child: SvgPicture.asset(
                      'assets/images/icon_contabilidad.svg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Contabilidad',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.38,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '© Copyright 2022 Yoffify',
                  style: TextStyle(
                    fontFamily: 'Gilory',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Powered by ',
                      style: TextStyle(
                        fontFamily: 'Gilory',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Ideas App Colombia',
                      style: TextStyle(
                        fontFamily: 'Gilory',
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
