import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qrosdeal/blocs/create_store/create_store_bloc.dart';
import 'package:qrosdeal/blocs/create_store/create_store_event.dart';
import 'package:qrosdeal/blocs/create_store/create_store_state.dart';
import 'package:qrosdeal/common/components/custom_app_bar.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/components/text_field.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/models/store_dto/store_dto.dart';
import 'package:qrosdeal/screens/create_store/components/address_search.dart';

class CreateStoreScreen extends StatefulWidget {
  final StoreDto? store;

  const CreateStoreScreen({
    super.key,
    this.store,
  });

  @override
  State<CreateStoreScreen> createState() => _CreateStoreScreenState();
}

class _CreateStoreScreenState extends State<CreateStoreScreen> {
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateStoreBloc()..add(InitData(widget.store)),
      child: Scaffold(
        backgroundColor: AppColor.bgPrimary,
        appBar: CustomAppBar(
          stringTitle: widget.store != null ? 'Store Info' : 'Create Store',
        ),
        body: BlocBuilder<CreateStoreBloc, CreateStoreState>(
          builder: (context, state) {
            final bloc = context.read<CreateStoreBloc>();
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
                          CustomTextField(
                            label: 'Store name',
                            initialValue: state.name,
                            onChanged: (text) {
                              bloc.add(NameInputChanged(text));
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextField(
                            label: 'Phone number',
                            initialValue: state.phoneNumber,
                            onChanged: (text) {
                              bloc.add(PhoneInputChanged(text));
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            child: CustomTextField(
                              label: 'Address',
                              initialValue: state.address,
                              disabled: true,
                            ),
                            onTap: () {
                              _showAddressSearch(context, bloc);
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextButton(
                              onPressed: () async {
                                final image = await picker.pickImage(
                                    source: ImageSource.gallery);
                                if (image != null) {
                                  bloc.add(ChooseStoreImage(image.path));
                                }
                              },
                              child: const Text('Choose image')),
                          if (state.imageURL.isNotEmpty)
                            Image.network(
                              state.imageURL,
                              errorBuilder: (_, _2, _3) =>
                                  const Text("Image not found"),
                            ),
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

  void _showAddressSearch(BuildContext context, CreateStoreBloc bloc) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) {
        return AddressSearch(
          onSelectAddress: (address) {
            bloc.add(
              AddressChanged(
                address.address.label,
                address.position.lat,
                address.position.lng,
              ),
            );
          },
        );
      },
    );
  }
}
