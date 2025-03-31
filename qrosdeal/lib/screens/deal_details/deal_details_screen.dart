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
import 'package:qrosdeal/constants/currency.dart';
import 'package:qrosdeal/models/deal_dto/deal_dto.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DealDetailsScreen extends StatefulWidget {
  final DealDto? deal;

  const DealDetailsScreen({
    super.key,
    this.deal,
  });

  @override
  State<DealDetailsScreen> createState() => _DealDetailsScreenState();
}

class _DealDetailsScreenState extends State<DealDetailsScreen> {
  final ImagePicker picker = ImagePicker();
  final DateRangePickerController _datePickerController =
      DateRangePickerController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DealDetailsBloc()..add(InitData(widget.deal)),
      child: Scaffold(
        backgroundColor: AppColor.bgPrimary,
        appBar: CustomAppBar(
          stringTitle: widget.deal != null ? 'Deal Details' : 'Create Deal',
        ),
        body: BlocBuilder<DealDetailsBloc, DealDetailsState>(
          builder: (context, state) {
            final bloc = context.read<DealDetailsBloc>();
            _datePickerController.selectedRange =
                PickerDateRange(state.startDate, state.endDate);
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
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomDropDown<int>(
                              label: 'Deal type',
                              items: [
                                DDItem(1, "Voucher"),
                                DDItem(2, "Product offer"),
                                DDItem(3, "Product combine")
                              ],
                              value: state.type,
                              onChanged: (value) {
                                if (value == null) {
                                  return;
                                }
                                bloc.add(TypeInputChange(value));
                              },
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
                              initialValue: state.description,
                              onChanged: (text) {
                                bloc.add(DescriptionInputChange(text));
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CustomTextField(
                              label: 'Condition',
                              initialValue: state.condition,
                              onChanged: (text) {
                                bloc.add(ConditionInputChange(text));
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CustomDropDown<String>(
                              label: 'Currency:',
                              items: CurrencyConstant.currency
                                  .map((e) => DDItem(e, e))
                                  .toList(),
                              value: state.currency,
                              onChanged: (value) {
                                if (value == null) {
                                  return;
                                }
                                bloc.add(CurrencyInputChange(value));
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CustomTextField(
                              label: 'Discount percent:',
                              inputType: TextInputType.number,
                              initialValue: state.discountPercent,
                              onChanged: (text) {
                                bloc.add(DiscountPercentInputChange(text));
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CustomTextField(
                              label: 'Max discount:',
                              inputType: TextInputType.number,
                              initialValue: state.maxDiscount,
                              onChanged: (text) {
                                bloc.add(MaxDiscountInputChange(text));
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CustomTextField(
                              label: 'Quantity:',
                              inputType: TextInputType.number,
                              initialValue: state.quantity,
                              onChanged: (text) {
                                bloc.add(QuantityInputChange(text));
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Date range:"),
                            ),
                            SfDateRangePicker(
                              selectionMode: DateRangePickerSelectionMode.range,
                              onSelectionChanged: _onDateSelectionChange(bloc),
                              controller: _datePickerController,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            TextButton(
                                onPressed: () async {
                                  final image = await picker.pickImage(
                                      source: ImageSource.gallery);
                                  if (image != null) {
                                    bloc.add(ImageChange(image.path));
                                  }
                                },
                                child: const Text('Choose image')),
                            if (state.image.isNotEmpty)
                              Image.network(state.image),
                          ],
                        ),
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

  _onDateSelectionChange(DealDetailsBloc bloc) {
    return (DateRangePickerSelectionChangedArgs args) {
      bloc.add(DateChange(args.value.startDate, args.value.endDate));
    };
  }
}
