import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/address_search/address_search_bloc.dart';
import 'package:qrosdeal/blocs/address_search/address_search_event.dart';
import 'package:qrosdeal/blocs/address_search/address_search_state.dart';
import 'package:qrosdeal/common/components/custom_bottom_sheet.dart';
import 'package:qrosdeal/common/components/search_field.dart';
import 'package:qrosdeal/models/address/address_search_result/address_search_result.dart';

class AddressSearch extends StatefulWidget {
  final Function(AddressSearchResult) onSelectAddress;

  const AddressSearch({
    super.key,
    required this.onSelectAddress,
  });

  @override
  State<AddressSearch> createState() => _AddressSearchState();
}

class _AddressSearchState extends State<AddressSearch> {
  double maxHeight = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        maxHeight = MediaQuery.of(context).size.height -
            MediaQueryData.fromView(View.of(context)).padding.top -
            40;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddressSearchBloc(),
      child: CustomBottomSheet(
        height: maxHeight,
        title: 'Address Search',
        content: BlocBuilder<AddressSearchBloc, AddressSearchState>(
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SearchField(
                  initialValue: state.textSearch,
                  hintText: 'Search address...',
                  onTextInput: (text) {
                    context.read<AddressSearchBloc>().add(AddressSearchInputEvent(text));
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        widget.onSelectAddress(state.items[index]);
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(state.items[index].address.label),
                      ),
                    );
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
