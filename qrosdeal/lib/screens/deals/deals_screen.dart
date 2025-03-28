import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/deals/deals_bloc.dart';
import 'package:qrosdeal/blocs/deals/deals_state.dart';
import 'package:qrosdeal/blocs/store/store_bloc.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/core/base_stateless_widget.dart';
import 'package:qrosdeal/screens/create_store/create_store_screen.dart';
import 'package:qrosdeal/screens/deal_details/deal_details_screen.dart';

class DealsScreen extends BaseStatelessWidget<DealsBloc> {
  const DealsScreen({super.key});

  @override
  Widget buildWidget(BuildContext context) {
    return BlocProvider(
      create: (context) => DealsBloc(),
      child: Scaffold(
        backgroundColor: AppColor.bgPrimary,
        body: BlocBuilder<DealsBloc, DealsState>(
          builder: (context, state) {
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
                            'Your Deals',
                            style: AppTextStyle.bold20,
                          ),
                          IconButton(
                            iconSize: 36,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateStoreScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.add),
                            color: AppColor.primary,
                          )
                        ],
                      ),
                    ),
                    state.deals.isEmpty
                        ? const Text(
                            'Please create a deal.',
                            style: AppTextStyle.normal14,
                            textAlign: TextAlign.left,
                          )
                        : ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 10,
                            ),
                            shrinkWrap: true,
                            itemCount: state.deals.length,
                            itemBuilder: (context, index) {
                              final deal = state.deals[index];
                              return GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DealDetailsScreen(
                                        deal: deal,
                                      ),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 52,
                                      height: 52,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(deal.image,
                                            fit: BoxFit.cover, errorBuilder:
                                                (context, error, stackTrace) {
                                          return Container(
                                            color: AppColor.bgSecondary,
                                            child: const Icon(Icons.discount),
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
                                          deal.name,
                                          style: AppTextStyle.bold16,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          deal.condition,
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
