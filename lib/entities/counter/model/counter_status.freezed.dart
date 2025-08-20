// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CounterStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterStatus()';
}


}

/// @nodoc
class $CounterStatusCopyWith<$Res>  {
$CounterStatusCopyWith(CounterStatus _, $Res Function(CounterStatus) __);
}


/// Adds pattern-matching-related methods to [CounterStatus].
extension CounterStatusPatterns on CounterStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Inactive value)?  stopped,TResult Function( _Starting value)?  starting,TResult Function( _Active value)?  started,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Inactive() when stopped != null:
return stopped(_that);case _Starting() when starting != null:
return starting(_that);case _Active() when started != null:
return started(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Inactive value)  stopped,required TResult Function( _Starting value)  starting,required TResult Function( _Active value)  started,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Inactive():
return stopped(_that);case _Starting():
return starting(_that);case _Active():
return started(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Inactive value)?  stopped,TResult? Function( _Starting value)?  starting,TResult? Function( _Active value)?  started,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Inactive() when stopped != null:
return stopped(_that);case _Starting() when starting != null:
return starting(_that);case _Active() when started != null:
return started(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  stopped,TResult Function()?  starting,TResult Function()?  started,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Inactive() when stopped != null:
return stopped();case _Starting() when starting != null:
return starting();case _Active() when started != null:
return started();case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  stopped,required TResult Function()  starting,required TResult Function()  started,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Inactive():
return stopped();case _Starting():
return starting();case _Active():
return started();case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  stopped,TResult? Function()?  starting,TResult? Function()?  started,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Inactive() when stopped != null:
return stopped();case _Starting() when starting != null:
return starting();case _Active() when started != null:
return started();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Inactive implements CounterStatus {
  const _Inactive();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Inactive);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterStatus.stopped()';
}


}




/// @nodoc


class _Starting implements CounterStatus {
  const _Starting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Starting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterStatus.starting()';
}


}




/// @nodoc


class _Active implements CounterStatus {
  const _Active();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Active);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterStatus.started()';
}


}




/// @nodoc


class _Error implements CounterStatus {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of CounterStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CounterStatus.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $CounterStatusCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of CounterStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
