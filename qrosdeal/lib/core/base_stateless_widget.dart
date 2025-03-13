import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/common/common_bloc.dart';
import 'package:qrosdeal/blocs/common/common_state.dart';
import 'package:qrosdeal/common/components/notification_dialog.dart';

abstract class BaseStatelessWidget<T> extends StatelessWidget {
  const BaseStatelessWidget({super.key});

  Widget buildWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CommonBloc, CommonState>(
      listenWhen: (previous, current) => current.errorMessage.isNotEmpty,
      listener: (context, state) {
        if (state.blocType == T) {
          showDialog(
            context: context,
            builder: (context) {
              return NotificationDialog(message: state.errorMessage);
            },
          );
        }
      },
      child: buildWidget(context),
    );
  }
}
