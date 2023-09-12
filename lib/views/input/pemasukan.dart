// import 'package:beruang/components/card.dart';
import 'package:beruang/components/card.dart';
import 'package:beruang/utils/custom_icons_icons.dart';
import 'package:beruang/utils/rupiah_format.dart';
import 'package:beruang/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class InputPemasukan extends StatelessWidget {
  const InputPemasukan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text(
          'Input Pemasukan',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
            child: const FormPemasukan(),
          ),
        ),
      ),
    );
  }
}

class FormPemasukan extends StatefulWidget {
  const FormPemasukan({super.key});

  @override
  State<FormPemasukan> createState() => _FormPemasukanState();
}

class _FormPemasukanState extends State<FormPemasukan> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  final List<String> dompetList = ['Tunai', 'BCA', 'OVO'];
  final List<String> kategoriList = [
    'Tagihan Listrik 1',
    'Tagihan Listrik 2',
    'Tagihan Listrik 3'
  ];

  String? formatRupiahValue(String? value) {
    return value?.substring(0, value.length - 3).replaceAll(RegExp(r'[.]'), '');
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CardView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dompet',
                  style: TextStyle(fontSize: 12),
                ),
                FormBuilderDropdown<String>(
                  onChanged: (value) => setState(() {}),
                  name: 'dompet',
                  icon: const Icon(Icons.chevron_right_rounded),
                  decoration: InputDecoration(
                    filled:
                        _formKey.currentState?.fields['dompet']?.value == null
                            ? true
                            : false,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon:
                        _formKey.currentState?.fields['dompet']?.value == null
                            ? const Image(
                                image:
                                    AssetImage('assets/images/saldo_icon.png'))
                            : null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Pilih Dompet',
                    hintStyle: const TextStyle(fontSize: 12),
                  ),
                  items: dompetList
                      .map(
                        (dompet) => DropdownMenuItem(
                          alignment: AlignmentDirectional.center,
                          value: dompet,
                          child: Row(
                            children: [
                              const Image(
                                image:
                                    AssetImage('assets/images/saldo_icon.png'),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                dompet,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(
                          errorText: 'Silahkan pilih salah satu dompet'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CardView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nominal',
                  style: TextStyle(fontSize: 12),
                ),
                FormBuilderTextField(
                  name: 'nominal',
                  inputFormatters: [RupiahFormat()],
                  valueTransformer: (value) => formatRupiahValue(value),
                  style: const TextStyle(fontSize: 12),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CustomIcons.rp,
                        size: 14,
                        color: Colors.black,
                      ),
                      suffixIcon: const Icon(Icons.calculate_rounded),
                      contentPadding: const EdgeInsets.all(0),
                      filled: true,
                      fillColor: const Color(0xFFF5F5F5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintStyle: const TextStyle(fontSize: 12),
                      hintText: 'Masukkan nominal'),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(
                          errorText: 'Silahkan pilih salah satu dompet'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CardView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Kategori',
                  style: TextStyle(fontSize: 12),
                ),
                FormBuilderDropdown<String>(
                  onChanged: (value) => setState(() {}),
                  name: 'kategori',
                  icon: const Icon(Icons.chevron_right_rounded),
                  decoration: InputDecoration(
                    filled:
                        _formKey.currentState?.fields['kategori']?.value == null
                            ? true
                            : false,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon:
                        _formKey.currentState?.fields['kategori']?.value == null
                            ? const Image(
                                image: AssetImage('assets/images/electric.png'))
                            : null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Pilih Kategori',
                    hintStyle: const TextStyle(fontSize: 12),
                  ),
                  items: kategoriList
                      .map(
                        (kategori) => DropdownMenuItem(
                          alignment: AlignmentDirectional.center,
                          value: kategori,
                          child: Row(
                            children: [
                              const Image(
                                image: AssetImage('assets/images/electric.png'),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                kategori,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(
                          errorText: 'Silahkan pilih salah satu kategori'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CardView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tanggal',
                  style: TextStyle(fontSize: 12),
                ),
                FormBuilderDateTimePicker(
                  name: 'tanggal',
                  initialEntryMode: DatePickerEntryMode.calendarOnly,
                  inputType: InputType.date,
                  style: const TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon: const Icon(Icons.calendar_month),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Pilih Tanggal',
                    hintStyle: const TextStyle(fontSize: 12),
                  ),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(
                          errorText: 'Silahkan pilih tanggal'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CardView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Catatan',
                  style: TextStyle(fontSize: 12),
                ),
                FormBuilderTextField(
                  minLines: 5,
                  maxLines: 5,
                  name: 'catatan',
                  style: const TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    prefixIcon: const Icon(Icons.sticky_note_2_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Tulis catatan',
                    hintStyle: const TextStyle(fontSize: 12),
                  ),
                  // valueTransformer: (text) => num.tryParse(text),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(
                          errorText: 'Silahkan isi catatan'),
                      FormBuilderValidators.max(500),
                    ],
                  ),
                  // initialValue: '12',
                  textInputAction: TextInputAction.next,
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primaryColor)),
                onPressed: () {
                  _formKey.currentState?.saveAndValidate();
                  debugPrint(_formKey.currentState?.value.toString());
                },
                child: const Text(
                  'Tambahkan Pemasukan',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
