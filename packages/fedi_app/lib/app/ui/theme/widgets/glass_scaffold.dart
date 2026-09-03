import 'package:flutter/material.dart';
import '../orkut_glass_theme.dart';

/// Scaffold base: gradiente de fundo + espaço pro header rosa fixo.
/// backgroundImage é opcional (ex: foto desfocada de fundo, como no print).
class GlassScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final ImageProvider? backgroundImage;

  const GlassScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.backgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: OrkutGlassColors.backgroundGradient,
          ),
          image: backgroundImage != null
              ? DecorationImage(
                  image: backgroundImage!,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    OrkutGlassColors.backgroundBottom.withOpacity(0.55),
                    BlendMode.darken,
                  ),
                )
              : null,
        ),
        child: SafeArea(child: body),
      ),
    );
  }
}
