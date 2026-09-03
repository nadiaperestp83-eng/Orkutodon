import 'package:flutter/material.dart';
import '../orkut_glass_theme.dart';
import '../widgets/glass_scaffold.dart';
import '../widgets/welcome_profile_card.dart';

/// Tela de exemplo, dados mockados. Depois substituir por
/// widget conectado ao IAccountBloc real do fedi_app.
class OrkutHomePage extends StatelessWidget {
  const OrkutHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassScaffold(
      appBar: AppBar(
        backgroundColor: OrkutGlassColors.brandPink,
        elevation: 0,
        title: const Text(
          'orkut',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            WelcomeProfileCard(
              displayName: 'Felipe',
              recadosCount: 0,
              fotosCount: 0,
              videosCount: 0,
              fasCount: 0,
            ),
          ],
        ),
      ),
    );
  }
}
