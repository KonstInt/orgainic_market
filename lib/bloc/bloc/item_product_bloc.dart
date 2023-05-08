import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'item_product_event.dart';
part 'item_product_state.dart';

class ItemProductBloc extends Bloc<ItemProductEvent, ItemProductState> {
  ItemProductBloc() : super(ItemProductInitial()) {
    on<ItemProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
