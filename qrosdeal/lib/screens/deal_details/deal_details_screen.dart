import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qrosdeal/blocs/deal_details/deal_details_bloc.dart';
import 'package:qrosdeal/blocs/deal_details/deal_details_event.dart';
import 'package:qrosdeal/blocs/deal_details/deal_details_state.dart';
import 'package:qrosdeal/common/components/custom_app_bar.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/components/custom_drop_down.dart';
import 'package:qrosdeal/common/components/text_field.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/models/store_dto/store_dto.dart';

class DealDetailsScreen extends StatefulWidget {
  final StoreDto? store;

  const DealDetailsScreen({
    super.key,
    this.store,
  });

  @override
  State<DealDetailsScreen> createState() => _DealDetailsScreenState();
}

class _DealDetailsScreenState extends State<DealDetailsScreen> {
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DealDetailsBloc()..add(InitData(widget.store)),
      child: Scaffold(
        backgroundColor: AppColor.bgPrimary,
        appBar: CustomAppBar(
          stringTitle: widget.store != null ? 'Deal Details' : 'Create Deal',
        ),
        body: BlocBuilder<DealDetailsBloc, DealDetailsState>(
          builder: (context, state) {
            final bloc = context.read<DealDetailsBloc>();
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CustomDropDown<int>(
                            label: 'Deal type',
                            items: [1, 2, 3],
                            value: 1,
                            onChanged: (value) {},
                          ),
                          CustomTextField(
                            label: 'Name',
                            initialValue: state.name,
                            onChanged: (text) {
                              bloc.add(NameInputChanged(text));
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextField(
                            label: 'Description',
                            onChanged: (text) {
                              bloc.add(PhoneInputChanged(text));
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextButton(
                              onPressed: () async {
                                final image = await picker.pickImage(source: ImageSource.gallery);
                                if (image != null) {
                                  bloc.add(ChooseStoreImage(image.path));
                                }
                              },
                              child: const Text('Choose image')),
                          if (state.image.isNotEmpty) Image.network(state.image),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: state.id != null ? 'Update' : 'Create',
                      onPressed: () {
                        bloc.add(CreateButtonPressed());
                      },
                    ),
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
