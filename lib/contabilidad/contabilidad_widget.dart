import '../components/boton_widget2_widget.dart';
import '../components/header_widget.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContabilidadWidget extends StatefulWidget {
  const ContabilidadWidget({Key? key}) : super(key: key);

  @override
  _ContabilidadWidgetState createState() => _ContabilidadWidgetState();
}

class _ContabilidadWidgetState extends State<ContabilidadWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
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
                                'Contabilidad',
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                        ),
                                      ),
                                      child: TextFormField(
                                        controller: textController,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Buscar...',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText2
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor1,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText2Family),
                                              ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor1,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1Family),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        decoration: BoxDecoration(),
                                        child: BotonWidget2Widget(
                                          text: 'Buscar',
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
                                          1.9,
                                      child: DataTable2(
                                        columns: [
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Accion',
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
                                                0.07,
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Estado',
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
                                                  'Fecha de reserva',
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
                                                  'Fecha de realización',
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
                                                  'Nombre del proveedor',
                                                  textAlign: TextAlign.center,
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
                                                0.25,
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Nombre del tour',
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
                                                  'Tipo de tour',
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
                                                  'Cantidad de personas',
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
                                                  'Valor de la compra',
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
                                                  'Comisión yokkify',
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
                                                  'Pagar a proveedor',
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
                                                  'Acción',
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
                                        //             child: Text(
                                        //               'Pagado',
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
                                        //               '00/00/0000',
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
                                        //               '00/00/0000',
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
                                        //               'Turismo Medellín',
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
                                        //               'Peñol - Guatapé',
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
                                        //               'Compartido',
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
                                        //               '10',
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
                                        //               '\$ 240.000',
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
                                        //               '\$ 24.000',
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
                                        //               '\$ 216.000',
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
                                        //                       0.03,
                                        //               decoration: BoxDecoration(
                                        //                 color: FlutterFlowTheme
                                        //                         .of(context)
                                        //                     .secondaryBackground,
                                        //               ),
                                        //               child: SvgPicture.asset(
                                        //                 'assets/images/icon_PDF.svg',
                                        //                 width: 100,
                                        //                 height: 100,
                                        //                 fit: BoxFit.contain,
                                        //               ),
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
