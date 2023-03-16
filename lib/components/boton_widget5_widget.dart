import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BotonWidget5Widget extends StatefulWidget {
  const BotonWidget5Widget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  _BotonWidget5WidgetState createState() => _BotonWidget5WidgetState();
}

class _BotonWidget5WidgetState extends State<BotonWidget5Widget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Text(
          widget.text!,
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                color: FlutterFlowTheme.of(context).secondaryText,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyText2Family),
              ),
        ),
      ),
    );
  }
}
