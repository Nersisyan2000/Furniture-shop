// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:furniture_shop/data/remote/auth_remote.dart' as _i13;
import 'package:furniture_shop/data/remote/auth_remote_impl.dart' as _i14;
import 'package:furniture_shop/data/repository/auth_repository.dart' as _i7;
import 'package:furniture_shop/presentation/screens/auth/sign_in/sign_in_cubit/sign_in_cubit.dart'
    as _i8;
import 'package:furniture_shop/presentation/screens/auth/sign_up/sign_up_cubit/sign_up_cubit.dart'
    as _i9;
import 'package:furniture_shop/presentation/screens/categories/categories_cubit/categories_cubit.dart'
    as _i10;
import 'package:furniture_shop/presentation/screens/detail/detail_cubit/detail_cubit.dart'
    as _i3;
import 'package:furniture_shop/presentation/screens/favourite/favourite_cubit/favourite_cubit.dart'
    as _i11;
import 'package:furniture_shop/presentation/screens/home/widgets/carousel/cubit/discount_cubit.dart'
    as _i4;
import 'package:furniture_shop/presentation/screens/home/widgets/most_interested/most_interested_cubit/most_interested_cubit.dart'
    as _i5;
import 'package:furniture_shop/presentation/screens/home/widgets/popular/popular_cubit/popular_cubit.dart'
    as _i6;
import 'package:furniture_shop/presentation/screens/shopping/shopping_cubit/shopping_cubit.dart'
    as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DetailCubit>(() => _i3.DetailCubit());
    gh.factory<_i4.DiscountCubit>(() => _i4.DiscountCubit());
    gh.factory<_i5.MostInterestedCubit>(() => _i5.MostInterestedCubit());
    gh.factory<_i6.PopularCubit>(() => _i6.PopularCubit());
    gh.factory<_i7.AuthRepository>(() => _i7.AuthRepository());
    gh.factory<_i8.SignInCubit>(() => _i8.SignInCubit());
    gh.factory<_i9.SignUpCubit>(() => _i9.SignUpCubit());
    gh.factory<_i10.CategoriesCubit>(() => _i10.CategoriesCubit());
    gh.lazySingleton<_i11.FavouriteCubit>(() => _i11.FavouriteCubit());
    gh.lazySingleton<_i12.ShoppingCubit>(() => _i12.ShoppingCubit());
    gh.factory<_i13.AuthRemote>(() => _i14.AuthRemoteImpl());
    return this;
  }
}
