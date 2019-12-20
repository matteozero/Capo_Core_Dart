///
//  Generated code. Do not modify.
//  source: RhoTypes.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Par extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Par', createEmptyInstance: create)
    ..pc<Send>(1, 'sends', $pb.PbFieldType.PM, subBuilder: Send.create)
    ..pc<Receive>(2, 'receives', $pb.PbFieldType.PM, subBuilder: Receive.create)
    ..pc<New>(4, 'news', $pb.PbFieldType.PM, subBuilder: New.create)
    ..pc<Expr>(5, 'exprs', $pb.PbFieldType.PM, subBuilder: Expr.create)
    ..pc<Match>(6, 'matches', $pb.PbFieldType.PM, subBuilder: Match.create)
    ..pc<GUnforgeable>(7, 'unforgeables', $pb.PbFieldType.PM, subBuilder: GUnforgeable.create)
    ..pc<Connective>(8, 'connectives', $pb.PbFieldType.PM, subBuilder: Connective.create)
    ..a<$core.List<$core.int>>(9, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..aOB(10, 'connectiveUsed')
    ..pc<Bundle>(11, 'bundles', $pb.PbFieldType.PM, subBuilder: Bundle.create)
    ..hasRequiredFields = false
  ;

  Par._() : super();
  factory Par() => create();
  factory Par.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Par.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Par clone() => Par()..mergeFromMessage(this);
  Par copyWith(void Function(Par) updates) => super.copyWith((message) => updates(message as Par));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Par create() => Par._();
  Par createEmptyInstance() => create();
  static $pb.PbList<Par> createRepeated() => $pb.PbList<Par>();
  static Par getDefault() => _defaultInstance ??= create()..freeze();
  static Par _defaultInstance;

  $core.List<Send> get sends => $_getList(0);

  $core.List<Receive> get receives => $_getList(1);

  $core.List<New> get news => $_getList(2);

  $core.List<Expr> get exprs => $_getList(3);

  $core.List<Match> get matches => $_getList(4);

  $core.List<GUnforgeable> get unforgeables => $_getList(5);

  $core.List<Connective> get connectives => $_getList(6);

  $core.List<$core.int> get locallyFree => $_getN(7);
  set locallyFree($core.List<$core.int> v) { $_setBytes(7, v); }
  $core.bool hasLocallyFree() => $_has(7);
  void clearLocallyFree() => clearField(9);

  $core.bool get connectiveUsed => $_get(8, false);
  set connectiveUsed($core.bool v) { $_setBool(8, v); }
  $core.bool hasConnectiveUsed() => $_has(8);
  void clearConnectiveUsed() => clearField(10);

  $core.List<Bundle> get bundles => $_getList(9);
}

enum TaggedContinuation_TaggedCont {
  parBody, 
  scalaBodyRef, 
  notSet
}

class TaggedContinuation extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TaggedContinuation_TaggedCont> _TaggedContinuation_TaggedContByTag = {
    1 : TaggedContinuation_TaggedCont.parBody,
    2 : TaggedContinuation_TaggedCont.scalaBodyRef,
    0 : TaggedContinuation_TaggedCont.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TaggedContinuation', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<ParWithRandom>(1, 'parBody', $pb.PbFieldType.OM, defaultOrMaker: ParWithRandom.getDefault, subBuilder: ParWithRandom.create)
    ..aInt64(2, 'scalaBodyRef')
    ..hasRequiredFields = false
  ;

  TaggedContinuation._() : super();
  factory TaggedContinuation() => create();
  factory TaggedContinuation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaggedContinuation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TaggedContinuation clone() => TaggedContinuation()..mergeFromMessage(this);
  TaggedContinuation copyWith(void Function(TaggedContinuation) updates) => super.copyWith((message) => updates(message as TaggedContinuation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaggedContinuation create() => TaggedContinuation._();
  TaggedContinuation createEmptyInstance() => create();
  static $pb.PbList<TaggedContinuation> createRepeated() => $pb.PbList<TaggedContinuation>();
  static TaggedContinuation getDefault() => _defaultInstance ??= create()..freeze();
  static TaggedContinuation _defaultInstance;

  TaggedContinuation_TaggedCont whichTaggedCont() => _TaggedContinuation_TaggedContByTag[$_whichOneof(0)];
  void clearTaggedCont() => clearField($_whichOneof(0));

  ParWithRandom get parBody => $_getN(0);
  set parBody(ParWithRandom v) { setField(1, v); }
  $core.bool hasParBody() => $_has(0);
  void clearParBody() => clearField(1);

  Int64 get scalaBodyRef => $_getI64(1);
  set scalaBodyRef(Int64 v) { $_setInt64(1, v); }
  $core.bool hasScalaBodyRef() => $_has(1);
  void clearScalaBodyRef() => clearField(2);
}

class ParWithRandom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ParWithRandom', createEmptyInstance: create)
    ..a<Par>(1, 'body', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<$core.List<$core.int>>(2, 'randomState', $pb.PbFieldType.OY, protoName: 'randomState')
    ..hasRequiredFields = false
  ;

  ParWithRandom._() : super();
  factory ParWithRandom() => create();
  factory ParWithRandom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParWithRandom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ParWithRandom clone() => ParWithRandom()..mergeFromMessage(this);
  ParWithRandom copyWith(void Function(ParWithRandom) updates) => super.copyWith((message) => updates(message as ParWithRandom));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParWithRandom create() => ParWithRandom._();
  ParWithRandom createEmptyInstance() => create();
  static $pb.PbList<ParWithRandom> createRepeated() => $pb.PbList<ParWithRandom>();
  static ParWithRandom getDefault() => _defaultInstance ??= create()..freeze();
  static ParWithRandom _defaultInstance;

  Par get body => $_getN(0);
  set body(Par v) { setField(1, v); }
  $core.bool hasBody() => $_has(0);
  void clearBody() => clearField(1);

  $core.List<$core.int> get randomState => $_getN(1);
  set randomState($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasRandomState() => $_has(1);
  void clearRandomState() => clearField(2);
}

class PCost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PCost', createEmptyInstance: create)
    ..a<Int64>(1, 'cost', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false
  ;

  PCost._() : super();
  factory PCost() => create();
  factory PCost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PCost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PCost clone() => PCost()..mergeFromMessage(this);
  PCost copyWith(void Function(PCost) updates) => super.copyWith((message) => updates(message as PCost));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PCost create() => PCost._();
  PCost createEmptyInstance() => create();
  static $pb.PbList<PCost> createRepeated() => $pb.PbList<PCost>();
  static PCost getDefault() => _defaultInstance ??= create()..freeze();
  static PCost _defaultInstance;

  Int64 get cost => $_getI64(0);
  set cost(Int64 v) { $_setInt64(0, v); }
  $core.bool hasCost() => $_has(0);
  void clearCost() => clearField(1);
}

class ListParWithRandom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListParWithRandom', createEmptyInstance: create)
    ..pc<Par>(1, 'pars', $pb.PbFieldType.PM, subBuilder: Par.create)
    ..a<$core.List<$core.int>>(2, 'randomState', $pb.PbFieldType.OY, protoName: 'randomState')
    ..hasRequiredFields = false
  ;

  ListParWithRandom._() : super();
  factory ListParWithRandom() => create();
  factory ListParWithRandom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListParWithRandom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListParWithRandom clone() => ListParWithRandom()..mergeFromMessage(this);
  ListParWithRandom copyWith(void Function(ListParWithRandom) updates) => super.copyWith((message) => updates(message as ListParWithRandom));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListParWithRandom create() => ListParWithRandom._();
  ListParWithRandom createEmptyInstance() => create();
  static $pb.PbList<ListParWithRandom> createRepeated() => $pb.PbList<ListParWithRandom>();
  static ListParWithRandom getDefault() => _defaultInstance ??= create()..freeze();
  static ListParWithRandom _defaultInstance;

  $core.List<Par> get pars => $_getList(0);

  $core.List<$core.int> get randomState => $_getN(1);
  set randomState($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasRandomState() => $_has(1);
  void clearRandomState() => clearField(2);
}

class Var_WildcardMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Var.WildcardMsg', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Var_WildcardMsg._() : super();
  factory Var_WildcardMsg() => create();
  factory Var_WildcardMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Var_WildcardMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Var_WildcardMsg clone() => Var_WildcardMsg()..mergeFromMessage(this);
  Var_WildcardMsg copyWith(void Function(Var_WildcardMsg) updates) => super.copyWith((message) => updates(message as Var_WildcardMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Var_WildcardMsg create() => Var_WildcardMsg._();
  Var_WildcardMsg createEmptyInstance() => create();
  static $pb.PbList<Var_WildcardMsg> createRepeated() => $pb.PbList<Var_WildcardMsg>();
  static Var_WildcardMsg getDefault() => _defaultInstance ??= create()..freeze();
  static Var_WildcardMsg _defaultInstance;
}

enum Var_VarInstance {
  boundVar, 
  freeVar, 
  wildcard, 
  notSet
}

class Var extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Var_VarInstance> _Var_VarInstanceByTag = {
    1 : Var_VarInstance.boundVar,
    2 : Var_VarInstance.freeVar,
    3 : Var_VarInstance.wildcard,
    0 : Var_VarInstance.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Var', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..a<$core.int>(1, 'boundVar', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, 'freeVar', $pb.PbFieldType.OS3)
    ..a<Var_WildcardMsg>(3, 'wildcard', $pb.PbFieldType.OM, defaultOrMaker: Var_WildcardMsg.getDefault, subBuilder: Var_WildcardMsg.create)
    ..hasRequiredFields = false
  ;

  Var._() : super();
  factory Var() => create();
  factory Var.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Var.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Var clone() => Var()..mergeFromMessage(this);
  Var copyWith(void Function(Var) updates) => super.copyWith((message) => updates(message as Var));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Var create() => Var._();
  Var createEmptyInstance() => create();
  static $pb.PbList<Var> createRepeated() => $pb.PbList<Var>();
  static Var getDefault() => _defaultInstance ??= create()..freeze();
  static Var _defaultInstance;

  Var_VarInstance whichVarInstance() => _Var_VarInstanceByTag[$_whichOneof(0)];
  void clearVarInstance() => clearField($_whichOneof(0));

  $core.int get boundVar => $_get(0, 0);
  set boundVar($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasBoundVar() => $_has(0);
  void clearBoundVar() => clearField(1);

  $core.int get freeVar => $_get(1, 0);
  set freeVar($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasFreeVar() => $_has(1);
  void clearFreeVar() => clearField(2);

  Var_WildcardMsg get wildcard => $_getN(2);
  set wildcard(Var_WildcardMsg v) { setField(3, v); }
  $core.bool hasWildcard() => $_has(2);
  void clearWildcard() => clearField(3);
}

class Bundle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Bundle', createEmptyInstance: create)
    ..a<Par>(1, 'body', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..aOB(2, 'writeFlag', protoName: 'writeFlag')
    ..aOB(3, 'readFlag', protoName: 'readFlag')
    ..hasRequiredFields = false
  ;

  Bundle._() : super();
  factory Bundle() => create();
  factory Bundle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Bundle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Bundle clone() => Bundle()..mergeFromMessage(this);
  Bundle copyWith(void Function(Bundle) updates) => super.copyWith((message) => updates(message as Bundle));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Bundle create() => Bundle._();
  Bundle createEmptyInstance() => create();
  static $pb.PbList<Bundle> createRepeated() => $pb.PbList<Bundle>();
  static Bundle getDefault() => _defaultInstance ??= create()..freeze();
  static Bundle _defaultInstance;

  Par get body => $_getN(0);
  set body(Par v) { setField(1, v); }
  $core.bool hasBody() => $_has(0);
  void clearBody() => clearField(1);

  $core.bool get writeFlag => $_get(1, false);
  set writeFlag($core.bool v) { $_setBool(1, v); }
  $core.bool hasWriteFlag() => $_has(1);
  void clearWriteFlag() => clearField(2);

  $core.bool get readFlag => $_get(2, false);
  set readFlag($core.bool v) { $_setBool(2, v); }
  $core.bool hasReadFlag() => $_has(2);
  void clearReadFlag() => clearField(3);
}

class Send extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Send', createEmptyInstance: create)
    ..a<Par>(1, 'chan', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..pc<Par>(2, 'data', $pb.PbFieldType.PM, subBuilder: Par.create)
    ..aOB(3, 'persistent')
    ..a<$core.List<$core.int>>(5, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..aOB(6, 'connectiveUsed')
    ..hasRequiredFields = false
  ;

  Send._() : super();
  factory Send() => create();
  factory Send.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Send.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Send clone() => Send()..mergeFromMessage(this);
  Send copyWith(void Function(Send) updates) => super.copyWith((message) => updates(message as Send));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Send create() => Send._();
  Send createEmptyInstance() => create();
  static $pb.PbList<Send> createRepeated() => $pb.PbList<Send>();
  static Send getDefault() => _defaultInstance ??= create()..freeze();
  static Send _defaultInstance;

  Par get chan => $_getN(0);
  set chan(Par v) { setField(1, v); }
  $core.bool hasChan() => $_has(0);
  void clearChan() => clearField(1);

  $core.List<Par> get data => $_getList(1);

  $core.bool get persistent => $_get(2, false);
  set persistent($core.bool v) { $_setBool(2, v); }
  $core.bool hasPersistent() => $_has(2);
  void clearPersistent() => clearField(3);

  $core.List<$core.int> get locallyFree => $_getN(3);
  set locallyFree($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasLocallyFree() => $_has(3);
  void clearLocallyFree() => clearField(5);

  $core.bool get connectiveUsed => $_get(4, false);
  set connectiveUsed($core.bool v) { $_setBool(4, v); }
  $core.bool hasConnectiveUsed() => $_has(4);
  void clearConnectiveUsed() => clearField(6);
}

class ReceiveBind extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReceiveBind', createEmptyInstance: create)
    ..pc<Par>(1, 'patterns', $pb.PbFieldType.PM, subBuilder: Par.create)
    ..a<Par>(2, 'source', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Var>(3, 'remainder', $pb.PbFieldType.OM, defaultOrMaker: Var.getDefault, subBuilder: Var.create)
    ..a<$core.int>(4, 'freeCount', $pb.PbFieldType.O3, protoName: 'freeCount')
    ..hasRequiredFields = false
  ;

  ReceiveBind._() : super();
  factory ReceiveBind() => create();
  factory ReceiveBind.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReceiveBind.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReceiveBind clone() => ReceiveBind()..mergeFromMessage(this);
  ReceiveBind copyWith(void Function(ReceiveBind) updates) => super.copyWith((message) => updates(message as ReceiveBind));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReceiveBind create() => ReceiveBind._();
  ReceiveBind createEmptyInstance() => create();
  static $pb.PbList<ReceiveBind> createRepeated() => $pb.PbList<ReceiveBind>();
  static ReceiveBind getDefault() => _defaultInstance ??= create()..freeze();
  static ReceiveBind _defaultInstance;

  $core.List<Par> get patterns => $_getList(0);

  Par get source => $_getN(1);
  set source(Par v) { setField(2, v); }
  $core.bool hasSource() => $_has(1);
  void clearSource() => clearField(2);

  Var get remainder => $_getN(2);
  set remainder(Var v) { setField(3, v); }
  $core.bool hasRemainder() => $_has(2);
  void clearRemainder() => clearField(3);

  $core.int get freeCount => $_get(3, 0);
  set freeCount($core.int v) { $_setSignedInt32(3, v); }
  $core.bool hasFreeCount() => $_has(3);
  void clearFreeCount() => clearField(4);
}

class BindPattern extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BindPattern', createEmptyInstance: create)
    ..pc<Par>(1, 'patterns', $pb.PbFieldType.PM, subBuilder: Par.create)
    ..a<Var>(2, 'remainder', $pb.PbFieldType.OM, defaultOrMaker: Var.getDefault, subBuilder: Var.create)
    ..a<$core.int>(3, 'freeCount', $pb.PbFieldType.O3, protoName: 'freeCount')
    ..hasRequiredFields = false
  ;

  BindPattern._() : super();
  factory BindPattern() => create();
  factory BindPattern.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BindPattern.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BindPattern clone() => BindPattern()..mergeFromMessage(this);
  BindPattern copyWith(void Function(BindPattern) updates) => super.copyWith((message) => updates(message as BindPattern));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BindPattern create() => BindPattern._();
  BindPattern createEmptyInstance() => create();
  static $pb.PbList<BindPattern> createRepeated() => $pb.PbList<BindPattern>();
  static BindPattern getDefault() => _defaultInstance ??= create()..freeze();
  static BindPattern _defaultInstance;

  $core.List<Par> get patterns => $_getList(0);

  Var get remainder => $_getN(1);
  set remainder(Var v) { setField(2, v); }
  $core.bool hasRemainder() => $_has(1);
  void clearRemainder() => clearField(2);

  $core.int get freeCount => $_get(2, 0);
  set freeCount($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasFreeCount() => $_has(2);
  void clearFreeCount() => clearField(3);
}

class ListBindPatterns extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListBindPatterns', createEmptyInstance: create)
    ..pc<BindPattern>(1, 'patterns', $pb.PbFieldType.PM, subBuilder: BindPattern.create)
    ..hasRequiredFields = false
  ;

  ListBindPatterns._() : super();
  factory ListBindPatterns() => create();
  factory ListBindPatterns.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBindPatterns.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListBindPatterns clone() => ListBindPatterns()..mergeFromMessage(this);
  ListBindPatterns copyWith(void Function(ListBindPatterns) updates) => super.copyWith((message) => updates(message as ListBindPatterns));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListBindPatterns create() => ListBindPatterns._();
  ListBindPatterns createEmptyInstance() => create();
  static $pb.PbList<ListBindPatterns> createRepeated() => $pb.PbList<ListBindPatterns>();
  static ListBindPatterns getDefault() => _defaultInstance ??= create()..freeze();
  static ListBindPatterns _defaultInstance;

  $core.List<BindPattern> get patterns => $_getList(0);
}

class Receive extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Receive', createEmptyInstance: create)
    ..pc<ReceiveBind>(1, 'binds', $pb.PbFieldType.PM, subBuilder: ReceiveBind.create)
    ..a<Par>(2, 'body', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..aOB(3, 'persistent')
    ..aOB(4, 'peek')
    ..a<$core.int>(5, 'bindCount', $pb.PbFieldType.O3, protoName: 'bindCount')
    ..a<$core.List<$core.int>>(6, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..aOB(7, 'connectiveUsed')
    ..hasRequiredFields = false
  ;

  Receive._() : super();
  factory Receive() => create();
  factory Receive.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Receive.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Receive clone() => Receive()..mergeFromMessage(this);
  Receive copyWith(void Function(Receive) updates) => super.copyWith((message) => updates(message as Receive));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Receive create() => Receive._();
  Receive createEmptyInstance() => create();
  static $pb.PbList<Receive> createRepeated() => $pb.PbList<Receive>();
  static Receive getDefault() => _defaultInstance ??= create()..freeze();
  static Receive _defaultInstance;

  $core.List<ReceiveBind> get binds => $_getList(0);

  Par get body => $_getN(1);
  set body(Par v) { setField(2, v); }
  $core.bool hasBody() => $_has(1);
  void clearBody() => clearField(2);

  $core.bool get persistent => $_get(2, false);
  set persistent($core.bool v) { $_setBool(2, v); }
  $core.bool hasPersistent() => $_has(2);
  void clearPersistent() => clearField(3);

  $core.bool get peek => $_get(3, false);
  set peek($core.bool v) { $_setBool(3, v); }
  $core.bool hasPeek() => $_has(3);
  void clearPeek() => clearField(4);

  $core.int get bindCount => $_get(4, 0);
  set bindCount($core.int v) { $_setSignedInt32(4, v); }
  $core.bool hasBindCount() => $_has(4);
  void clearBindCount() => clearField(5);

  $core.List<$core.int> get locallyFree => $_getN(5);
  set locallyFree($core.List<$core.int> v) { $_setBytes(5, v); }
  $core.bool hasLocallyFree() => $_has(5);
  void clearLocallyFree() => clearField(6);

  $core.bool get connectiveUsed => $_get(6, false);
  set connectiveUsed($core.bool v) { $_setBool(6, v); }
  $core.bool hasConnectiveUsed() => $_has(6);
  void clearConnectiveUsed() => clearField(7);
}

class New extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('New', createEmptyInstance: create)
    ..a<$core.int>(1, 'bindCount', $pb.PbFieldType.OS3, protoName: 'bindCount')
    ..a<Par>(2, 'p', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..pPS(3, 'uri')
    ..m<$core.String, Par>(4, 'injections', entryClassName: 'New.InjectionsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Par.create)
    ..a<$core.List<$core.int>>(5, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..hasRequiredFields = false
  ;

  New._() : super();
  factory New() => create();
  factory New.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory New.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  New clone() => New()..mergeFromMessage(this);
  New copyWith(void Function(New) updates) => super.copyWith((message) => updates(message as New));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static New create() => New._();
  New createEmptyInstance() => create();
  static $pb.PbList<New> createRepeated() => $pb.PbList<New>();
  static New getDefault() => _defaultInstance ??= create()..freeze();
  static New _defaultInstance;

  $core.int get bindCount => $_get(0, 0);
  set bindCount($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasBindCount() => $_has(0);
  void clearBindCount() => clearField(1);

  Par get p => $_getN(1);
  set p(Par v) { setField(2, v); }
  $core.bool hasP() => $_has(1);
  void clearP() => clearField(2);

  $core.List<$core.String> get uri => $_getList(2);

  $core.Map<$core.String, Par> get injections => $_getMap(3);

  $core.List<$core.int> get locallyFree => $_getN(4);
  set locallyFree($core.List<$core.int> v) { $_setBytes(4, v); }
  $core.bool hasLocallyFree() => $_has(4);
  void clearLocallyFree() => clearField(5);
}

class MatchCase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MatchCase', createEmptyInstance: create)
    ..a<Par>(1, 'pattern', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'source', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<$core.int>(3, 'freeCount', $pb.PbFieldType.O3, protoName: 'freeCount')
    ..hasRequiredFields = false
  ;

  MatchCase._() : super();
  factory MatchCase() => create();
  factory MatchCase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchCase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MatchCase clone() => MatchCase()..mergeFromMessage(this);
  MatchCase copyWith(void Function(MatchCase) updates) => super.copyWith((message) => updates(message as MatchCase));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MatchCase create() => MatchCase._();
  MatchCase createEmptyInstance() => create();
  static $pb.PbList<MatchCase> createRepeated() => $pb.PbList<MatchCase>();
  static MatchCase getDefault() => _defaultInstance ??= create()..freeze();
  static MatchCase _defaultInstance;

  Par get pattern => $_getN(0);
  set pattern(Par v) { setField(1, v); }
  $core.bool hasPattern() => $_has(0);
  void clearPattern() => clearField(1);

  Par get source => $_getN(1);
  set source(Par v) { setField(2, v); }
  $core.bool hasSource() => $_has(1);
  void clearSource() => clearField(2);

  $core.int get freeCount => $_get(2, 0);
  set freeCount($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasFreeCount() => $_has(2);
  void clearFreeCount() => clearField(3);
}

class Match extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Match', createEmptyInstance: create)
    ..a<Par>(1, 'target', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..pc<MatchCase>(2, 'cases', $pb.PbFieldType.PM, subBuilder: MatchCase.create)
    ..a<$core.List<$core.int>>(4, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..aOB(5, 'connectiveUsed')
    ..hasRequiredFields = false
  ;

  Match._() : super();
  factory Match() => create();
  factory Match.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Match.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Match clone() => Match()..mergeFromMessage(this);
  Match copyWith(void Function(Match) updates) => super.copyWith((message) => updates(message as Match));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Match create() => Match._();
  Match createEmptyInstance() => create();
  static $pb.PbList<Match> createRepeated() => $pb.PbList<Match>();
  static Match getDefault() => _defaultInstance ??= create()..freeze();
  static Match _defaultInstance;

  Par get target => $_getN(0);
  set target(Par v) { setField(1, v); }
  $core.bool hasTarget() => $_has(0);
  void clearTarget() => clearField(1);

  $core.List<MatchCase> get cases => $_getList(1);

  $core.List<$core.int> get locallyFree => $_getN(2);
  set locallyFree($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasLocallyFree() => $_has(2);
  void clearLocallyFree() => clearField(4);

  $core.bool get connectiveUsed => $_get(3, false);
  set connectiveUsed($core.bool v) { $_setBool(3, v); }
  $core.bool hasConnectiveUsed() => $_has(3);
  void clearConnectiveUsed() => clearField(5);
}

enum Expr_ExprInstance {
  gBool, 
  gInt, 
  gString, 
  gUri, 
  eNotBody, 
  eNegBody, 
  eMultBody, 
  eDivBody, 
  ePlusBody, 
  eMinusBody, 
  eLtBody, 
  eLteBody, 
  eGtBody, 
  eGteBody, 
  eEqBody, 
  eNeqBody, 
  eAndBody, 
  eOrBody, 
  eVarBody, 
  eListBody, 
  eTupleBody, 
  eSetBody, 
  eMapBody, 
  eMethodBody, 
  gByteArray, 
  eMatchesBody, 
  ePercentPercentBody, 
  ePlusPlusBody, 
  eMinusMinusBody, 
  eModBody, 
  notSet
}

class Expr extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Expr_ExprInstance> _Expr_ExprInstanceByTag = {
    1 : Expr_ExprInstance.gBool,
    2 : Expr_ExprInstance.gInt,
    3 : Expr_ExprInstance.gString,
    4 : Expr_ExprInstance.gUri,
    5 : Expr_ExprInstance.eNotBody,
    6 : Expr_ExprInstance.eNegBody,
    7 : Expr_ExprInstance.eMultBody,
    8 : Expr_ExprInstance.eDivBody,
    9 : Expr_ExprInstance.ePlusBody,
    10 : Expr_ExprInstance.eMinusBody,
    11 : Expr_ExprInstance.eLtBody,
    12 : Expr_ExprInstance.eLteBody,
    13 : Expr_ExprInstance.eGtBody,
    14 : Expr_ExprInstance.eGteBody,
    15 : Expr_ExprInstance.eEqBody,
    16 : Expr_ExprInstance.eNeqBody,
    17 : Expr_ExprInstance.eAndBody,
    18 : Expr_ExprInstance.eOrBody,
    19 : Expr_ExprInstance.eVarBody,
    20 : Expr_ExprInstance.eListBody,
    21 : Expr_ExprInstance.eTupleBody,
    22 : Expr_ExprInstance.eSetBody,
    23 : Expr_ExprInstance.eMapBody,
    24 : Expr_ExprInstance.eMethodBody,
    25 : Expr_ExprInstance.gByteArray,
    27 : Expr_ExprInstance.eMatchesBody,
    28 : Expr_ExprInstance.ePercentPercentBody,
    29 : Expr_ExprInstance.ePlusPlusBody,
    30 : Expr_ExprInstance.eMinusMinusBody,
    31 : Expr_ExprInstance.eModBody,
    0 : Expr_ExprInstance.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Expr', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 27, 28, 29, 30, 31])
    ..aOB(1, 'gBool')
    ..a<Int64>(2, 'gInt', $pb.PbFieldType.OS6, defaultOrMaker: Int64.ZERO)
    ..aOS(3, 'gString')
    ..aOS(4, 'gUri')
    ..a<ENot>(5, 'eNotBody', $pb.PbFieldType.OM, defaultOrMaker: ENot.getDefault, subBuilder: ENot.create)
    ..a<ENeg>(6, 'eNegBody', $pb.PbFieldType.OM, defaultOrMaker: ENeg.getDefault, subBuilder: ENeg.create)
    ..a<EMult>(7, 'eMultBody', $pb.PbFieldType.OM, defaultOrMaker: EMult.getDefault, subBuilder: EMult.create)
    ..a<EDiv>(8, 'eDivBody', $pb.PbFieldType.OM, defaultOrMaker: EDiv.getDefault, subBuilder: EDiv.create)
    ..a<EPlus>(9, 'ePlusBody', $pb.PbFieldType.OM, defaultOrMaker: EPlus.getDefault, subBuilder: EPlus.create)
    ..a<EMinus>(10, 'eMinusBody', $pb.PbFieldType.OM, defaultOrMaker: EMinus.getDefault, subBuilder: EMinus.create)
    ..a<ELt>(11, 'eLtBody', $pb.PbFieldType.OM, defaultOrMaker: ELt.getDefault, subBuilder: ELt.create)
    ..a<ELte>(12, 'eLteBody', $pb.PbFieldType.OM, defaultOrMaker: ELte.getDefault, subBuilder: ELte.create)
    ..a<EGt>(13, 'eGtBody', $pb.PbFieldType.OM, defaultOrMaker: EGt.getDefault, subBuilder: EGt.create)
    ..a<EGte>(14, 'eGteBody', $pb.PbFieldType.OM, defaultOrMaker: EGte.getDefault, subBuilder: EGte.create)
    ..a<EEq>(15, 'eEqBody', $pb.PbFieldType.OM, defaultOrMaker: EEq.getDefault, subBuilder: EEq.create)
    ..a<ENeq>(16, 'eNeqBody', $pb.PbFieldType.OM, defaultOrMaker: ENeq.getDefault, subBuilder: ENeq.create)
    ..a<EAnd>(17, 'eAndBody', $pb.PbFieldType.OM, defaultOrMaker: EAnd.getDefault, subBuilder: EAnd.create)
    ..a<EOr>(18, 'eOrBody', $pb.PbFieldType.OM, defaultOrMaker: EOr.getDefault, subBuilder: EOr.create)
    ..a<EVar>(19, 'eVarBody', $pb.PbFieldType.OM, defaultOrMaker: EVar.getDefault, subBuilder: EVar.create)
    ..a<EList>(20, 'eListBody', $pb.PbFieldType.OM, defaultOrMaker: EList.getDefault, subBuilder: EList.create)
    ..a<ETuple>(21, 'eTupleBody', $pb.PbFieldType.OM, defaultOrMaker: ETuple.getDefault, subBuilder: ETuple.create)
    ..a<ESet>(22, 'eSetBody', $pb.PbFieldType.OM, defaultOrMaker: ESet.getDefault, subBuilder: ESet.create)
    ..a<EMap>(23, 'eMapBody', $pb.PbFieldType.OM, defaultOrMaker: EMap.getDefault, subBuilder: EMap.create)
    ..a<EMethod>(24, 'eMethodBody', $pb.PbFieldType.OM, defaultOrMaker: EMethod.getDefault, subBuilder: EMethod.create)
    ..a<$core.List<$core.int>>(25, 'gByteArray', $pb.PbFieldType.OY)
    ..a<EMatches>(27, 'eMatchesBody', $pb.PbFieldType.OM, defaultOrMaker: EMatches.getDefault, subBuilder: EMatches.create)
    ..a<EPercentPercent>(28, 'ePercentPercentBody', $pb.PbFieldType.OM, defaultOrMaker: EPercentPercent.getDefault, subBuilder: EPercentPercent.create)
    ..a<EPlusPlus>(29, 'ePlusPlusBody', $pb.PbFieldType.OM, defaultOrMaker: EPlusPlus.getDefault, subBuilder: EPlusPlus.create)
    ..a<EMinusMinus>(30, 'eMinusMinusBody', $pb.PbFieldType.OM, defaultOrMaker: EMinusMinus.getDefault, subBuilder: EMinusMinus.create)
    ..a<EMod>(31, 'eModBody', $pb.PbFieldType.OM, defaultOrMaker: EMod.getDefault, subBuilder: EMod.create)
    ..hasRequiredFields = false
  ;

  Expr._() : super();
  factory Expr() => create();
  factory Expr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Expr clone() => Expr()..mergeFromMessage(this);
  Expr copyWith(void Function(Expr) updates) => super.copyWith((message) => updates(message as Expr));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Expr create() => Expr._();
  Expr createEmptyInstance() => create();
  static $pb.PbList<Expr> createRepeated() => $pb.PbList<Expr>();
  static Expr getDefault() => _defaultInstance ??= create()..freeze();
  static Expr _defaultInstance;

  Expr_ExprInstance whichExprInstance() => _Expr_ExprInstanceByTag[$_whichOneof(0)];
  void clearExprInstance() => clearField($_whichOneof(0));

  $core.bool get gBool => $_get(0, false);
  set gBool($core.bool v) { $_setBool(0, v); }
  $core.bool hasGBool() => $_has(0);
  void clearGBool() => clearField(1);

  Int64 get gInt => $_getI64(1);
  set gInt(Int64 v) { $_setInt64(1, v); }
  $core.bool hasGInt() => $_has(1);
  void clearGInt() => clearField(2);

  $core.String get gString => $_getS(2, '');
  set gString($core.String v) { $_setString(2, v); }
  $core.bool hasGString() => $_has(2);
  void clearGString() => clearField(3);

  $core.String get gUri => $_getS(3, '');
  set gUri($core.String v) { $_setString(3, v); }
  $core.bool hasGUri() => $_has(3);
  void clearGUri() => clearField(4);

  ENot get eNotBody => $_getN(4);
  set eNotBody(ENot v) { setField(5, v); }
  $core.bool hasENotBody() => $_has(4);
  void clearENotBody() => clearField(5);

  ENeg get eNegBody => $_getN(5);
  set eNegBody(ENeg v) { setField(6, v); }
  $core.bool hasENegBody() => $_has(5);
  void clearENegBody() => clearField(6);

  EMult get eMultBody => $_getN(6);
  set eMultBody(EMult v) { setField(7, v); }
  $core.bool hasEMultBody() => $_has(6);
  void clearEMultBody() => clearField(7);

  EDiv get eDivBody => $_getN(7);
  set eDivBody(EDiv v) { setField(8, v); }
  $core.bool hasEDivBody() => $_has(7);
  void clearEDivBody() => clearField(8);

  EPlus get ePlusBody => $_getN(8);
  set ePlusBody(EPlus v) { setField(9, v); }
  $core.bool hasEPlusBody() => $_has(8);
  void clearEPlusBody() => clearField(9);

  EMinus get eMinusBody => $_getN(9);
  set eMinusBody(EMinus v) { setField(10, v); }
  $core.bool hasEMinusBody() => $_has(9);
  void clearEMinusBody() => clearField(10);

  ELt get eLtBody => $_getN(10);
  set eLtBody(ELt v) { setField(11, v); }
  $core.bool hasELtBody() => $_has(10);
  void clearELtBody() => clearField(11);

  ELte get eLteBody => $_getN(11);
  set eLteBody(ELte v) { setField(12, v); }
  $core.bool hasELteBody() => $_has(11);
  void clearELteBody() => clearField(12);

  EGt get eGtBody => $_getN(12);
  set eGtBody(EGt v) { setField(13, v); }
  $core.bool hasEGtBody() => $_has(12);
  void clearEGtBody() => clearField(13);

  EGte get eGteBody => $_getN(13);
  set eGteBody(EGte v) { setField(14, v); }
  $core.bool hasEGteBody() => $_has(13);
  void clearEGteBody() => clearField(14);

  EEq get eEqBody => $_getN(14);
  set eEqBody(EEq v) { setField(15, v); }
  $core.bool hasEEqBody() => $_has(14);
  void clearEEqBody() => clearField(15);

  ENeq get eNeqBody => $_getN(15);
  set eNeqBody(ENeq v) { setField(16, v); }
  $core.bool hasENeqBody() => $_has(15);
  void clearENeqBody() => clearField(16);

  EAnd get eAndBody => $_getN(16);
  set eAndBody(EAnd v) { setField(17, v); }
  $core.bool hasEAndBody() => $_has(16);
  void clearEAndBody() => clearField(17);

  EOr get eOrBody => $_getN(17);
  set eOrBody(EOr v) { setField(18, v); }
  $core.bool hasEOrBody() => $_has(17);
  void clearEOrBody() => clearField(18);

  EVar get eVarBody => $_getN(18);
  set eVarBody(EVar v) { setField(19, v); }
  $core.bool hasEVarBody() => $_has(18);
  void clearEVarBody() => clearField(19);

  EList get eListBody => $_getN(19);
  set eListBody(EList v) { setField(20, v); }
  $core.bool hasEListBody() => $_has(19);
  void clearEListBody() => clearField(20);

  ETuple get eTupleBody => $_getN(20);
  set eTupleBody(ETuple v) { setField(21, v); }
  $core.bool hasETupleBody() => $_has(20);
  void clearETupleBody() => clearField(21);

  ESet get eSetBody => $_getN(21);
  set eSetBody(ESet v) { setField(22, v); }
  $core.bool hasESetBody() => $_has(21);
  void clearESetBody() => clearField(22);

  EMap get eMapBody => $_getN(22);
  set eMapBody(EMap v) { setField(23, v); }
  $core.bool hasEMapBody() => $_has(22);
  void clearEMapBody() => clearField(23);

  EMethod get eMethodBody => $_getN(23);
  set eMethodBody(EMethod v) { setField(24, v); }
  $core.bool hasEMethodBody() => $_has(23);
  void clearEMethodBody() => clearField(24);

  $core.List<$core.int> get gByteArray => $_getN(24);
  set gByteArray($core.List<$core.int> v) { $_setBytes(24, v); }
  $core.bool hasGByteArray() => $_has(24);
  void clearGByteArray() => clearField(25);

  EMatches get eMatchesBody => $_getN(25);
  set eMatchesBody(EMatches v) { setField(27, v); }
  $core.bool hasEMatchesBody() => $_has(25);
  void clearEMatchesBody() => clearField(27);

  EPercentPercent get ePercentPercentBody => $_getN(26);
  set ePercentPercentBody(EPercentPercent v) { setField(28, v); }
  $core.bool hasEPercentPercentBody() => $_has(26);
  void clearEPercentPercentBody() => clearField(28);

  EPlusPlus get ePlusPlusBody => $_getN(27);
  set ePlusPlusBody(EPlusPlus v) { setField(29, v); }
  $core.bool hasEPlusPlusBody() => $_has(27);
  void clearEPlusPlusBody() => clearField(29);

  EMinusMinus get eMinusMinusBody => $_getN(28);
  set eMinusMinusBody(EMinusMinus v) { setField(30, v); }
  $core.bool hasEMinusMinusBody() => $_has(28);
  void clearEMinusMinusBody() => clearField(30);

  EMod get eModBody => $_getN(29);
  set eModBody(EMod v) { setField(31, v); }
  $core.bool hasEModBody() => $_has(29);
  void clearEModBody() => clearField(31);
}

class EList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EList', createEmptyInstance: create)
    ..pc<Par>(1, 'ps', $pb.PbFieldType.PM, subBuilder: Par.create)
    ..a<$core.List<$core.int>>(3, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..aOB(4, 'connectiveUsed')
    ..a<Var>(5, 'remainder', $pb.PbFieldType.OM, defaultOrMaker: Var.getDefault, subBuilder: Var.create)
    ..hasRequiredFields = false
  ;

  EList._() : super();
  factory EList() => create();
  factory EList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EList clone() => EList()..mergeFromMessage(this);
  EList copyWith(void Function(EList) updates) => super.copyWith((message) => updates(message as EList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EList create() => EList._();
  EList createEmptyInstance() => create();
  static $pb.PbList<EList> createRepeated() => $pb.PbList<EList>();
  static EList getDefault() => _defaultInstance ??= create()..freeze();
  static EList _defaultInstance;

  $core.List<Par> get ps => $_getList(0);

  $core.List<$core.int> get locallyFree => $_getN(1);
  set locallyFree($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasLocallyFree() => $_has(1);
  void clearLocallyFree() => clearField(3);

  $core.bool get connectiveUsed => $_get(2, false);
  set connectiveUsed($core.bool v) { $_setBool(2, v); }
  $core.bool hasConnectiveUsed() => $_has(2);
  void clearConnectiveUsed() => clearField(4);

  Var get remainder => $_getN(3);
  set remainder(Var v) { setField(5, v); }
  $core.bool hasRemainder() => $_has(3);
  void clearRemainder() => clearField(5);
}

class ETuple extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ETuple', createEmptyInstance: create)
    ..pc<Par>(1, 'ps', $pb.PbFieldType.PM, subBuilder: Par.create)
    ..a<$core.List<$core.int>>(3, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..aOB(4, 'connectiveUsed')
    ..hasRequiredFields = false
  ;

  ETuple._() : super();
  factory ETuple() => create();
  factory ETuple.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ETuple.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ETuple clone() => ETuple()..mergeFromMessage(this);
  ETuple copyWith(void Function(ETuple) updates) => super.copyWith((message) => updates(message as ETuple));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ETuple create() => ETuple._();
  ETuple createEmptyInstance() => create();
  static $pb.PbList<ETuple> createRepeated() => $pb.PbList<ETuple>();
  static ETuple getDefault() => _defaultInstance ??= create()..freeze();
  static ETuple _defaultInstance;

  $core.List<Par> get ps => $_getList(0);

  $core.List<$core.int> get locallyFree => $_getN(1);
  set locallyFree($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasLocallyFree() => $_has(1);
  void clearLocallyFree() => clearField(3);

  $core.bool get connectiveUsed => $_get(2, false);
  set connectiveUsed($core.bool v) { $_setBool(2, v); }
  $core.bool hasConnectiveUsed() => $_has(2);
  void clearConnectiveUsed() => clearField(4);
}

class ESet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ESet', createEmptyInstance: create)
    ..pc<Par>(1, 'ps', $pb.PbFieldType.PM, subBuilder: Par.create)
    ..a<$core.List<$core.int>>(3, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..aOB(4, 'connectiveUsed')
    ..a<Var>(5, 'remainder', $pb.PbFieldType.OM, defaultOrMaker: Var.getDefault, subBuilder: Var.create)
    ..hasRequiredFields = false
  ;

  ESet._() : super();
  factory ESet() => create();
  factory ESet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ESet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ESet clone() => ESet()..mergeFromMessage(this);
  ESet copyWith(void Function(ESet) updates) => super.copyWith((message) => updates(message as ESet));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ESet create() => ESet._();
  ESet createEmptyInstance() => create();
  static $pb.PbList<ESet> createRepeated() => $pb.PbList<ESet>();
  static ESet getDefault() => _defaultInstance ??= create()..freeze();
  static ESet _defaultInstance;

  $core.List<Par> get ps => $_getList(0);

  $core.List<$core.int> get locallyFree => $_getN(1);
  set locallyFree($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasLocallyFree() => $_has(1);
  void clearLocallyFree() => clearField(3);

  $core.bool get connectiveUsed => $_get(2, false);
  set connectiveUsed($core.bool v) { $_setBool(2, v); }
  $core.bool hasConnectiveUsed() => $_has(2);
  void clearConnectiveUsed() => clearField(4);

  Var get remainder => $_getN(3);
  set remainder(Var v) { setField(5, v); }
  $core.bool hasRemainder() => $_has(3);
  void clearRemainder() => clearField(5);
}

class EMap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EMap', createEmptyInstance: create)
    ..pc<KeyValuePair>(1, 'kvs', $pb.PbFieldType.PM, subBuilder: KeyValuePair.create)
    ..a<$core.List<$core.int>>(3, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..aOB(4, 'connectiveUsed')
    ..a<Var>(5, 'remainder', $pb.PbFieldType.OM, defaultOrMaker: Var.getDefault, subBuilder: Var.create)
    ..hasRequiredFields = false
  ;

  EMap._() : super();
  factory EMap() => create();
  factory EMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EMap clone() => EMap()..mergeFromMessage(this);
  EMap copyWith(void Function(EMap) updates) => super.copyWith((message) => updates(message as EMap));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EMap create() => EMap._();
  EMap createEmptyInstance() => create();
  static $pb.PbList<EMap> createRepeated() => $pb.PbList<EMap>();
  static EMap getDefault() => _defaultInstance ??= create()..freeze();
  static EMap _defaultInstance;

  $core.List<KeyValuePair> get kvs => $_getList(0);

  $core.List<$core.int> get locallyFree => $_getN(1);
  set locallyFree($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasLocallyFree() => $_has(1);
  void clearLocallyFree() => clearField(3);

  $core.bool get connectiveUsed => $_get(2, false);
  set connectiveUsed($core.bool v) { $_setBool(2, v); }
  $core.bool hasConnectiveUsed() => $_has(2);
  void clearConnectiveUsed() => clearField(4);

  Var get remainder => $_getN(3);
  set remainder(Var v) { setField(5, v); }
  $core.bool hasRemainder() => $_has(3);
  void clearRemainder() => clearField(5);
}

class EMethod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EMethod', createEmptyInstance: create)
    ..aOS(1, 'methodName', protoName: 'methodName')
    ..a<Par>(2, 'target', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..pc<Par>(3, 'arguments', $pb.PbFieldType.PM, subBuilder: Par.create)
    ..a<$core.List<$core.int>>(5, 'locallyFree', $pb.PbFieldType.OY, protoName: 'locallyFree')
    ..aOB(6, 'connectiveUsed')
    ..hasRequiredFields = false
  ;

  EMethod._() : super();
  factory EMethod() => create();
  factory EMethod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EMethod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EMethod clone() => EMethod()..mergeFromMessage(this);
  EMethod copyWith(void Function(EMethod) updates) => super.copyWith((message) => updates(message as EMethod));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EMethod create() => EMethod._();
  EMethod createEmptyInstance() => create();
  static $pb.PbList<EMethod> createRepeated() => $pb.PbList<EMethod>();
  static EMethod getDefault() => _defaultInstance ??= create()..freeze();
  static EMethod _defaultInstance;

  $core.String get methodName => $_getS(0, '');
  set methodName($core.String v) { $_setString(0, v); }
  $core.bool hasMethodName() => $_has(0);
  void clearMethodName() => clearField(1);

  Par get target => $_getN(1);
  set target(Par v) { setField(2, v); }
  $core.bool hasTarget() => $_has(1);
  void clearTarget() => clearField(2);

  $core.List<Par> get arguments => $_getList(2);

  $core.List<$core.int> get locallyFree => $_getN(3);
  set locallyFree($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasLocallyFree() => $_has(3);
  void clearLocallyFree() => clearField(5);

  $core.bool get connectiveUsed => $_get(4, false);
  set connectiveUsed($core.bool v) { $_setBool(4, v); }
  $core.bool hasConnectiveUsed() => $_has(4);
  void clearConnectiveUsed() => clearField(6);
}

class KeyValuePair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KeyValuePair', createEmptyInstance: create)
    ..a<Par>(1, 'key', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'value', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  KeyValuePair._() : super();
  factory KeyValuePair() => create();
  factory KeyValuePair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValuePair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KeyValuePair clone() => KeyValuePair()..mergeFromMessage(this);
  KeyValuePair copyWith(void Function(KeyValuePair) updates) => super.copyWith((message) => updates(message as KeyValuePair));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyValuePair create() => KeyValuePair._();
  KeyValuePair createEmptyInstance() => create();
  static $pb.PbList<KeyValuePair> createRepeated() => $pb.PbList<KeyValuePair>();
  static KeyValuePair getDefault() => _defaultInstance ??= create()..freeze();
  static KeyValuePair _defaultInstance;

  Par get key => $_getN(0);
  set key(Par v) { setField(1, v); }
  $core.bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  Par get value => $_getN(1);
  set value(Par v) { setField(2, v); }
  $core.bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class EVar extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EVar', createEmptyInstance: create)
    ..a<Var>(1, 'v', $pb.PbFieldType.OM, defaultOrMaker: Var.getDefault, subBuilder: Var.create)
    ..hasRequiredFields = false
  ;

  EVar._() : super();
  factory EVar() => create();
  factory EVar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EVar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EVar clone() => EVar()..mergeFromMessage(this);
  EVar copyWith(void Function(EVar) updates) => super.copyWith((message) => updates(message as EVar));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EVar create() => EVar._();
  EVar createEmptyInstance() => create();
  static $pb.PbList<EVar> createRepeated() => $pb.PbList<EVar>();
  static EVar getDefault() => _defaultInstance ??= create()..freeze();
  static EVar _defaultInstance;

  Var get v => $_getN(0);
  set v(Var v) { setField(1, v); }
  $core.bool hasV() => $_has(0);
  void clearV() => clearField(1);
}

class ENot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ENot', createEmptyInstance: create)
    ..a<Par>(1, 'p', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  ENot._() : super();
  factory ENot() => create();
  factory ENot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ENot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ENot clone() => ENot()..mergeFromMessage(this);
  ENot copyWith(void Function(ENot) updates) => super.copyWith((message) => updates(message as ENot));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ENot create() => ENot._();
  ENot createEmptyInstance() => create();
  static $pb.PbList<ENot> createRepeated() => $pb.PbList<ENot>();
  static ENot getDefault() => _defaultInstance ??= create()..freeze();
  static ENot _defaultInstance;

  Par get p => $_getN(0);
  set p(Par v) { setField(1, v); }
  $core.bool hasP() => $_has(0);
  void clearP() => clearField(1);
}

class ENeg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ENeg', createEmptyInstance: create)
    ..a<Par>(1, 'p', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  ENeg._() : super();
  factory ENeg() => create();
  factory ENeg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ENeg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ENeg clone() => ENeg()..mergeFromMessage(this);
  ENeg copyWith(void Function(ENeg) updates) => super.copyWith((message) => updates(message as ENeg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ENeg create() => ENeg._();
  ENeg createEmptyInstance() => create();
  static $pb.PbList<ENeg> createRepeated() => $pb.PbList<ENeg>();
  static ENeg getDefault() => _defaultInstance ??= create()..freeze();
  static ENeg _defaultInstance;

  Par get p => $_getN(0);
  set p(Par v) { setField(1, v); }
  $core.bool hasP() => $_has(0);
  void clearP() => clearField(1);
}

class EMult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EMult', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EMult._() : super();
  factory EMult() => create();
  factory EMult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EMult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EMult clone() => EMult()..mergeFromMessage(this);
  EMult copyWith(void Function(EMult) updates) => super.copyWith((message) => updates(message as EMult));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EMult create() => EMult._();
  EMult createEmptyInstance() => create();
  static $pb.PbList<EMult> createRepeated() => $pb.PbList<EMult>();
  static EMult getDefault() => _defaultInstance ??= create()..freeze();
  static EMult _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EDiv extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EDiv', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EDiv._() : super();
  factory EDiv() => create();
  factory EDiv.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EDiv.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EDiv clone() => EDiv()..mergeFromMessage(this);
  EDiv copyWith(void Function(EDiv) updates) => super.copyWith((message) => updates(message as EDiv));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EDiv create() => EDiv._();
  EDiv createEmptyInstance() => create();
  static $pb.PbList<EDiv> createRepeated() => $pb.PbList<EDiv>();
  static EDiv getDefault() => _defaultInstance ??= create()..freeze();
  static EDiv _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EMod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EMod', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EMod._() : super();
  factory EMod() => create();
  factory EMod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EMod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EMod clone() => EMod()..mergeFromMessage(this);
  EMod copyWith(void Function(EMod) updates) => super.copyWith((message) => updates(message as EMod));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EMod create() => EMod._();
  EMod createEmptyInstance() => create();
  static $pb.PbList<EMod> createRepeated() => $pb.PbList<EMod>();
  static EMod getDefault() => _defaultInstance ??= create()..freeze();
  static EMod _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EPlus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EPlus', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EPlus._() : super();
  factory EPlus() => create();
  factory EPlus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EPlus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EPlus clone() => EPlus()..mergeFromMessage(this);
  EPlus copyWith(void Function(EPlus) updates) => super.copyWith((message) => updates(message as EPlus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EPlus create() => EPlus._();
  EPlus createEmptyInstance() => create();
  static $pb.PbList<EPlus> createRepeated() => $pb.PbList<EPlus>();
  static EPlus getDefault() => _defaultInstance ??= create()..freeze();
  static EPlus _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EMinus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EMinus', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EMinus._() : super();
  factory EMinus() => create();
  factory EMinus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EMinus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EMinus clone() => EMinus()..mergeFromMessage(this);
  EMinus copyWith(void Function(EMinus) updates) => super.copyWith((message) => updates(message as EMinus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EMinus create() => EMinus._();
  EMinus createEmptyInstance() => create();
  static $pb.PbList<EMinus> createRepeated() => $pb.PbList<EMinus>();
  static EMinus getDefault() => _defaultInstance ??= create()..freeze();
  static EMinus _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class ELt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ELt', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  ELt._() : super();
  factory ELt() => create();
  factory ELt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ELt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ELt clone() => ELt()..mergeFromMessage(this);
  ELt copyWith(void Function(ELt) updates) => super.copyWith((message) => updates(message as ELt));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ELt create() => ELt._();
  ELt createEmptyInstance() => create();
  static $pb.PbList<ELt> createRepeated() => $pb.PbList<ELt>();
  static ELt getDefault() => _defaultInstance ??= create()..freeze();
  static ELt _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class ELte extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ELte', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  ELte._() : super();
  factory ELte() => create();
  factory ELte.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ELte.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ELte clone() => ELte()..mergeFromMessage(this);
  ELte copyWith(void Function(ELte) updates) => super.copyWith((message) => updates(message as ELte));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ELte create() => ELte._();
  ELte createEmptyInstance() => create();
  static $pb.PbList<ELte> createRepeated() => $pb.PbList<ELte>();
  static ELte getDefault() => _defaultInstance ??= create()..freeze();
  static ELte _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EGt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EGt', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EGt._() : super();
  factory EGt() => create();
  factory EGt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EGt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EGt clone() => EGt()..mergeFromMessage(this);
  EGt copyWith(void Function(EGt) updates) => super.copyWith((message) => updates(message as EGt));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EGt create() => EGt._();
  EGt createEmptyInstance() => create();
  static $pb.PbList<EGt> createRepeated() => $pb.PbList<EGt>();
  static EGt getDefault() => _defaultInstance ??= create()..freeze();
  static EGt _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EGte extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EGte', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EGte._() : super();
  factory EGte() => create();
  factory EGte.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EGte.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EGte clone() => EGte()..mergeFromMessage(this);
  EGte copyWith(void Function(EGte) updates) => super.copyWith((message) => updates(message as EGte));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EGte create() => EGte._();
  EGte createEmptyInstance() => create();
  static $pb.PbList<EGte> createRepeated() => $pb.PbList<EGte>();
  static EGte getDefault() => _defaultInstance ??= create()..freeze();
  static EGte _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EEq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EEq', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EEq._() : super();
  factory EEq() => create();
  factory EEq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EEq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EEq clone() => EEq()..mergeFromMessage(this);
  EEq copyWith(void Function(EEq) updates) => super.copyWith((message) => updates(message as EEq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EEq create() => EEq._();
  EEq createEmptyInstance() => create();
  static $pb.PbList<EEq> createRepeated() => $pb.PbList<EEq>();
  static EEq getDefault() => _defaultInstance ??= create()..freeze();
  static EEq _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class ENeq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ENeq', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  ENeq._() : super();
  factory ENeq() => create();
  factory ENeq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ENeq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ENeq clone() => ENeq()..mergeFromMessage(this);
  ENeq copyWith(void Function(ENeq) updates) => super.copyWith((message) => updates(message as ENeq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ENeq create() => ENeq._();
  ENeq createEmptyInstance() => create();
  static $pb.PbList<ENeq> createRepeated() => $pb.PbList<ENeq>();
  static ENeq getDefault() => _defaultInstance ??= create()..freeze();
  static ENeq _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EAnd extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EAnd', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EAnd._() : super();
  factory EAnd() => create();
  factory EAnd.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EAnd.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EAnd clone() => EAnd()..mergeFromMessage(this);
  EAnd copyWith(void Function(EAnd) updates) => super.copyWith((message) => updates(message as EAnd));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EAnd create() => EAnd._();
  EAnd createEmptyInstance() => create();
  static $pb.PbList<EAnd> createRepeated() => $pb.PbList<EAnd>();
  static EAnd getDefault() => _defaultInstance ??= create()..freeze();
  static EAnd _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EOr extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EOr', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EOr._() : super();
  factory EOr() => create();
  factory EOr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EOr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EOr clone() => EOr()..mergeFromMessage(this);
  EOr copyWith(void Function(EOr) updates) => super.copyWith((message) => updates(message as EOr));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EOr create() => EOr._();
  EOr createEmptyInstance() => create();
  static $pb.PbList<EOr> createRepeated() => $pb.PbList<EOr>();
  static EOr getDefault() => _defaultInstance ??= create()..freeze();
  static EOr _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EMatches extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EMatches', createEmptyInstance: create)
    ..a<Par>(1, 'target', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'pattern', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EMatches._() : super();
  factory EMatches() => create();
  factory EMatches.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EMatches.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EMatches clone() => EMatches()..mergeFromMessage(this);
  EMatches copyWith(void Function(EMatches) updates) => super.copyWith((message) => updates(message as EMatches));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EMatches create() => EMatches._();
  EMatches createEmptyInstance() => create();
  static $pb.PbList<EMatches> createRepeated() => $pb.PbList<EMatches>();
  static EMatches getDefault() => _defaultInstance ??= create()..freeze();
  static EMatches _defaultInstance;

  Par get target => $_getN(0);
  set target(Par v) { setField(1, v); }
  $core.bool hasTarget() => $_has(0);
  void clearTarget() => clearField(1);

  Par get pattern => $_getN(1);
  set pattern(Par v) { setField(2, v); }
  $core.bool hasPattern() => $_has(1);
  void clearPattern() => clearField(2);
}

class EPercentPercent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EPercentPercent', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EPercentPercent._() : super();
  factory EPercentPercent() => create();
  factory EPercentPercent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EPercentPercent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EPercentPercent clone() => EPercentPercent()..mergeFromMessage(this);
  EPercentPercent copyWith(void Function(EPercentPercent) updates) => super.copyWith((message) => updates(message as EPercentPercent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EPercentPercent create() => EPercentPercent._();
  EPercentPercent createEmptyInstance() => create();
  static $pb.PbList<EPercentPercent> createRepeated() => $pb.PbList<EPercentPercent>();
  static EPercentPercent getDefault() => _defaultInstance ??= create()..freeze();
  static EPercentPercent _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EPlusPlus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EPlusPlus', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EPlusPlus._() : super();
  factory EPlusPlus() => create();
  factory EPlusPlus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EPlusPlus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EPlusPlus clone() => EPlusPlus()..mergeFromMessage(this);
  EPlusPlus copyWith(void Function(EPlusPlus) updates) => super.copyWith((message) => updates(message as EPlusPlus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EPlusPlus create() => EPlusPlus._();
  EPlusPlus createEmptyInstance() => create();
  static $pb.PbList<EPlusPlus> createRepeated() => $pb.PbList<EPlusPlus>();
  static EPlusPlus getDefault() => _defaultInstance ??= create()..freeze();
  static EPlusPlus _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

class EMinusMinus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EMinusMinus', createEmptyInstance: create)
    ..a<Par>(1, 'p1', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<Par>(2, 'p2', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  EMinusMinus._() : super();
  factory EMinusMinus() => create();
  factory EMinusMinus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EMinusMinus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EMinusMinus clone() => EMinusMinus()..mergeFromMessage(this);
  EMinusMinus copyWith(void Function(EMinusMinus) updates) => super.copyWith((message) => updates(message as EMinusMinus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EMinusMinus create() => EMinusMinus._();
  EMinusMinus createEmptyInstance() => create();
  static $pb.PbList<EMinusMinus> createRepeated() => $pb.PbList<EMinusMinus>();
  static EMinusMinus getDefault() => _defaultInstance ??= create()..freeze();
  static EMinusMinus _defaultInstance;

  Par get p1 => $_getN(0);
  set p1(Par v) { setField(1, v); }
  $core.bool hasP1() => $_has(0);
  void clearP1() => clearField(1);

  Par get p2 => $_getN(1);
  set p2(Par v) { setField(2, v); }
  $core.bool hasP2() => $_has(1);
  void clearP2() => clearField(2);
}

enum Connective_ConnectiveInstance {
  connAndBody, 
  connOrBody, 
  connNotBody, 
  varRefBody, 
  connBool, 
  connInt, 
  connString, 
  connUri, 
  connByteArray, 
  notSet
}

class Connective extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Connective_ConnectiveInstance> _Connective_ConnectiveInstanceByTag = {
    1 : Connective_ConnectiveInstance.connAndBody,
    2 : Connective_ConnectiveInstance.connOrBody,
    3 : Connective_ConnectiveInstance.connNotBody,
    4 : Connective_ConnectiveInstance.varRefBody,
    5 : Connective_ConnectiveInstance.connBool,
    6 : Connective_ConnectiveInstance.connInt,
    7 : Connective_ConnectiveInstance.connString,
    8 : Connective_ConnectiveInstance.connUri,
    9 : Connective_ConnectiveInstance.connByteArray,
    0 : Connective_ConnectiveInstance.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Connective', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    ..a<ConnectiveBody>(1, 'connAndBody', $pb.PbFieldType.OM, defaultOrMaker: ConnectiveBody.getDefault, subBuilder: ConnectiveBody.create)
    ..a<ConnectiveBody>(2, 'connOrBody', $pb.PbFieldType.OM, defaultOrMaker: ConnectiveBody.getDefault, subBuilder: ConnectiveBody.create)
    ..a<Par>(3, 'connNotBody', $pb.PbFieldType.OM, defaultOrMaker: Par.getDefault, subBuilder: Par.create)
    ..a<VarRef>(4, 'varRefBody', $pb.PbFieldType.OM, defaultOrMaker: VarRef.getDefault, subBuilder: VarRef.create)
    ..aOB(5, 'connBool')
    ..aOB(6, 'connInt')
    ..aOB(7, 'connString')
    ..aOB(8, 'connUri')
    ..aOB(9, 'connByteArray')
    ..hasRequiredFields = false
  ;

  Connective._() : super();
  factory Connective() => create();
  factory Connective.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Connective.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Connective clone() => Connective()..mergeFromMessage(this);
  Connective copyWith(void Function(Connective) updates) => super.copyWith((message) => updates(message as Connective));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Connective create() => Connective._();
  Connective createEmptyInstance() => create();
  static $pb.PbList<Connective> createRepeated() => $pb.PbList<Connective>();
  static Connective getDefault() => _defaultInstance ??= create()..freeze();
  static Connective _defaultInstance;

  Connective_ConnectiveInstance whichConnectiveInstance() => _Connective_ConnectiveInstanceByTag[$_whichOneof(0)];
  void clearConnectiveInstance() => clearField($_whichOneof(0));

  ConnectiveBody get connAndBody => $_getN(0);
  set connAndBody(ConnectiveBody v) { setField(1, v); }
  $core.bool hasConnAndBody() => $_has(0);
  void clearConnAndBody() => clearField(1);

  ConnectiveBody get connOrBody => $_getN(1);
  set connOrBody(ConnectiveBody v) { setField(2, v); }
  $core.bool hasConnOrBody() => $_has(1);
  void clearConnOrBody() => clearField(2);

  Par get connNotBody => $_getN(2);
  set connNotBody(Par v) { setField(3, v); }
  $core.bool hasConnNotBody() => $_has(2);
  void clearConnNotBody() => clearField(3);

  VarRef get varRefBody => $_getN(3);
  set varRefBody(VarRef v) { setField(4, v); }
  $core.bool hasVarRefBody() => $_has(3);
  void clearVarRefBody() => clearField(4);

  $core.bool get connBool => $_get(4, false);
  set connBool($core.bool v) { $_setBool(4, v); }
  $core.bool hasConnBool() => $_has(4);
  void clearConnBool() => clearField(5);

  $core.bool get connInt => $_get(5, false);
  set connInt($core.bool v) { $_setBool(5, v); }
  $core.bool hasConnInt() => $_has(5);
  void clearConnInt() => clearField(6);

  $core.bool get connString => $_get(6, false);
  set connString($core.bool v) { $_setBool(6, v); }
  $core.bool hasConnString() => $_has(6);
  void clearConnString() => clearField(7);

  $core.bool get connUri => $_get(7, false);
  set connUri($core.bool v) { $_setBool(7, v); }
  $core.bool hasConnUri() => $_has(7);
  void clearConnUri() => clearField(8);

  $core.bool get connByteArray => $_get(8, false);
  set connByteArray($core.bool v) { $_setBool(8, v); }
  $core.bool hasConnByteArray() => $_has(8);
  void clearConnByteArray() => clearField(9);
}

class VarRef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VarRef', createEmptyInstance: create)
    ..a<$core.int>(1, 'index', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, 'depth', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false
  ;

  VarRef._() : super();
  factory VarRef() => create();
  factory VarRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VarRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VarRef clone() => VarRef()..mergeFromMessage(this);
  VarRef copyWith(void Function(VarRef) updates) => super.copyWith((message) => updates(message as VarRef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VarRef create() => VarRef._();
  VarRef createEmptyInstance() => create();
  static $pb.PbList<VarRef> createRepeated() => $pb.PbList<VarRef>();
  static VarRef getDefault() => _defaultInstance ??= create()..freeze();
  static VarRef _defaultInstance;

  $core.int get index => $_get(0, 0);
  set index($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasIndex() => $_has(0);
  void clearIndex() => clearField(1);

  $core.int get depth => $_get(1, 0);
  set depth($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasDepth() => $_has(1);
  void clearDepth() => clearField(2);
}

class ConnectiveBody extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConnectiveBody', createEmptyInstance: create)
    ..pc<Par>(1, 'ps', $pb.PbFieldType.PM, subBuilder: Par.create)
    ..hasRequiredFields = false
  ;

  ConnectiveBody._() : super();
  factory ConnectiveBody() => create();
  factory ConnectiveBody.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectiveBody.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ConnectiveBody clone() => ConnectiveBody()..mergeFromMessage(this);
  ConnectiveBody copyWith(void Function(ConnectiveBody) updates) => super.copyWith((message) => updates(message as ConnectiveBody));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectiveBody create() => ConnectiveBody._();
  ConnectiveBody createEmptyInstance() => create();
  static $pb.PbList<ConnectiveBody> createRepeated() => $pb.PbList<ConnectiveBody>();
  static ConnectiveBody getDefault() => _defaultInstance ??= create()..freeze();
  static ConnectiveBody _defaultInstance;

  $core.List<Par> get ps => $_getList(0);
}

class DeployId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeployId', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'sig', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  DeployId._() : super();
  factory DeployId() => create();
  factory DeployId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeployId clone() => DeployId()..mergeFromMessage(this);
  DeployId copyWith(void Function(DeployId) updates) => super.copyWith((message) => updates(message as DeployId));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployId create() => DeployId._();
  DeployId createEmptyInstance() => create();
  static $pb.PbList<DeployId> createRepeated() => $pb.PbList<DeployId>();
  static DeployId getDefault() => _defaultInstance ??= create()..freeze();
  static DeployId _defaultInstance;

  $core.List<$core.int> get sig => $_getN(0);
  set sig($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSig() => $_has(0);
  void clearSig() => clearField(1);
}

class DeployerId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeployerId', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'publicKey', $pb.PbFieldType.OY, protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  DeployerId._() : super();
  factory DeployerId() => create();
  factory DeployerId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployerId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeployerId clone() => DeployerId()..mergeFromMessage(this);
  DeployerId copyWith(void Function(DeployerId) updates) => super.copyWith((message) => updates(message as DeployerId));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployerId create() => DeployerId._();
  DeployerId createEmptyInstance() => create();
  static $pb.PbList<DeployerId> createRepeated() => $pb.PbList<DeployerId>();
  static DeployerId getDefault() => _defaultInstance ??= create()..freeze();
  static DeployerId _defaultInstance;

  $core.List<$core.int> get publicKey => $_getN(0);
  set publicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasPublicKey() => $_has(0);
  void clearPublicKey() => clearField(1);
}

enum GUnforgeable_UnfInstance {
  gPrivateBody, 
  gDeployIdBody, 
  gDeployerIdBody, 
  notSet
}

class GUnforgeable extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GUnforgeable_UnfInstance> _GUnforgeable_UnfInstanceByTag = {
    1 : GUnforgeable_UnfInstance.gPrivateBody,
    2 : GUnforgeable_UnfInstance.gDeployIdBody,
    3 : GUnforgeable_UnfInstance.gDeployerIdBody,
    0 : GUnforgeable_UnfInstance.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GUnforgeable', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..a<GPrivate>(1, 'gPrivateBody', $pb.PbFieldType.OM, defaultOrMaker: GPrivate.getDefault, subBuilder: GPrivate.create)
    ..a<GDeployId>(2, 'gDeployIdBody', $pb.PbFieldType.OM, defaultOrMaker: GDeployId.getDefault, subBuilder: GDeployId.create)
    ..a<GDeployerId>(3, 'gDeployerIdBody', $pb.PbFieldType.OM, defaultOrMaker: GDeployerId.getDefault, subBuilder: GDeployerId.create)
    ..hasRequiredFields = false
  ;

  GUnforgeable._() : super();
  factory GUnforgeable() => create();
  factory GUnforgeable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GUnforgeable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GUnforgeable clone() => GUnforgeable()..mergeFromMessage(this);
  GUnforgeable copyWith(void Function(GUnforgeable) updates) => super.copyWith((message) => updates(message as GUnforgeable));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GUnforgeable create() => GUnforgeable._();
  GUnforgeable createEmptyInstance() => create();
  static $pb.PbList<GUnforgeable> createRepeated() => $pb.PbList<GUnforgeable>();
  static GUnforgeable getDefault() => _defaultInstance ??= create()..freeze();
  static GUnforgeable _defaultInstance;

  GUnforgeable_UnfInstance whichUnfInstance() => _GUnforgeable_UnfInstanceByTag[$_whichOneof(0)];
  void clearUnfInstance() => clearField($_whichOneof(0));

  GPrivate get gPrivateBody => $_getN(0);
  set gPrivateBody(GPrivate v) { setField(1, v); }
  $core.bool hasGPrivateBody() => $_has(0);
  void clearGPrivateBody() => clearField(1);

  GDeployId get gDeployIdBody => $_getN(1);
  set gDeployIdBody(GDeployId v) { setField(2, v); }
  $core.bool hasGDeployIdBody() => $_has(1);
  void clearGDeployIdBody() => clearField(2);

  GDeployerId get gDeployerIdBody => $_getN(2);
  set gDeployerIdBody(GDeployerId v) { setField(3, v); }
  $core.bool hasGDeployerIdBody() => $_has(2);
  void clearGDeployerIdBody() => clearField(3);
}

class GPrivate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GPrivate', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'id', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GPrivate._() : super();
  factory GPrivate() => create();
  factory GPrivate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GPrivate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GPrivate clone() => GPrivate()..mergeFromMessage(this);
  GPrivate copyWith(void Function(GPrivate) updates) => super.copyWith((message) => updates(message as GPrivate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GPrivate create() => GPrivate._();
  GPrivate createEmptyInstance() => create();
  static $pb.PbList<GPrivate> createRepeated() => $pb.PbList<GPrivate>();
  static GPrivate getDefault() => _defaultInstance ??= create()..freeze();
  static GPrivate _defaultInstance;

  $core.List<$core.int> get id => $_getN(0);
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class GDeployId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GDeployId', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'sig', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GDeployId._() : super();
  factory GDeployId() => create();
  factory GDeployId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GDeployId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GDeployId clone() => GDeployId()..mergeFromMessage(this);
  GDeployId copyWith(void Function(GDeployId) updates) => super.copyWith((message) => updates(message as GDeployId));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GDeployId create() => GDeployId._();
  GDeployId createEmptyInstance() => create();
  static $pb.PbList<GDeployId> createRepeated() => $pb.PbList<GDeployId>();
  static GDeployId getDefault() => _defaultInstance ??= create()..freeze();
  static GDeployId _defaultInstance;

  $core.List<$core.int> get sig => $_getN(0);
  set sig($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSig() => $_has(0);
  void clearSig() => clearField(1);
}

class GDeployerId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GDeployerId', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'publicKey', $pb.PbFieldType.OY, protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  GDeployerId._() : super();
  factory GDeployerId() => create();
  factory GDeployerId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GDeployerId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GDeployerId clone() => GDeployerId()..mergeFromMessage(this);
  GDeployerId copyWith(void Function(GDeployerId) updates) => super.copyWith((message) => updates(message as GDeployerId));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GDeployerId create() => GDeployerId._();
  GDeployerId createEmptyInstance() => create();
  static $pb.PbList<GDeployerId> createRepeated() => $pb.PbList<GDeployerId>();
  static GDeployerId getDefault() => _defaultInstance ??= create()..freeze();
  static GDeployerId _defaultInstance;

  $core.List<$core.int> get publicKey => $_getN(0);
  set publicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasPublicKey() => $_has(0);
  void clearPublicKey() => clearField(1);
}

