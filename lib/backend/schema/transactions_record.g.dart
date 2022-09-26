// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionsRecord> _$transactionsRecordSerializer =
    new _$TransactionsRecordSerializer();

class _$TransactionsRecordSerializer
    implements StructuredSerializer<TransactionsRecord> {
  @override
  final Iterable<Type> types = const [TransactionsRecord, _$TransactionsRecord];
  @override
  final String wireName = 'TransactionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransactionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.flagPgto;
    if (value != null) {
      result
        ..add('flag_pgto')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.payment;
    if (value != null) {
      result
        ..add('payment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cotagenerator;
    if (value != null) {
      result
        ..add('cotagenerator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TransactionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'flag_pgto':
          result.flagPgto = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'payment':
          result.payment = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cotagenerator':
          result.cotagenerator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionsRecord extends TransactionsRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? name;
  @override
  final double? value;
  @override
  final bool? flagPgto;
  @override
  final double? payment;
  @override
  final String? cotagenerator;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TransactionsRecord(
          [void Function(TransactionsRecordBuilder)? updates]) =>
      (new TransactionsRecordBuilder()..update(updates))._build();

  _$TransactionsRecord._(
      {this.user,
      this.name,
      this.value,
      this.flagPgto,
      this.payment,
      this.cotagenerator,
      this.ffRef})
      : super._();

  @override
  TransactionsRecord rebuild(
          void Function(TransactionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionsRecordBuilder toBuilder() =>
      new TransactionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionsRecord &&
        user == other.user &&
        name == other.name &&
        value == other.value &&
        flagPgto == other.flagPgto &&
        payment == other.payment &&
        cotagenerator == other.cotagenerator &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, user.hashCode), name.hashCode),
                        value.hashCode),
                    flagPgto.hashCode),
                payment.hashCode),
            cotagenerator.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionsRecord')
          ..add('user', user)
          ..add('name', name)
          ..add('value', value)
          ..add('flagPgto', flagPgto)
          ..add('payment', payment)
          ..add('cotagenerator', cotagenerator)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TransactionsRecordBuilder
    implements Builder<TransactionsRecord, TransactionsRecordBuilder> {
  _$TransactionsRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  bool? _flagPgto;
  bool? get flagPgto => _$this._flagPgto;
  set flagPgto(bool? flagPgto) => _$this._flagPgto = flagPgto;

  double? _payment;
  double? get payment => _$this._payment;
  set payment(double? payment) => _$this._payment = payment;

  String? _cotagenerator;
  String? get cotagenerator => _$this._cotagenerator;
  set cotagenerator(String? cotagenerator) =>
      _$this._cotagenerator = cotagenerator;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TransactionsRecordBuilder() {
    TransactionsRecord._initializeBuilder(this);
  }

  TransactionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _name = $v.name;
      _value = $v.value;
      _flagPgto = $v.flagPgto;
      _payment = $v.payment;
      _cotagenerator = $v.cotagenerator;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionsRecord;
  }

  @override
  void update(void Function(TransactionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionsRecord build() => _build();

  _$TransactionsRecord _build() {
    final _$result = _$v ??
        new _$TransactionsRecord._(
            user: user,
            name: name,
            value: value,
            flagPgto: flagPgto,
            payment: payment,
            cotagenerator: cotagenerator,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
