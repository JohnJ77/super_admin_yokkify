import 'package:shared_preferences/shared_preferences.dart';
import 'package:super_admin_yokkify/models/super_admin_user_login_info_model.dart';
import 'package:super_admin_yokkify/pop_up_exitosa_widget/pou_up_exitosa_widget.dart';
import 'package:super_admin_yokkify/services/super_admin_user/super_admin_user_service.dart';

import '../components/boton_widget2_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  late bool passwordVisibility;
  SuperAdminUserService? superAdminUserService;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      superAdminUserService = SuperAdminUserService();

      setState(() {});
    });
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Color(0x33000000),
            offset: Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).customColor3,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(-0.8, 0),
              child: Text(
                'Mi cuenta',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: FlutterFlowTheme.of(context).title1Family,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).title1Family),
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.7, 0),
              child: Text(
                '¿Ya tienes cuenta? Accede a tu panel de usuario',
                style: FlutterFlowTheme.of(context).bodyText2,
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).customColor1,
                ),
              ),
              child: TextFormField(
                controller: textController1,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Usuario o correo electrónico',
                  hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText2Family,
                        color: FlutterFlowTheme.of(context).customColor1,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText2Family),
                      ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                      color: FlutterFlowTheme.of(context).customColor1,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyText1Family),
                    ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).customColor1,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                child: TextFormField(
                  controller: textController2,
                  autofocus: true,
                  obscureText: !passwordVisibility,
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText2Family,
                          color: FlutterFlowTheme.of(context).customColor1,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText2Family),
                        ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 16, 0, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility = !passwordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 24,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: FlutterFlowTheme.of(context).customColor1,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, 0),
              child: Text(
                'Olvide la contraseña',
                style: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      decoration: TextDecoration.underline,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyText2Family),
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, 0),
              child: InkWell(
                onTap: () => _loginUser(),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: BotonWidget2Widget(
                    text: 'Inicar sesión',
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '¿No tienes cuenta?',
                  style: FlutterFlowTheme.of(context).bodyText2,
                ),
                Text(
                  'Registrate aquí',
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText2Family,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        decoration: TextDecoration.underline,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText2Family),
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _loginUser() async {
    var superAdminUserLoginInfo = SuperAdminUserLoginInfo(
        email: textController1!.text, password: textController2!.text);
    var superAdminUserLogin =
        await superAdminUserService!.loginUser(superAdminUserLoginInfo);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', superAdminUserLogin.token);
    prefs.setString('userId', superAdminUserLogin.currentSuperAdmin.id);
    Navigator.of(context).pop();
    return await popupWidgetExitoso(context, text: "Usuario logeado correctamente");
  }
}
