

discard "forward decl of Standard_Type"
discard "forward decl of handle"

type
  StandardTransient* {.importcpp: "Standard_Transient",
                      header: "Standard_Transient.hxx", bycopy.} = object of RootObj #of RootObj # of RootObj #of RootObj of RootObj of RootObj of RootObj of RootObj of RootObj of RootObj

#[
proc `new`*(this: var StandardTransient; theSize: csize_t): pointer {.
    importcpp: "Standard_Transient::operator new",
    header: "Standard_Transient.hxx".}
proc `delete`*(this: var StandardTransient; theAddress: pointer) {.
    importcpp: "Standard_Transient::operator delete",
    header: "Standard_Transient.hxx".}
proc `new[]`*(this: var StandardTransient; theSize: csize_t): pointer {.
    importcpp: "Standard_Transient::operator new[]",
    header: "Standard_Transient.hxx".}
proc `delete[]`*(this: var StandardTransient; theAddress: pointer) {.
    importcpp: "Standard_Transient::operator delete[]",
    header: "Standard_Transient.hxx".}
proc `new`*(this: var StandardTransient; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Standard_Transient::operator new",
    header: "Standard_Transient.hxx".}
proc `delete`*(this: var StandardTransient; a2: pointer; a3: pointer) {.
    importcpp: "Standard_Transient::operator delete",
    header: "Standard_Transient.hxx".}
proc constructStandardTransient*(): StandardTransient {.constructor,
    importcpp: "Standard_Transient(@)", header: "Standard_Transient.hxx".}
proc constructStandardTransient*(a1: StandardTransient): StandardTransient {.
    constructor, importcpp: "Standard_Transient(@)",
    header: "Standard_Transient.hxx".}
proc destroyStandardTransient*(this: var StandardTransient) {.
    importcpp: "#.~Standard_Transient()", header: "Standard_Transient.hxx".}
proc delete*(this: StandardTransient) {.noSideEffect, importcpp: "Delete",
                                     header: "Standard_Transient.hxx".}
]#
type
  StandardTransientbaseType* = void
#[
proc getTypeName*(): cstring {.importcpp: "Standard_Transient::get_type_name(@)",
                            header: "Standard_Transient.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_Transient::get_type_descriptor(@)",
    header: "Standard_Transient.hxx".}
proc dynamicType*(this: StandardTransient): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_Transient.hxx".}
proc isInstance*(this: StandardTransient; theType: Handle[StandardType]): StandardBoolean {.
    noSideEffect, importcpp: "IsInstance", header: "Standard_Transient.hxx".}
proc isInstance*(this: StandardTransient; theTypeName: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "IsInstance", header: "Standard_Transient.hxx".}
proc isKind*(this: StandardTransient; theType: Handle[StandardType]): StandardBoolean {.
    noSideEffect, importcpp: "IsKind", header: "Standard_Transient.hxx".}
proc isKind*(this: StandardTransient; theTypeName: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "IsKind", header: "Standard_Transient.hxx".}
proc this*(this: StandardTransient): ptr StandardTransient {.noSideEffect,
    importcpp: "This", header: "Standard_Transient.hxx".}
proc getRefCount*(this: StandardTransient): int {.noSideEffect,
    importcpp: "GetRefCount", header: "Standard_Transient.hxx".}
proc incrementRefCounter*(this: StandardTransient) {.noSideEffect,
    importcpp: "IncrementRefCounter", header: "Standard_Transient.hxx".}
proc decrementRefCounter*(this: StandardTransient): int {.noSideEffect,
    importcpp: "DecrementRefCounter", header: "Standard_Transient.hxx".}

proc hashCode*(theTransientObject: ptr StandardTransient; theUpperBound: int): int {.
    importcpp: "HashCode(@)", header: "Standard_Transient.hxx".}
]#
type
  HandleStandardTransient* = Handle[StandardTransient]





