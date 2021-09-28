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

discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_NamedShape"
type
  TNamingScope* {.importcpp: "TNaming_Scope", header: "TNaming_Scope.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## WithValid
                                                                                     ## =
                                                                                     ## FALSE


proc constructTNamingScope*(): TNamingScope {.constructor,
    importcpp: "TNaming_Scope(@)", header: "TNaming_Scope.hxx".}
proc constructTNamingScope*(withValid: bool): TNamingScope {.constructor,
    importcpp: "TNaming_Scope(@)", header: "TNaming_Scope.hxx".}
proc constructTNamingScope*(valid: var TDF_LabelMap): TNamingScope {.constructor,
    importcpp: "TNaming_Scope(@)", header: "TNaming_Scope.hxx".}
proc withValid*(this: TNamingScope): bool {.noSideEffect, importcpp: "WithValid",
                                        header: "TNaming_Scope.hxx".}
proc withValid*(this: var TNamingScope; mode: bool) {.importcpp: "WithValid",
    header: "TNaming_Scope.hxx".}
proc clearValid*(this: var TNamingScope) {.importcpp: "ClearValid",
                                       header: "TNaming_Scope.hxx".}
proc valid*(this: var TNamingScope; L: TDF_Label) {.importcpp: "Valid",
    header: "TNaming_Scope.hxx".}
proc validChildren*(this: var TNamingScope; L: TDF_Label; withroot: bool = true) {.
    importcpp: "ValidChildren", header: "TNaming_Scope.hxx".}
proc unvalid*(this: var TNamingScope; L: TDF_Label) {.importcpp: "Unvalid",
    header: "TNaming_Scope.hxx".}
proc unvalidChildren*(this: var TNamingScope; L: TDF_Label; withroot: bool = true) {.
    importcpp: "UnvalidChildren", header: "TNaming_Scope.hxx".}
proc isValid*(this: TNamingScope; L: TDF_Label): bool {.noSideEffect,
    importcpp: "IsValid", header: "TNaming_Scope.hxx".}
proc getValid*(this: TNamingScope): TDF_LabelMap {.noSideEffect,
    importcpp: "GetValid", header: "TNaming_Scope.hxx".}
proc changeValid*(this: var TNamingScope): var TDF_LabelMap {.
    importcpp: "ChangeValid", header: "TNaming_Scope.hxx".}
proc currentShape*(this: TNamingScope; ns: Handle[TNamingNamedShape]): TopoDS_Shape {.
    noSideEffect, importcpp: "CurrentShape", header: "TNaming_Scope.hxx".}

























