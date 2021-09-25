##  Created on: 2008-01-21
##  Created by: Galina KULIKOVA
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_OutOfMemory"
discard "forward decl of Interface_FileParameter"
discard "forward decl of Interface_ParamList"
discard "forward decl of Interface_ParamList"
type
  HandleInterfaceParamList* = Handle[InterfaceParamList]
  InterfaceParamList* {.importcpp: "Interface_ParamList",
                       header: "Interface_ParamList.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## vector
                                                                                          ## with
                                                                                          ## size
                                                                                          ## of
                                                                                          ## memmory
                                                                                          ## blok
                                                                                          ## equal
                                                                                          ## to
                                                                                          ## theIncrement


proc constructInterfaceParamList*(theIncrement: int = 256): InterfaceParamList {.
    constructor, importcpp: "Interface_ParamList(@)",
    header: "Interface_ParamList.hxx".}
proc length*(this: InterfaceParamList): int {.noSideEffect, importcpp: "Length",
    header: "Interface_ParamList.hxx".}
proc lower*(this: InterfaceParamList): int {.noSideEffect, importcpp: "Lower",
    header: "Interface_ParamList.hxx".}
proc upper*(this: InterfaceParamList): int {.noSideEffect, importcpp: "Upper",
    header: "Interface_ParamList.hxx".}
proc setValue*(this: var InterfaceParamList; index: int; value: InterfaceFileParameter) {.
    importcpp: "SetValue", header: "Interface_ParamList.hxx".}
proc value*(this: InterfaceParamList; index: int): InterfaceFileParameter {.
    noSideEffect, importcpp: "Value", header: "Interface_ParamList.hxx".}
proc `()`*(this: InterfaceParamList; index: int): InterfaceFileParameter {.
    noSideEffect, importcpp: "#(@)", header: "Interface_ParamList.hxx".}
proc changeValue*(this: var InterfaceParamList; index: int): var InterfaceFileParameter {.
    importcpp: "ChangeValue", header: "Interface_ParamList.hxx".}
proc `()`*(this: var InterfaceParamList; index: int): var InterfaceFileParameter {.
    importcpp: "#(@)", header: "Interface_ParamList.hxx".}
proc clear*(this: var InterfaceParamList) {.importcpp: "Clear",
                                        header: "Interface_ParamList.hxx".}
type
  InterfaceParamListbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_ParamList::get_type_name(@)",
                            header: "Interface_ParamList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_ParamList::get_type_descriptor(@)",
    header: "Interface_ParamList.hxx".}
proc dynamicType*(this: InterfaceParamList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_ParamList.hxx".}
