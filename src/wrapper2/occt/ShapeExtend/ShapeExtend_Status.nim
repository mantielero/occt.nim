type
  ShapeExtendStatus* {.size: sizeof(cint), importcpp: "ShapeExtend_Status",
                      header: "ShapeExtend_Status.hxx".} = enum
    ShapeExtendOK, ShapeExtendDONE1, ShapeExtendDONE2, ShapeExtendDONE3,
    ShapeExtendDONE4, ShapeExtendDONE5, ShapeExtendDONE6, ShapeExtendDONE7,
    ShapeExtendDONE8, ShapeExtendDONE, ShapeExtendFAIL1, ShapeExtendFAIL2,
    ShapeExtendFAIL3, ShapeExtendFAIL4, ShapeExtendFAIL5, ShapeExtendFAIL6,
    ShapeExtendFAIL7, ShapeExtendFAIL8, ShapeExtendFAIL

