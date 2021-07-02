type
  BOPAlgoOperation* {.size: sizeof(cint), importcpp: "BOPAlgo_Operation",
                     header: "BOPAlgo_Operation.hxx".} = enum
    BOPAlgoCOMMON, BOPAlgoFUSE, BOPAlgoCUT, BOPAlgoCUT21, BOPAlgoSECTION,
    BOPAlgoUNKNOWN

