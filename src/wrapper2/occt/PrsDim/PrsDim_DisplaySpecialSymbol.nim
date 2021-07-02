type
  PrsDimDisplaySpecialSymbol* {.size: sizeof(cint),
                               importcpp: "PrsDim_DisplaySpecialSymbol",
                               header: "PrsDim_DisplaySpecialSymbol.hxx".} = enum
    PrsDimDisplaySpecialSymbolNo, PrsDimDisplaySpecialSymbolBefore,
    PrsDimDisplaySpecialSymbolAfter

