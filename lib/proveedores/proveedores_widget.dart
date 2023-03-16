import 'package:shared_preferences/shared_preferences.dart';
import 'package:super_admin_yokkify/info_proveeedor/info_proveeedor_widget.dart';
import 'package:super_admin_yokkify/models/provider_per_super_admin_model.dart';
import 'package:super_admin_yokkify/services/provider/provider_service.dart';

import '../components/header_widget.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProveedoresWidget extends StatefulWidget {
  const ProveedoresWidget({Key? key}) : super(key: key);

  @override
  _ProveedoresWidgetState createState() => _ProveedoresWidgetState();
}

class _ProveedoresWidgetState extends State<ProveedoresWidget> {
  bool? switchValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ProviderService? providerService;
  String userId = "";
  String tokenId = "";

  @override
  void initState() {
    super.initState();
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      userId = prefs.getString("userId") ?? "";
      tokenId = prefs.getString("token") ?? "";
      providerService = ProviderService(tokenId);

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          MenuWidget(),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                HeaderWidget(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.12,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Proveedores',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .title3Family,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .title3Family),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.75,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).customColor1,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () => GoRouter.of(context)
                                          .go('/crearProveedor'),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30,
                                            ),
                                            Text(
                                              'Crear proveedor',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2Family),
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  decoration: BoxDecoration(),
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.5,
                                        child: DataTable2(
                                          columns: [
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'Editar',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              fixedWidth: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.07,
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'Ver más',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              fixedWidth: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.08,
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'Razón social',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'Correo electrónico',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'NIT',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    '% comisión',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'Entidad bancaria',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'Tipo de cuenta',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'Cuenta bancaria',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'Activar / Desactivar',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          rows: [],
                                          headingRowColor:
                                              MaterialStateProperty.all(
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          headingRowHeight: 60,
                                          dataRowColor:
                                              MaterialStateProperty.all(
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          dataRowHeight: 80,
                                          border: TableBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          dividerThickness: 2,
                                          showBottomBorder: false,
                                          minWidth: 49,
                                        ),
                                      )

                                      // child: FutureBuilder<ProviderPerSuperAdmin>(
                                      //   future: providerService!.getProviders(),
                                      //   builder: (context, snapshot) {
                                      //     if (snapshot.hasData) {
                                      //       var providerPerSuperAdmin =
                                      //           snapshot.data!;
                                      //       var dataTableRecordList =
                                      //           providerPerSuperAdmin.providers;

                                      //       return Container(
                                      //         width: MediaQuery.of(context)
                                      //                 .size
                                      //                 .width *
                                      //             1.5,
                                      //         child: DataTable2(
                                      //           columns: [
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     'Editar',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //               fixedWidth:
                                      //                   MediaQuery.of(context)
                                      //                           .size
                                      //                           .width *
                                      //                       0.07,
                                      //             ),
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     'Ver más',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //               fixedWidth:
                                      //                   MediaQuery.of(context)
                                      //                           .size
                                      //                           .width *
                                      //                       0.08,
                                      //             ),
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     'Razón social',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     'Correo electrónico',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     'NIT',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     '% comisión',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     'Entidad bancaria',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     'Tipo de cuenta',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     'Cuenta bancaria',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //             DataColumn2(
                                      //               label: DefaultTextStyle.merge(
                                      //                 softWrap: true,
                                      //                 child: Align(
                                      //                   alignment:
                                      //                       AlignmentDirectional(
                                      //                           0, 0),
                                      //                   child: Text(
                                      //                     'Activar / Desactivar',
                                      //                     style:
                                      //                         FlutterFlowTheme.of(
                                      //                                 context)
                                      //                             .bodyText1
                                      //                             .override(
                                      //                               fontFamily: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .bodyText1Family,
                                      //                               color: FlutterFlowTheme.of(
                                      //                                       context)
                                      //                                   .primaryColor,
                                      //                               useGoogleFonts: GoogleFonts
                                      //                                       .asMap()
                                      //                                   .containsKey(
                                      //                                       FlutterFlowTheme.of(context)
                                      //                                           .bodyText1Family),
                                      //                             ),
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //           ],
                                      //           rows: dataTableRecordList
                                      //               .mapIndexed((dataTableIndex,
                                      //                       dataTableRecord) =>
                                      //                   [
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child: Container(
                                      //                         width: MediaQuery.of(
                                      //                                     context)
                                      //                                 .size
                                      //                                 .width *
                                      //                             0.03,
                                      //                         height: MediaQuery.of(
                                      //                                     context)
                                      //                                 .size
                                      //                                 .height *
                                      //                             0.02,
                                      //                         decoration:
                                      //                             BoxDecoration(
                                      //                           color: FlutterFlowTheme
                                      //                                   .of(context)
                                      //                               .secondaryBackground,
                                      //                         ),
                                      //                         child: InkWell(
                                      //                           onTap: () {
                                      //                             showDialog(
                                      //                               context:
                                      //                                   context,
                                      //                               builder:
                                      //                                   (BuildContext
                                      //                                       context) {
                                      //                                 return InfoProveeedorWidget();
                                      //                               },
                                      //                             );
                                      //                           },
                                      //                           child: SvgPicture
                                      //                               .asset(
                                      //                             'assets/images/icon_edit.svg',
                                      //                             width: 100,
                                      //                             height: 100,
                                      //                             fit: BoxFit
                                      //                                 .contain,
                                      //                           ),
                                      //                         ),
                                      //                       ),
                                      //                     ),
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child: Container(
                                      //                         width: MediaQuery.of(
                                      //                                     context)
                                      //                                 .size
                                      //                                 .width *
                                      //                             0.03,
                                      //                         height: MediaQuery.of(
                                      //                                     context)
                                      //                                 .size
                                      //                                 .height *
                                      //                             0.02,
                                      //                         decoration:
                                      //                             BoxDecoration(
                                      //                           color: FlutterFlowTheme
                                      //                                   .of(context)
                                      //                               .secondaryBackground,
                                      //                         ),
                                      //                         child: SvgPicture
                                      //                             .asset(
                                      //                           'assets/images/icon_view.svg',
                                      //                           width: 100,
                                      //                           height: 100,
                                      //                           fit: BoxFit
                                      //                               .contain,
                                      //                         ),
                                      //                       ),
                                      //                     ),
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child: Text(
                                      //                         'Turismo Medellìn',
                                      //                         style: FlutterFlowTheme
                                      //                                 .of(context)
                                      //                             .bodyText2,
                                      //                       ),
                                      //                     ),
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child: Text(
                                      //                         'correo@correo.com',
                                      //                         style: FlutterFlowTheme
                                      //                                 .of(context)
                                      //                             .bodyText2,
                                      //                       ),
                                      //                     ),
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child: Text(
                                      //                         '123456789-0',
                                      //                         style: FlutterFlowTheme
                                      //                                 .of(context)
                                      //                             .bodyText2,
                                      //                       ),
                                      //                     ),
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child: Text(
                                      //                         '10%',
                                      //                         style: FlutterFlowTheme
                                      //                                 .of(context)
                                      //                             .bodyText2,
                                      //                       ),
                                      //                     ),
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child: Text(
                                      //                         'Bancolombia',
                                      //                         style: FlutterFlowTheme
                                      //                                 .of(context)
                                      //                             .bodyText2,
                                      //                       ),
                                      //                     ),
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child: Text(
                                      //                         'Ahorros',
                                      //                         style: FlutterFlowTheme
                                      //                                 .of(context)
                                      //                             .bodyText2,
                                      //                       ),
                                      //                     ),
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child: Text(
                                      //                         '123456789098',
                                      //                         style: FlutterFlowTheme
                                      //                                 .of(context)
                                      //                             .bodyText2,
                                      //                       ),
                                      //                     ),
                                      //                     Align(
                                      //                       alignment:
                                      //                           AlignmentDirectional(
                                      //                               0, 0),
                                      //                       child:
                                      //                           Switch.adaptive(
                                      //                         value:
                                      //                             switchValue ??=
                                      //                                 false,
                                      //                         onChanged:
                                      //                             (newValue) async {
                                      //                           setState(() =>
                                      //                               switchValue =
                                      //                                   newValue!);
                                      //                         },
                                      //                         activeColor:
                                      //                             FlutterFlowTheme.of(
                                      //                                     context)
                                      //                                 .secondaryColor,
                                      //                         inactiveTrackColor:
                                      //                             FlutterFlowTheme.of(
                                      //                                     context)
                                      //                                 .customColor1,
                                      //                       ),
                                      //                     ),
                                      //                   ]
                                      //                       .map((c) =>
                                      //                           DataCell(c))
                                      //                       .toList())
                                      //               .map((e) => DataRow(cells: e))
                                      //               .toList(),
                                      //           headingRowColor:
                                      //               MaterialStateProperty.all(
                                      //             FlutterFlowTheme.of(context)
                                      //                 .alternate,
                                      //           ),
                                      //           headingRowHeight: 60,
                                      //           dataRowColor:
                                      //               MaterialStateProperty.all(
                                      //             FlutterFlowTheme.of(context)
                                      //                 .secondaryBackground,
                                      //           ),
                                      //           dataRowHeight: 80,
                                      //           border: TableBorder(
                                      //             borderRadius:
                                      //                 BorderRadius.circular(0),
                                      //           ),
                                      //           dividerThickness: 2,
                                      //           showBottomBorder: false,
                                      //           minWidth: 49,
                                      //         ),
                                      //       );
                                      //     } else {
                                      //       // return CircularProgressIndicator();
                                      //       return Container();
                                      //     }
                                      //   },
                                      // ),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
