##  Created on: 1999-11-03
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../TDF/TDF_LabelMap

discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_NamedShape"
type
  TNaming_Scope* {.importcpp: "TNaming_Scope", header: "TNaming_Scope.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## WithValid
                                                                                      ## =
                                                                                      ## FALSE


proc constructTNaming_Scope*(): TNaming_Scope {.constructor,
    importcpp: "TNaming_Scope(@)", header: "TNaming_Scope.hxx".}
proc constructTNaming_Scope*(WithValid: Standard_Boolean): TNaming_Scope {.
    constructor, importcpp: "TNaming_Scope(@)", header: "TNaming_Scope.hxx".}
proc constructTNaming_Scope*(valid: var TDF_LabelMap): TNaming_Scope {.constructor,
    importcpp: "TNaming_Scope(@)", header: "TNaming_Scope.hxx".}
proc WithValid*(this: TNaming_Scope): Standard_Boolean {.noSideEffect,
    importcpp: "WithValid", header: "TNaming_Scope.hxx".}
proc WithValid*(this: var TNaming_Scope; mode: Standard_Boolean) {.
    importcpp: "WithValid", header: "TNaming_Scope.hxx".}
proc ClearValid*(this: var TNaming_Scope) {.importcpp: "ClearValid",
                                        header: "TNaming_Scope.hxx".}
proc Valid*(this: var TNaming_Scope; L: TDF_Label) {.importcpp: "Valid",
    header: "TNaming_Scope.hxx".}
proc ValidChildren*(this: var TNaming_Scope; L: TDF_Label;
                   withroot: Standard_Boolean = Standard_True) {.
    importcpp: "ValidChildren", header: "TNaming_Scope.hxx".}
proc Unvalid*(this: var TNaming_Scope; L: TDF_Label) {.importcpp: "Unvalid",
    header: "TNaming_Scope.hxx".}
proc UnvalidChildren*(this: var TNaming_Scope; L: TDF_Label;
                     withroot: Standard_Boolean = Standard_True) {.
    importcpp: "UnvalidChildren", header: "TNaming_Scope.hxx".}
proc IsValid*(this: TNaming_Scope; L: TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "TNaming_Scope.hxx".}
proc GetValid*(this: TNaming_Scope): TDF_LabelMap {.noSideEffect,
    importcpp: "GetValid", header: "TNaming_Scope.hxx".}
proc ChangeValid*(this: var TNaming_Scope): var TDF_LabelMap {.
    importcpp: "ChangeValid", header: "TNaming_Scope.hxx".}
proc CurrentShape*(this: TNaming_Scope; NS: handle[TNaming_NamedShape]): TopoDS_Shape {.
    noSideEffect, importcpp: "CurrentShape", header: "TNaming_Scope.hxx".}