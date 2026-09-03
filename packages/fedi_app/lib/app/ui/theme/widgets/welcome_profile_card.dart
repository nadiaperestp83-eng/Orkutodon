import 'package:flutter/material.dart';
import '../orkut_glass_theme.dart';
import 'glass_card.dart';

/// Card principal "Bem-vindo(a), Nome" com avatar e contadores
/// (recados / fotos / vídeos / fãs). Dados mockados por padrão —
/// trocar pelos valores reais vindos do IAccountBloc depois.
class WelcomeProfileCard extends StatelessWidget {
  final String displayName;
  final String? avatarUrl;
  final String sortePhrase;
  final int recadosCount;
  final int fotosCount;
  final int videosCount;
  final int fasCount;

  const WelcomeProfileCard({
    Key? key,
    required this.displayName,
    this.avatarUrl,
    this.sortePhrase = 'Você tem cabeça aberta e é bastante sociável',
    this.recadosCount = 0,
    this.fotosCount = 0,
    this.videosCount = 0,
    this.fasCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Bem-vindo(a), $displayName',
                  style: OrkutGlassTextStyles.welcomeTitle,
                ),
              ),
              const SizedBox(width: 12),
              _Avatar(url: avatarUrl),
            ],
          ),
          const SizedBox(height: 16),
          _CounterRow(
            recados: recadosCount,
            fotos: fotosCount,
            videos: videosCount,
            fas: fasCount,
          ),
          const SizedBox(height: 16),
          Text(
            'Sorte de hoje:',
            style: OrkutGlassTextStyles.sectionLabel.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(sortePhrase, style: OrkutGlassTextStyles.sortePhrase),
        ],
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  final String? url;

  const _Avatar({this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white.withOpacity(0.6), width: 2),
        image: url != null
            ? DecorationImage(image: NetworkImage(url!), fit: BoxFit.cover)
            : null,
        color: OrkutGlassColors.accentTeal.withOpacity(0.3),
      ),
      child: url == null
          ? const Icon(Icons.person, color: Colors.white, size: 32)
          : null,
    );
  }
}

class _CounterRow extends StatelessWidget {
  final int recados;
  final int fotos;
  final int videos;
  final int fas;

  const _CounterRow({
    required this.recados,
    required this.fotos,
    required this.videos,
    required this.fas,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _CounterItem(icon: Icons.edit_outlined, label: 'recados', value: recados),
        _CounterItem(icon: Icons.photo_outlined, label: 'fotos', value: fotos),
        _CounterItem(icon: Icons.videocam_outlined, label: 'vídeos', value: videos),
        _CounterItem(icon: Icons.star_outline, label: 'fãs', value: fas),
      ],
    );
  }
}

class _CounterItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int value;

  const _CounterItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 18, color: OrkutGlassColors.accentCoral),
        const SizedBox(height: 2),
        Text('$value', style: OrkutGlassTextStyles.counterNumber),
        Text(label, style: OrkutGlassTextStyles.counterLabel),
      ],
    );
  }
}
