import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/store/store_bloc.dart';
import 'package:qrosdeal/blocs/store/store_event.dart';
import 'package:qrosdeal/blocs/store/store_state.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/core/base_stateless_widget.dart';
import 'package:qrosdeal/screens/create_store/create_store_screen.dart';

class StoreScreen extends BaseStatelessWidget<StoreBloc> {
  const StoreScreen({super.key});

  @override
  Widget buildWidget(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreBloc(),
      child: Scaffold(
        backgroundColor: AppColor.bgPrimary,
        body: BlocBuilder<StoreBloc, StoreState>(
          builder: (context, state) {
            final bloc = context.read<StoreBloc>();
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Your Stores',
                            style: AppTextStyle.bold20,
                          ),
                          IconButton(
                            iconSize: 36,
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateStoreScreen(),
                                ),
                              );
                              bloc.add(RefetchStores());
                            },
                            icon: const Icon(Icons.add),
                            color: AppColor.primary,
                          )
                        ],
                      ),
                    ),
                    state.stores.isEmpty
                        ? const Text(
                            'Please create a store.',
                            style: AppTextStyle.normal14,
                            textAlign: TextAlign.left,
                          )
                        : ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 10,
                            ),
                            shrinkWrap: true,
                            itemCount: state.stores.length,
                            itemBuilder: (context, index) {
                              final store = state.stores[index];
                              return GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CreateStoreScreen(
                                        store: store,
                                      ),
                                    ),
                                  );
                                  bloc.add(RefetchStores());
                                },
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 52,
                                      height: 52,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(store.logo,
                                            fit: BoxFit.cover, errorBuilder:
                                                (context, error, stackTrace) {
                                          return Container(
                                            color: AppColor.bgSecondary,
                                            child: const Icon(Icons.store),
                                          );
                                        }),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          store.name,
                                          style: AppTextStyle.bold16,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          store.phoneNumber,
                                          style: AppTextStyle.normal14,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
