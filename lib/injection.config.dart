// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'admin/propertyCards/application/watcher/PropertyCards_watcher_bloc.dart'
    as _i26;
import 'admin/propertyCards/domain/PropertyCards_facade.dart' as _i13;
import 'admin/propertyCards/infrastructure/PropertyCards_repository.dart'
    as _i14;
import 'chat/application/adminChatList/watcher/adminChatListWatcher_bloc.dart'
    as _i34;
import 'chat/application/bloc/chat_bloc.dart' as _i35;
import 'chat/application/watcher/chat_watcher_bloc.dart' as _i36;
import 'chat/domain/chat_facade.dart' as _i3;
import 'chat/infrastructure/chat_repository.dart' as _i4;
import 'contactDetails/application/contactDetails_bloc/contactDetails_bloc.dart'
    as _i37;
import 'contactDetails/application/contactDetails_watcher/contactDetails_watcher_bloc.dart'
    as _i38;
import 'contactDetails/domain/contactDetail_facade.dart' as _i5;
import 'contactDetails/infrastructure/contactDetails_facade.dart' as _i6;
import 'houseDetails/application/blocs/houseDetails_bloc.dart' as _i39;
import 'houseDetails/application/watcher/houseDetails_watcher_bloc.dart'
    as _i40;
import 'houseDetails/domain/houseDetails_facade.dart' as _i7;
import 'houseDetails/infrastructure/houseDetails_repository.dart' as _i8;
import 'listProperty/application/watcher/listProperty_watcher_bloc.dart'
    as _i23;
import 'listProperty/domain/listProperty_facade.dart' as _i9;
import 'listProperty/infrastructure/listPropert_repository.dart' as _i10;
import 'preferredTenants/application/bloc/preferredTenants_bloc.dart' as _i24;
import 'preferredTenants/application/watcher/preferredTenants_watcher_bloc.dart'
    as _i25;
import 'preferredTenants/domain/preferredTenants_facade.dart' as _i11;
import 'preferredTenants/infrastructure/preferredTenants_repository.dart'
    as _i12;
import 'propertyStatus/application/propertyStatus_watcher/PropertyStatus_watcher_bloc.dart'
    as _i27;
import 'propertyStatus/domain/propertyStatus_facade.dart' as _i15;
import 'propertyStatus/infrastructure/propertyStatus_repository.dart' as _i16;
import 'rentDetails/application/blocs/rentDetails_bloc.dart' as _i28;
import 'rentDetails/application/watcher/rentDetails_watcher_bloc.dart' as _i29;
import 'rentDetails/domian/rentDetails_facade.dart' as _i17;
import 'rentDetails/infrastructure/rentDetails_facade.dart' as _i18;
import 'TimingDetails/application/blocs/timingDetails_bloc.dart' as _i30;
import 'TimingDetails/application/watcher/timingDetails_watcher_bloc.dart'
    as _i31;
import 'TimingDetails/domain/timingDetails_facade.dart' as _i19;
import 'TimingDetails/infrastructure/timingDetails_repository.dart' as _i20;
import 'visitVerification/application/visit_bloc/visitVerification_bloc.dart'
    as _i32;
import 'visitVerification/application/visit_watcher/visitVerification_watcher_bloc.dart'
    as _i33;
import 'visitVerification/domain/visitVerification_facade.dart' as _i21;
import 'visitVerification/infrastructure%20/VisitVerificationRepository.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IChatFacade>(() => _i4.ChatFacade());
  gh.lazySingleton<_i5.IContactDetailsFacade>(() => _i6.ContactDetailsFacade());
  gh.lazySingleton<_i7.IHouseDetailsFacade>(() => _i8.HouseDetailsFacade());
  gh.lazySingleton<_i9.IListPropertyFacade>(
      () => _i10.ListPropertyRepository());
  gh.lazySingleton<_i11.IPreferredTenantsFacade>(
      () => _i12.PreferredTenantsFacade());
  gh.lazySingleton<_i13.IPropertyCardFacade>(
      () => _i14.PropertyCardRepository());
  gh.lazySingleton<_i15.IPropertyStatusFacade>(
      () => _i16.PropertyStatusRepository());
  gh.lazySingleton<_i17.IRentDetailsFacade>(() => _i18.RentDetailsFacade());
  gh.lazySingleton<_i19.ITimingDetailsFacade>(() => _i20.TimingDetailsFacade());
  gh.lazySingleton<_i21.IVisitVerificationFacade>(
      () => _i22.VisitVerificationRepository());
  gh.factory<_i23.ListPropertyWatcherBloc>(
      () => _i23.ListPropertyWatcherBloc(get<_i9.IListPropertyFacade>()));
  gh.factory<_i24.PreferredTenantsBloc>(
      () => _i24.PreferredTenantsBloc(get<_i11.IPreferredTenantsFacade>()));
  gh.factory<_i25.PreferredTenantsWatcherBloc>(() =>
      _i25.PreferredTenantsWatcherBloc(get<_i11.IPreferredTenantsFacade>()));
  gh.factory<_i26.PropertyCardWatcherBloc>(
      () => _i26.PropertyCardWatcherBloc(get<_i13.IPropertyCardFacade>()));
  gh.factory<_i27.PropertyStatusWatcherBloc>(
      () => _i27.PropertyStatusWatcherBloc(get<_i15.IPropertyStatusFacade>()));
  gh.factory<_i28.RentDetailsBloc>(
      () => _i28.RentDetailsBloc(get<_i17.IRentDetailsFacade>()));
  gh.factory<_i29.RentDetailsWatcherBloc>(
      () => _i29.RentDetailsWatcherBloc(get<_i17.IRentDetailsFacade>()));
  gh.factory<_i30.TimingDetailsBloc>(
      () => _i30.TimingDetailsBloc(get<_i19.ITimingDetailsFacade>()));
  gh.factory<_i31.TimingDetailsWatcherBloc>(
      () => _i31.TimingDetailsWatcherBloc(get<_i19.ITimingDetailsFacade>()));
  gh.factory<_i32.VisitVerificationBloc>(
      () => _i32.VisitVerificationBloc(get<_i21.IVisitVerificationFacade>()));
  gh.factory<_i33.VisitVerificationWatcherBloc>(() =>
      _i33.VisitVerificationWatcherBloc(get<_i21.IVisitVerificationFacade>()));
  gh.factory<_i34.AdminChatListWatcherBloc>(
      () => _i34.AdminChatListWatcherBloc(get<_i3.IChatFacade>()));
  gh.factory<_i35.ChatBloc>(() => _i35.ChatBloc(get<_i3.IChatFacade>()));
  gh.factory<_i36.ChatWatcherBloc>(
      () => _i36.ChatWatcherBloc(get<_i3.IChatFacade>()));
  gh.factory<_i37.ContactDetailsBloc>(
      () => _i37.ContactDetailsBloc(get<_i5.IContactDetailsFacade>()));
  gh.factory<_i38.ContactDetailsWatcherBloc>(
      () => _i38.ContactDetailsWatcherBloc(get<_i5.IContactDetailsFacade>()));
  gh.factory<_i39.HouseDetailsBloc>(
      () => _i39.HouseDetailsBloc(get<_i7.IHouseDetailsFacade>()));
  gh.factory<_i40.HouseDetailsWatcherBloc>(
      () => _i40.HouseDetailsWatcherBloc(get<_i7.IHouseDetailsFacade>()));
  return get;
}
