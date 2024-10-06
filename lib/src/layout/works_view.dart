import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mk_portfolio/src/controllers/provider.dart';
import 'package:mk_portfolio/src/widget/article.dart';
import 'package:mk_portfolio/src/widget/command_title.dart';

class WorksView extends ConsumerWidget {
  const WorksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final works = ref.watch(fetchWorksProvider);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommandTitle(text: "Works"),
            works.when(
              data: (items) => Wrap(
                spacing: 60,
                runSpacing: 4.0,
                children: items.map((map) {
                  return Article(
                    id: map['id']!,
                    title: map['title']!,
                    imgUrl: map['imgUrl']!,
                  );
                }).toList(),
              ),
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ],
        ),
      ),
    );
  }
}
