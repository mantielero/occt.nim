type
  GCPntsDeflectionType* {.size: sizeof(cint), importcpp: "GCPnts_DeflectionType",
                         header: "GCPnts_DeflectionType.hxx".} = enum
    GCPntsLinear, GCPntsCircular, GCPntsCurved, GCPntsDefComposite

