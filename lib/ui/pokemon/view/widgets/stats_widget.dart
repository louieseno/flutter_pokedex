import 'package:flutter/material.dart';
import 'package:flutter_pokedex/data/model/pokemon_details/pokemon_details.dart';

class StatsWidget extends StatelessWidget {
  const StatsWidget({super.key, required this.stats, required this.backgroundColor});

  @protected
  final List<PokemonStat> stats;

  @protected
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor.withAlpha(90),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:
            stats
                .map(
                  (info) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            info.stat.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: TweenAnimationBuilder<double>(
                            duration: const Duration(seconds: 1),
                            tween: Tween<double>(begin: 0, end: info.baseStat / 200.0),
                            builder: (context, value, child) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: LinearProgressIndicator(
                                  value: value,
                                  minHeight: 8,
                                  backgroundColor: Colors.red.shade100,
                                  valueColor: AlwaysStoppedAnimation<Color>(backgroundColor),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(info.baseStat.toString()),
                      ],
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
