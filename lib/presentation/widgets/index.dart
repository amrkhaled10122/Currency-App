library widgets;

import 'package:animate_do/animate_do.dart';
import 'package:coin_currency/core/config/constants/assets.dart';
import 'package:coin_currency/data/extensions/format_extensions.dart';
import 'package:coin_currency/data/helpers/bottom_modal_sheet_helper.dart';
import 'package:coin_currency/data/models/view_model/currency_model/currency_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../core/config/constants/palette.dart';
import '../../core/config/constants/styles.dart';
import '../../data/models/view_model/currency_model/currency_history_model.dart';
import '../../data/models/view_model/intro_page_slider_model/intro_page_slider_model.dart';
import '../../logic/blocs/currency_bloc/currency_bloc.dart';
import '../../logic/blocs/intro_page_slider_bloc/intro_page_slider_bloc.dart';
import '../../logic/providers/navigation_tab_controller.dart';
import 'calculator/calculator_converter/dropdown/dropdown_flag_icon.dart';
import 'calculator/calculator_converter/dropdown/dropdown_icon.dart';
import 'calculator/calculator_converter/dropdown/dropdown_text.dart';

part 'bottom_nav_bar/bottom_bar_item.dart';
part 'bottom_nav_bar/main_navigation_bottom_bar.dart';
part 'calculator/calculator_converter/calculator_converter_field.dart';
part 'calculator/calculator_converter/calculator_currency_view_box.dart';
part 'calculator/calculator_converter/calculator_exchange_button.dart';
part 'calculator/calculator_converter/calculator_from_currency_box.dart';
part 'calculator/calculator_converter/calculator_to_currency_box.dart';
part 'calculator/calculator_title.dart';
part 'calculator/numeric_keyboard/clear_all_input_button.dart';
part 'calculator/numeric_keyboard/num_keyboard_widget.dart';
part 'calculator/numeric_keyboard/simple_number_button.dart';
part 'calculator/numeric_keyboard/single_backspace_button.dart';
part 'common/loading_indicator.dart';
part 'history/currency_history_empty.dart';
part 'history/header/currency_history_title.dart';
part 'history/items/currency_history_item.dart';
part 'history/items/currency_history_item_conversion_values.dart';
part 'history/items/currency_history_item_date.dart';
part 'history/items/currency_history_item_stacked_flags.dart';
part 'history/items/currency_history_item_valutes.dart';
part 'intro/intro_slider_item.dart';
part 'intro/items/intro_slider_button_item.dart';
part 'intro/items/intro_slider_description_item.dart';
part 'intro/items/intro_slider_dots.dart';
part 'intro/items/intro_slider_material_item.dart';
part 'intro/items/intro_slider_title_item.dart';