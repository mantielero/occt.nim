import geom_types


type
  Geom_UndefinedDerivative* {.header: "Geom_UndefinedDerivative.hxx", importcpp: "Geom_UndefinedDerivative", byref.} = object #of class Standard_DomainError

  Handle_Geom_UndefinedDerivative* {.header: "Geom_UndefinedDerivative.hxx", importcpp: "Handle_Geom_UndefinedDerivative".} = handle[Geom_UndefinedDerivative]
  Base_type* {.header: "Geom_UndefinedDerivative.hxx", importcpp: "Geom_UndefinedDerivative::base_type".} = Standard_DomainError


{.push header: "Geom_UndefinedDerivative.hxx".}

proc constructGeom_UndefinedDerivative*(): Geom_UndefinedDerivative {.constructor,importcpp: "Geom_UndefinedDerivative::Geom_UndefinedDerivative".}

proc constructGeom_UndefinedDerivative*(theMessage: Standard_CString): Geom_UndefinedDerivative {.constructor,importcpp: "Geom_UndefinedDerivative::Geom_UndefinedDerivative(@)".}

proc throw*(this: Geom_UndefinedDerivative)  {.importcpp: "Throw".}

proc `raise`*(this: var Geom_UndefinedDerivative, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc `raise`*(this: var Geom_UndefinedDerivative, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc newInstance*(this: var Geom_UndefinedDerivative, theMessage: Standard_CString): handle[Geom_UndefinedDerivative]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Geom_UndefinedDerivative): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_UndefinedDerivative): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_UndefinedDerivative): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_UndefinedDerivative.hxx"
