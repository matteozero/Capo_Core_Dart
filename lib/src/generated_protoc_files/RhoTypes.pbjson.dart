///
//  Generated code. Do not modify.
//  source: RhoTypes.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Par$json = const {
  '1': 'Par',
  '2': const [
    const {'1': 'sends', '3': 1, '4': 3, '5': 11, '6': '.Send', '10': 'sends'},
    const {'1': 'receives', '3': 2, '4': 3, '5': 11, '6': '.Receive', '10': 'receives'},
    const {'1': 'news', '3': 4, '4': 3, '5': 11, '6': '.New', '10': 'news'},
    const {'1': 'exprs', '3': 5, '4': 3, '5': 11, '6': '.Expr', '10': 'exprs'},
    const {'1': 'matches', '3': 6, '4': 3, '5': 11, '6': '.Match', '10': 'matches'},
    const {'1': 'unforgeables', '3': 7, '4': 3, '5': 11, '6': '.GUnforgeable', '10': 'unforgeables'},
    const {'1': 'bundles', '3': 11, '4': 3, '5': 11, '6': '.Bundle', '10': 'bundles'},
    const {'1': 'connectives', '3': 8, '4': 3, '5': 11, '6': '.Connective', '10': 'connectives'},
    const {'1': 'locallyFree', '3': 9, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
    const {'1': 'connective_used', '3': 10, '4': 1, '5': 8, '10': 'connectiveUsed'},
  ],
};

const TaggedContinuation$json = const {
  '1': 'TaggedContinuation',
  '2': const [
    const {'1': 'par_body', '3': 1, '4': 1, '5': 11, '6': '.ParWithRandom', '9': 0, '10': 'parBody'},
    const {'1': 'scala_body_ref', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'scalaBodyRef'},
  ],
  '8': const [
    const {'1': 'tagged_cont'},
  ],
};

const ParWithRandom$json = const {
  '1': 'ParWithRandom',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'body'},
    const {'1': 'randomState', '3': 2, '4': 1, '5': 12, '8': const {}, '10': 'randomState'},
  ],
};

const PCost$json = const {
  '1': 'PCost',
  '2': const [
    const {'1': 'cost', '3': 1, '4': 1, '5': 4, '10': 'cost'},
  ],
};

const ListParWithRandom$json = const {
  '1': 'ListParWithRandom',
  '2': const [
    const {'1': 'pars', '3': 1, '4': 3, '5': 11, '6': '.Par', '10': 'pars'},
    const {'1': 'randomState', '3': 2, '4': 1, '5': 12, '8': const {}, '10': 'randomState'},
  ],
};

const Var$json = const {
  '1': 'Var',
  '2': const [
    const {'1': 'bound_var', '3': 1, '4': 1, '5': 17, '9': 0, '10': 'boundVar'},
    const {'1': 'free_var', '3': 2, '4': 1, '5': 17, '9': 0, '10': 'freeVar'},
    const {'1': 'wildcard', '3': 3, '4': 1, '5': 11, '6': '.Var.WildcardMsg', '9': 0, '10': 'wildcard'},
  ],
  '3': const [Var_WildcardMsg$json],
  '8': const [
    const {'1': 'var_instance'},
  ],
};

const Var_WildcardMsg$json = const {
  '1': 'WildcardMsg',
};

const Bundle$json = const {
  '1': 'Bundle',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'body'},
    const {'1': 'writeFlag', '3': 2, '4': 1, '5': 8, '10': 'writeFlag'},
    const {'1': 'readFlag', '3': 3, '4': 1, '5': 8, '10': 'readFlag'},
  ],
};

const Send$json = const {
  '1': 'Send',
  '2': const [
    const {'1': 'chan', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'chan'},
    const {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.Par', '10': 'data'},
    const {'1': 'persistent', '3': 3, '4': 1, '5': 8, '10': 'persistent'},
    const {'1': 'locallyFree', '3': 5, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
    const {'1': 'connective_used', '3': 6, '4': 1, '5': 8, '10': 'connectiveUsed'},
  ],
};

const ReceiveBind$json = const {
  '1': 'ReceiveBind',
  '2': const [
    const {'1': 'patterns', '3': 1, '4': 3, '5': 11, '6': '.Par', '10': 'patterns'},
    const {'1': 'source', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'source'},
    const {'1': 'remainder', '3': 3, '4': 1, '5': 11, '6': '.Var', '10': 'remainder'},
    const {'1': 'freeCount', '3': 4, '4': 1, '5': 5, '10': 'freeCount'},
  ],
};

const BindPattern$json = const {
  '1': 'BindPattern',
  '2': const [
    const {'1': 'patterns', '3': 1, '4': 3, '5': 11, '6': '.Par', '10': 'patterns'},
    const {'1': 'remainder', '3': 2, '4': 1, '5': 11, '6': '.Var', '10': 'remainder'},
    const {'1': 'freeCount', '3': 3, '4': 1, '5': 5, '10': 'freeCount'},
  ],
};

const ListBindPatterns$json = const {
  '1': 'ListBindPatterns',
  '2': const [
    const {'1': 'patterns', '3': 1, '4': 3, '5': 11, '6': '.BindPattern', '10': 'patterns'},
  ],
};

const Receive$json = const {
  '1': 'Receive',
  '2': const [
    const {'1': 'binds', '3': 1, '4': 3, '5': 11, '6': '.ReceiveBind', '10': 'binds'},
    const {'1': 'body', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'body'},
    const {'1': 'persistent', '3': 3, '4': 1, '5': 8, '10': 'persistent'},
    const {'1': 'peek', '3': 4, '4': 1, '5': 8, '10': 'peek'},
    const {'1': 'bindCount', '3': 5, '4': 1, '5': 5, '10': 'bindCount'},
    const {'1': 'locallyFree', '3': 6, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
    const {'1': 'connective_used', '3': 7, '4': 1, '5': 8, '10': 'connectiveUsed'},
  ],
};

const New$json = const {
  '1': 'New',
  '2': const [
    const {'1': 'bindCount', '3': 1, '4': 1, '5': 17, '10': 'bindCount'},
    const {'1': 'p', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p'},
    const {'1': 'uri', '3': 3, '4': 3, '5': 9, '10': 'uri'},
    const {'1': 'injections', '3': 4, '4': 3, '5': 11, '6': '.New.InjectionsEntry', '10': 'injections'},
    const {'1': 'locallyFree', '3': 5, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
  ],
  '3': const [New_InjectionsEntry$json],
};

const New_InjectionsEntry$json = const {
  '1': 'InjectionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Par', '10': 'value'},
  ],
  '7': const {'7': true},
};

const MatchCase$json = const {
  '1': 'MatchCase',
  '2': const [
    const {'1': 'pattern', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'pattern'},
    const {'1': 'source', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'source'},
    const {'1': 'freeCount', '3': 3, '4': 1, '5': 5, '10': 'freeCount'},
  ],
};

const Match$json = const {
  '1': 'Match',
  '2': const [
    const {'1': 'target', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'target'},
    const {'1': 'cases', '3': 2, '4': 3, '5': 11, '6': '.MatchCase', '10': 'cases'},
    const {'1': 'locallyFree', '3': 4, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
    const {'1': 'connective_used', '3': 5, '4': 1, '5': 8, '10': 'connectiveUsed'},
  ],
};

const Expr$json = const {
  '1': 'Expr',
  '2': const [
    const {'1': 'g_bool', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'gBool'},
    const {'1': 'g_int', '3': 2, '4': 1, '5': 18, '9': 0, '10': 'gInt'},
    const {'1': 'g_string', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'gString'},
    const {'1': 'g_uri', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'gUri'},
    const {'1': 'g_byte_array', '3': 25, '4': 1, '5': 12, '9': 0, '10': 'gByteArray'},
    const {'1': 'e_not_body', '3': 5, '4': 1, '5': 11, '6': '.ENot', '9': 0, '10': 'eNotBody'},
    const {'1': 'e_neg_body', '3': 6, '4': 1, '5': 11, '6': '.ENeg', '9': 0, '10': 'eNegBody'},
    const {'1': 'e_mult_body', '3': 7, '4': 1, '5': 11, '6': '.EMult', '9': 0, '10': 'eMultBody'},
    const {'1': 'e_div_body', '3': 8, '4': 1, '5': 11, '6': '.EDiv', '9': 0, '10': 'eDivBody'},
    const {'1': 'e_plus_body', '3': 9, '4': 1, '5': 11, '6': '.EPlus', '9': 0, '10': 'ePlusBody'},
    const {'1': 'e_minus_body', '3': 10, '4': 1, '5': 11, '6': '.EMinus', '9': 0, '10': 'eMinusBody'},
    const {'1': 'e_lt_body', '3': 11, '4': 1, '5': 11, '6': '.ELt', '9': 0, '10': 'eLtBody'},
    const {'1': 'e_lte_body', '3': 12, '4': 1, '5': 11, '6': '.ELte', '9': 0, '10': 'eLteBody'},
    const {'1': 'e_gt_body', '3': 13, '4': 1, '5': 11, '6': '.EGt', '9': 0, '10': 'eGtBody'},
    const {'1': 'e_gte_body', '3': 14, '4': 1, '5': 11, '6': '.EGte', '9': 0, '10': 'eGteBody'},
    const {'1': 'e_eq_body', '3': 15, '4': 1, '5': 11, '6': '.EEq', '9': 0, '10': 'eEqBody'},
    const {'1': 'e_neq_body', '3': 16, '4': 1, '5': 11, '6': '.ENeq', '9': 0, '10': 'eNeqBody'},
    const {'1': 'e_and_body', '3': 17, '4': 1, '5': 11, '6': '.EAnd', '9': 0, '10': 'eAndBody'},
    const {'1': 'e_or_body', '3': 18, '4': 1, '5': 11, '6': '.EOr', '9': 0, '10': 'eOrBody'},
    const {'1': 'e_var_body', '3': 19, '4': 1, '5': 11, '6': '.EVar', '9': 0, '10': 'eVarBody'},
    const {'1': 'e_list_body', '3': 20, '4': 1, '5': 11, '6': '.EList', '9': 0, '10': 'eListBody'},
    const {'1': 'e_tuple_body', '3': 21, '4': 1, '5': 11, '6': '.ETuple', '9': 0, '10': 'eTupleBody'},
    const {'1': 'e_set_body', '3': 22, '4': 1, '5': 11, '6': '.ESet', '8': const {}, '9': 0, '10': 'eSetBody'},
    const {'1': 'e_map_body', '3': 23, '4': 1, '5': 11, '6': '.EMap', '8': const {}, '9': 0, '10': 'eMapBody'},
    const {'1': 'e_method_body', '3': 24, '4': 1, '5': 11, '6': '.EMethod', '9': 0, '10': 'eMethodBody'},
    const {'1': 'e_matches_body', '3': 27, '4': 1, '5': 11, '6': '.EMatches', '9': 0, '10': 'eMatchesBody'},
    const {'1': 'e_percent_percent_body', '3': 28, '4': 1, '5': 11, '6': '.EPercentPercent', '9': 0, '10': 'ePercentPercentBody'},
    const {'1': 'e_plus_plus_body', '3': 29, '4': 1, '5': 11, '6': '.EPlusPlus', '9': 0, '10': 'ePlusPlusBody'},
    const {'1': 'e_minus_minus_body', '3': 30, '4': 1, '5': 11, '6': '.EMinusMinus', '9': 0, '10': 'eMinusMinusBody'},
    const {'1': 'e_mod_body', '3': 31, '4': 1, '5': 11, '6': '.EMod', '9': 0, '10': 'eModBody'},
  ],
  '8': const [
    const {'1': 'expr_instance'},
  ],
};

const EList$json = const {
  '1': 'EList',
  '2': const [
    const {'1': 'ps', '3': 1, '4': 3, '5': 11, '6': '.Par', '10': 'ps'},
    const {'1': 'locallyFree', '3': 3, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
    const {'1': 'connective_used', '3': 4, '4': 1, '5': 8, '10': 'connectiveUsed'},
    const {'1': 'remainder', '3': 5, '4': 1, '5': 11, '6': '.Var', '10': 'remainder'},
  ],
};

const ETuple$json = const {
  '1': 'ETuple',
  '2': const [
    const {'1': 'ps', '3': 1, '4': 3, '5': 11, '6': '.Par', '10': 'ps'},
    const {'1': 'locallyFree', '3': 3, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
    const {'1': 'connective_used', '3': 4, '4': 1, '5': 8, '10': 'connectiveUsed'},
  ],
};

const ESet$json = const {
  '1': 'ESet',
  '2': const [
    const {'1': 'ps', '3': 1, '4': 3, '5': 11, '6': '.Par', '10': 'ps'},
    const {'1': 'locallyFree', '3': 3, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
    const {'1': 'connective_used', '3': 4, '4': 1, '5': 8, '10': 'connectiveUsed'},
    const {'1': 'remainder', '3': 5, '4': 1, '5': 11, '6': '.Var', '10': 'remainder'},
  ],
};

const EMap$json = const {
  '1': 'EMap',
  '2': const [
    const {'1': 'kvs', '3': 1, '4': 3, '5': 11, '6': '.KeyValuePair', '10': 'kvs'},
    const {'1': 'locallyFree', '3': 3, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
    const {'1': 'connective_used', '3': 4, '4': 1, '5': 8, '10': 'connectiveUsed'},
    const {'1': 'remainder', '3': 5, '4': 1, '5': 11, '6': '.Var', '10': 'remainder'},
  ],
};

const EMethod$json = const {
  '1': 'EMethod',
  '2': const [
    const {'1': 'methodName', '3': 1, '4': 1, '5': 9, '10': 'methodName'},
    const {'1': 'target', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'target'},
    const {'1': 'arguments', '3': 3, '4': 3, '5': 11, '6': '.Par', '10': 'arguments'},
    const {'1': 'locallyFree', '3': 5, '4': 1, '5': 12, '8': const {}, '10': 'locallyFree'},
    const {'1': 'connective_used', '3': 6, '4': 1, '5': 8, '10': 'connectiveUsed'},
  ],
};

const KeyValuePair$json = const {
  '1': 'KeyValuePair',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'value'},
  ],
};

const EVar$json = const {
  '1': 'EVar',
  '2': const [
    const {'1': 'v', '3': 1, '4': 1, '5': 11, '6': '.Var', '8': const {}, '10': 'v'},
  ],
};

const ENot$json = const {
  '1': 'ENot',
  '2': const [
    const {'1': 'p', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p'},
  ],
};

const ENeg$json = const {
  '1': 'ENeg',
  '2': const [
    const {'1': 'p', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p'},
  ],
};

const EMult$json = const {
  '1': 'EMult',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EDiv$json = const {
  '1': 'EDiv',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EMod$json = const {
  '1': 'EMod',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EPlus$json = const {
  '1': 'EPlus',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EMinus$json = const {
  '1': 'EMinus',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const ELt$json = const {
  '1': 'ELt',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const ELte$json = const {
  '1': 'ELte',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EGt$json = const {
  '1': 'EGt',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EGte$json = const {
  '1': 'EGte',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EEq$json = const {
  '1': 'EEq',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const ENeq$json = const {
  '1': 'ENeq',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EAnd$json = const {
  '1': 'EAnd',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EOr$json = const {
  '1': 'EOr',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EMatches$json = const {
  '1': 'EMatches',
  '2': const [
    const {'1': 'target', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'target'},
    const {'1': 'pattern', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'pattern'},
  ],
};

const EPercentPercent$json = const {
  '1': 'EPercentPercent',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EPlusPlus$json = const {
  '1': 'EPlusPlus',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const EMinusMinus$json = const {
  '1': 'EMinusMinus',
  '2': const [
    const {'1': 'p1', '3': 1, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p1'},
    const {'1': 'p2', '3': 2, '4': 1, '5': 11, '6': '.Par', '8': const {}, '10': 'p2'},
  ],
};

const Connective$json = const {
  '1': 'Connective',
  '2': const [
    const {'1': 'conn_and_body', '3': 1, '4': 1, '5': 11, '6': '.ConnectiveBody', '9': 0, '10': 'connAndBody'},
    const {'1': 'conn_or_body', '3': 2, '4': 1, '5': 11, '6': '.ConnectiveBody', '9': 0, '10': 'connOrBody'},
    const {'1': 'conn_not_body', '3': 3, '4': 1, '5': 11, '6': '.Par', '9': 0, '10': 'connNotBody'},
    const {'1': 'var_ref_body', '3': 4, '4': 1, '5': 11, '6': '.VarRef', '9': 0, '10': 'varRefBody'},
    const {'1': 'conn_bool', '3': 5, '4': 1, '5': 8, '9': 0, '10': 'connBool'},
    const {'1': 'conn_int', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'connInt'},
    const {'1': 'conn_string', '3': 7, '4': 1, '5': 8, '9': 0, '10': 'connString'},
    const {'1': 'conn_uri', '3': 8, '4': 1, '5': 8, '9': 0, '10': 'connUri'},
    const {'1': 'conn_byte_array', '3': 9, '4': 1, '5': 8, '9': 0, '10': 'connByteArray'},
  ],
  '8': const [
    const {'1': 'connective_instance'},
  ],
};

const VarRef$json = const {
  '1': 'VarRef',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 17, '10': 'index'},
    const {'1': 'depth', '3': 2, '4': 1, '5': 17, '10': 'depth'},
  ],
};

const ConnectiveBody$json = const {
  '1': 'ConnectiveBody',
  '2': const [
    const {'1': 'ps', '3': 1, '4': 3, '5': 11, '6': '.Par', '10': 'ps'},
  ],
};

const DeployId$json = const {
  '1': 'DeployId',
  '2': const [
    const {'1': 'sig', '3': 1, '4': 1, '5': 12, '10': 'sig'},
  ],
};

const DeployerId$json = const {
  '1': 'DeployerId',
  '2': const [
    const {'1': 'publicKey', '3': 1, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

const GUnforgeable$json = const {
  '1': 'GUnforgeable',
  '2': const [
    const {'1': 'g_private_body', '3': 1, '4': 1, '5': 11, '6': '.GPrivate', '9': 0, '10': 'gPrivateBody'},
    const {'1': 'g_deploy_id_body', '3': 2, '4': 1, '5': 11, '6': '.GDeployId', '9': 0, '10': 'gDeployIdBody'},
    const {'1': 'g_deployer_id_body', '3': 3, '4': 1, '5': 11, '6': '.GDeployerId', '9': 0, '10': 'gDeployerIdBody'},
  ],
  '8': const [
    const {'1': 'unf_instance'},
  ],
};

const GPrivate$json = const {
  '1': 'GPrivate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
  ],
};

const GDeployId$json = const {
  '1': 'GDeployId',
  '2': const [
    const {'1': 'sig', '3': 1, '4': 1, '5': 12, '10': 'sig'},
  ],
};

const GDeployerId$json = const {
  '1': 'GDeployerId',
  '2': const [
    const {'1': 'publicKey', '3': 1, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

