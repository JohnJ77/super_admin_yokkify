import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BotonWidgetWidget extends StatefulWidget {
  const BotonWidgetWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  _BotonWidgetWidgetState createState() => _BotonWidgetWidgetState();
}

class _BotonWidgetWidgetState extends State<BotonWidgetWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryColor,
          width: 2,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Text(
          widget.text!,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: FlutterFlowTheme.of(context).title2Family,
                color: FlutterFlowTheme.of(context).secondaryColor,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).title2Family),
              ),
        ),
      ),
    );
  }
}
