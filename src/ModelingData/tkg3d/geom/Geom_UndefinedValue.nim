import geom_types


type
  Geom_UndefinedValue* {.header: "Geom_UndefinedValue.hxx", importcpp: "Geom_UndefinedValue", byref.} = object #of class Standard_DomainError

  Handle_Geom_UndefinedValue* {.header: "Geom_UndefinedValue.hxx", importcpp: "Handle_Geom_UndefinedValue".} = handle[Geom_UndefinedValue]
  Base_type* {.header: "Geom_UndefinedValue.hxx", importcpp: "Geom_UndefinedValue::base_type".} = Standard_DomainError


{.push header: "Geom_UndefinedValue.hxx".}

proc constructGeom_UndefinedValue*(): Geom_UndefinedValue {.constructor,importcpp: "Geom_UndefinedValue::Geom_UndefinedValue".}

proc constructGeom_UndefinedValue*(theMessage: Standard_CString): Geom_UndefinedValue {.constructor,importcpp: "Geom_UndefinedValue::Geom_UndefinedValue(@)".}

proc throw*(this: Geom_UndefinedValue)  {.importcpp: "Throw".}

proc `raise`*(this: var Geom_UndefinedValue, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc `raise`*(this: var Geom_UndefinedValue, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc newInstance*(this: var Geom_UndefinedValue, theMessage: Standard_CString): handle[Geom_UndefinedValue]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Geom_UndefinedValue): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_UndefinedValue): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_UndefinedValue): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_UndefinedValue.hxx"
