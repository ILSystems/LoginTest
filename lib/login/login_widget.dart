import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController? emailAddressController;
  TextEditingController? passwordController;

  late bool passwordVisibility;
  TextEditingController? emailAddressCreateController;
  TextEditingController? passwordCreateController;

  late bool passwordCreateVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
    emailAddressCreateController = TextEditingController();
    passwordCreateController = TextEditingController();
    passwordCreateVisibility = false;
  }

  @override
  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
    emailAddressCreateController?.dispose();
    passwordCreateController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF4B39EF),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 60),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/template-screens-hpce0u/assets/xofl99y11az0/@3xlogo_primary_color_white.png',
                      width: 240,
                      height: 60,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(
                            text: 'Sign In',
                          ),
                          Tab(
                            text: 'Sign Up',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 24, 24, 24),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 20, 0),
                                      child: TextFormField(
                                        controller: emailAddressController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Email Address',
                                          hintText: 'Enter your email...',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 24, 20, 24),
                                        ),
                                        maxLines: null,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 12, 20, 0),
                                      child: TextFormField(
                                        controller: passwordController,
                                        obscureText: !passwordVisibility,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          hintText: 'Enter your password...',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 24, 20, 24),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => passwordVisibility =
                                                  !passwordVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              passwordVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Color(0xFF57636C),
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 24, 0, 0),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text('Sign In'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print(
                                              'Button-ForgotPassword pressed ...');
                                        },
                                        child: const Text('Forgot Password?'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 12, 0, 0),
                                            child: Text(
                                              'Or use a social account to login',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 8, 24, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'Google',
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'Apple',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 24, 24, 24),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 20, 0),
                                      child: TextFormField(
                                        controller:
                                            emailAddressCreateController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Email Address',
                                          hintText: 'Enter your email...',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 24, 20, 24),
                                        ),
                                        maxLines: null,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 12, 20, 0),
                                      child: TextFormField(
                                        controller: passwordCreateController,
                                        obscureText: !passwordCreateVisibility,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          hintText: 'Enter your password...',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 24, 20, 24),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => passwordCreateVisibility =
                                                  !passwordCreateVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              passwordCreateVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Color(0xFF57636C),
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 24, 0, 0),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text('Create Account'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 24, 0, 0),
                                            child: Text(
                                              'Sign up using a social account',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 8, 24, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'Google',
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'Apple',
                                              ),
                                            ),
                                          ),
                                        ],
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
