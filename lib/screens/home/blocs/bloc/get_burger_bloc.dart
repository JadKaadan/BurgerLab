import 'package:bloc/bloc.dart';
import 'package:burger_repository/burger_repository.dart';
import 'package:equatable/equatable.dart';

part 'get_burger_event.dart';
part 'get_burger_state.dart';

class GetBurgerBloc extends Bloc<GetBurgerEvent, GetBurgerState> {
  final BurgerRepo _burgerRepo;

  GetBurgerBloc({
    required BurgerRepo burgerRepo,
  })  : _burgerRepo = burgerRepo,
        super(GetBurgerInitial()) {
    on<GetBurgerEvent>((event, emit) async {
      emit(GetBurgerProcess());

      try {
        List<Burger> burgers = await _burgerRepo.getBurgers();
        emit(GetBurgerSuccess(burgers));
      } catch (e) {
        emit(GetBurgerFailure());
      }
    });
  }
}