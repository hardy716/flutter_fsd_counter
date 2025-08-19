// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CounterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterState()';
}


}

/// @nodoc
class $CounterStateCopyWith<$Res>  {
$CounterStateCopyWith(CounterState _, $Res Function(CounterState) __);
}


/// Adds pattern-matching-related methods to [CounterState].
extension CounterStatePatterns on CounterState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CounterInitial value)?  initial,TResult Function( CounterLoading value)?  loading,TResult Function( CounterLoaded value)?  loaded,TResult Function( CounterError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CounterInitial() when initial != null:
return initial(_that);case CounterLoading() when loading != null:
return loading(_that);case CounterLoaded() when loaded != null:
return loaded(_that);case CounterError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CounterInitial value)  initial,required TResult Function( CounterLoading value)  loading,required TResult Function( CounterLoaded value)  loaded,required TResult Function( CounterError value)  error,}){
final _that = this;
switch (_that) {
case CounterInitial():
return initial(_that);case CounterLoading():
return loading(_that);case CounterLoaded():
return loaded(_that);case CounterError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CounterInitial value)?  initial,TResult? Function( CounterLoading value)?  loading,TResult? Function( CounterLoaded value)?  loaded,TResult? Function( CounterError value)?  error,}){
final _that = this;
switch (_that) {
case CounterInitial() when initial != null:
return initial(_that);case CounterLoading() when loading != null:
return loading(_that);case CounterLoaded() when loaded != null:
return loaded(_that);case CounterError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Counter counter)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CounterInitial() when initial != null:
return initial();case CounterLoading() when loading != null:
return loading();case CounterLoaded() when loaded != null:
return loaded(_that.counter);case CounterError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Counter counter)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case CounterInitial():
return initial();case CounterLoading():
return loading();case CounterLoaded():
return loaded(_that.counter);case CounterError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Counter counter)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case CounterInitial() when initial != null:
return initial();case CounterLoading() when loading != null:
return loading();case CounterLoaded() when loaded != null:
return loaded(_that.counter);case CounterError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CounterInitial implements CounterState {
  const CounterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterState.initial()';
}


}




/// @nodoc


class CounterLoading implements CounterState {
  const CounterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterState.loading()';
}


}




/// @nodoc


class CounterLoaded implements CounterState {
  const CounterLoaded(this.counter);
  

 final  Counter counter;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CounterLoadedCopyWith<CounterLoaded> get copyWith => _$CounterLoadedCopyWithImpl<CounterLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterLoaded&&(identical(other.counter, counter) || other.counter == counter));
}


@override
int get hashCode => Object.hash(runtimeType,counter);

@override
String toString() {
  return 'CounterState.loaded(counter: $counter)';
}


}

/// @nodoc
abstract mixin class $CounterLoadedCopyWith<$Res> implements $CounterStateCopyWith<$Res> {
  factory $CounterLoadedCopyWith(CounterLoaded value, $Res Function(CounterLoaded) _then) = _$CounterLoadedCopyWithImpl;
@useResult
$Res call({
 Counter counter
});


$CounterCopyWith<$Res> get counter;

}
/// @nodoc
class _$CounterLoadedCopyWithImpl<$Res>
    implements $CounterLoadedCopyWith<$Res> {
  _$CounterLoadedCopyWithImpl(this._self, this._then);

  final CounterLoaded _self;
  final $Res Function(CounterLoaded) _then;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? counter = null,}) {
  return _then(CounterLoaded(
null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as Counter,
  ));
}

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CounterCopyWith<$Res> get counter {
  
  return $CounterCopyWith<$Res>(_self.counter, (value) {
    return _then(_self.copyWith(counter: value));
  });
}
}

/// @nodoc


class CounterError implements CounterState {
  const CounterError(this.message);
  

 final  String message;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CounterErrorCopyWith<CounterError> get copyWith => _$CounterErrorCopyWithImpl<CounterError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CounterState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CounterErrorCopyWith<$Res> implements $CounterStateCopyWith<$Res> {
  factory $CounterErrorCopyWith(CounterError value, $Res Function(CounterError) _then) = _$CounterErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CounterErrorCopyWithImpl<$Res>
    implements $CounterErrorCopyWith<$Res> {
  _$CounterErrorCopyWithImpl(this._self, this._then);

  final CounterError _self;
  final $Res Function(CounterError) _then;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CounterError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
