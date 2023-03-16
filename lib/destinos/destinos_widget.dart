import '../components/header_widget.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DestinosWidget extends StatefulWidget {
  const DestinosWidget({Key? key}) : super(key: key);

  @override
  _DestinosWidgetState createState() => _DestinosWidgetState();
}

class _DestinosWidgetState extends State<DestinosWidget> {
  bool? switchValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                                'Destinos',
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
                                          .go('/crearDestino'),
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
                                              'Crear destino',
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
                                      width: MediaQuery.of(context).size.width *
                                          0.74,
                                      child: DataTable2(
                                        columns: [
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                0.06,
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Foto',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Pais',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Departamento / Estado',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                            fixedWidth: 2,
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Departamento/Estado',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Ciudad / municipio',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Activar / Desacticar',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                        // rows: dataTableRecordList
                                        //     .mapIndexed((dataTableIndex,
                                        //             dataTableRecord) =>
                                        //         [
                                        //           Align(
                                        //             alignment:
                                        //                 AlignmentDirectional(
                                        //                     0, 0),
                                        //             child: Container(
                                        //               width:
                                        //                   MediaQuery.of(context)
                                        //                           .size
                                        //                           .width *
                                        //                       0.03,
                                        //               height:
                                        //                   MediaQuery.of(context)
                                        //                           .size
                                        //                           .height *
                                        //                       0.02,
                                        //               decoration: BoxDecoration(
                                        //                 color: FlutterFlowTheme
                                        //                         .of(context)
                                        //                     .secondaryBackground,
                                        //               ),
                                        //               child: SvgPicture.asset(
                                        //                 'assets/images/icon_edit.svg',
                                        //                 width: 100,
                                        //                 height: 100,
                                        //                 fit: BoxFit.contain,
                                        //               ),
                                        //             ),
                                        //           ),
                                        //           Align(
                                        //             alignment:
                                        //                 AlignmentDirectional(
                                        //                     0, 0),
                                        //             child: Container(
                                        //               width:
                                        //                   MediaQuery.of(context)
                                        //                           .size
                                        //                           .width *
                                        //                       0.03,
                                        //               height:
                                        //                   MediaQuery.of(context)
                                        //                           .size
                                        //                           .height *
                                        //                       0.05,
                                        //               decoration: BoxDecoration(
                                        //                 color: FlutterFlowTheme
                                        //                         .of(context)
                                        //                     .secondaryBackground,
                                        //                 borderRadius:
                                        //                     BorderRadius
                                        //                         .circular(10),
                                        //               ),
                                        //               child: ClipRRect(
                                        //                 borderRadius:
                                        //                     BorderRadius
                                        //                         .circular(10),
                                        //                 child: Image.asset(
                                        //                   'assets/images/Medellin.png',
                                        //                   width: 100,
                                        //                   height: 100,
                                        //                   fit: BoxFit.contain,
                                        //                 ),
                                        //               ),
                                        //             ),
                                        //           ),
                                        //           Align(
                                        //             alignment:
                                        //                 AlignmentDirectional(
                                        //                     0, 0),
                                        //             child: Text(
                                        //               'Turismo Medellìn',
                                        //               style:
                                        //                   FlutterFlowTheme.of(
                                        //                           context)
                                        //                       .bodyText2,
                                        //             ),
                                        //           ),
                                        //           Align(
                                        //             alignment:
                                        //                 AlignmentDirectional(
                                        //                     0, 0),
                                        //             child: Text(
                                        //               'correo@correo.com',
                                        //               style:
                                        //                   FlutterFlowTheme.of(
                                        //                           context)
                                        //                       .bodyText2,
                                        //             ),
                                        //           ),
                                        //           Align(
                                        //             alignment:
                                        //                 AlignmentDirectional(
                                        //                     0, 0),
                                        //             child: Text(
                                        //               'Antioquia',
                                        //               style:
                                        //                   FlutterFlowTheme.of(
                                        //                           context)
                                        //                       .bodyText2,
                                        //             ),
                                        //           ),
                                        //           Align(
                                        //             alignment:
                                        //                 AlignmentDirectional(
                                        //                     0, 0),
                                        //             child: Text(
                                        //               'Medellín',
                                        //               style:
                                        //                   FlutterFlowTheme.of(
                                        //                           context)
                                        //                       .bodyText2,
                                        //             ),
                                        //           ),
                                        //           Align(
                                        //             alignment:
                                        //                 AlignmentDirectional(
                                        //                     0, 0),
                                        //             child: Switch.adaptive(
                                        //               value: switchValue ??=
                                        //                   false,
                                        //               onChanged:
                                        //                   (newValue) async {
                                        //                 setState(() =>
                                        //                     switchValue =
                                        //                         newValue!);
                                        //               },
                                        //               activeColor:
                                        //                   FlutterFlowTheme.of(
                                        //                           context)
                                        //                       .secondaryColor,
                                        //               inactiveTrackColor:
                                        //                   FlutterFlowTheme.of(
                                        //                           context)
                                        //                       .customColor1,
                                        //             ),
                                        //           ),
                                        //         ]
                                        //             .map((c) => DataCell(c))
                                        //             .toList())
                                        //     .map((e) => DataRow(cells: e))
                                        //     .toList(),
                                        headingRowColor:
                                            MaterialStateProperty.all(
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        headingRowHeight: 60,
                                        dataRowColor: MaterialStateProperty.all(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
