type
  BRepFillTypeOfContact* {.size: sizeof(cint), importcpp: "BRepFill_TypeOfContact",
                          header: "BRepFill_TypeOfContact.hxx".} = enum
    BRepFillNoContact, BRepFillContact, BRepFillContactOnBorder

