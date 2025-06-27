import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/ui/theme_extensions.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Selector<AuthProvider, String>(
            selector: (context, authProvider) =>
                authProvider.user?.displayName ?? 'Não informado',
            builder: (_, value, __) {
              return Text(
                'e ai, $value',
                style: context.textTheme.headlineMedium?.copyWith(
                  color: context.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
