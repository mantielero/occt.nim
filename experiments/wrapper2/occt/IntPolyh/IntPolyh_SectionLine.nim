##  Created on: 1999-04-06
##  Created by: Fabrice SERVANT
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
  ../Standard/Standard_Handle, IntPolyh_SeqOfStartPoints,
  ../Standard/Standard_Integer

discard "forward decl of IntPolyh_StartPoint"
type
  IntPolyh_SectionLine* {.importcpp: "IntPolyh_SectionLine",
                         header: "IntPolyh_SectionLine.hxx", bycopy.} = object


proc constructIntPolyh_SectionLine*(): IntPolyh_SectionLine {.constructor,
    importcpp: "IntPolyh_SectionLine(@)", header: "IntPolyh_SectionLine.hxx".}
proc constructIntPolyh_SectionLine*(nn: Standard_Integer): IntPolyh_SectionLine {.
    constructor, importcpp: "IntPolyh_SectionLine(@)",
    header: "IntPolyh_SectionLine.hxx".}
proc Init*(this: var IntPolyh_SectionLine; nn: Standard_Integer) {.importcpp: "Init",
    header: "IntPolyh_SectionLine.hxx".}
proc Value*(this: IntPolyh_SectionLine; nn: Standard_Integer): IntPolyh_StartPoint {.
    noSideEffect, importcpp: "Value", header: "IntPolyh_SectionLine.hxx".}
proc `[]`*(this: IntPolyh_SectionLine; nn: Standard_Integer): IntPolyh_StartPoint {.
    noSideEffect, importcpp: "#[@]", header: "IntPolyh_SectionLine.hxx".}
proc ChangeValue*(this: var IntPolyh_SectionLine; nn: Standard_Integer): var IntPolyh_StartPoint {.
    importcpp: "ChangeValue", header: "IntPolyh_SectionLine.hxx".}
proc `[]`*(this: var IntPolyh_SectionLine; nn: Standard_Integer): var IntPolyh_StartPoint {.
    importcpp: "#[@]", header: "IntPolyh_SectionLine.hxx".}
proc Copy*(this: var IntPolyh_SectionLine; Other: IntPolyh_SectionLine): var IntPolyh_SectionLine {.
    importcpp: "Copy", header: "IntPolyh_SectionLine.hxx".}
proc GetN*(this: IntPolyh_SectionLine): Standard_Integer {.noSideEffect,
    importcpp: "GetN", header: "IntPolyh_SectionLine.hxx".}
proc NbStartPoints*(this: IntPolyh_SectionLine): Standard_Integer {.noSideEffect,
    importcpp: "NbStartPoints", header: "IntPolyh_SectionLine.hxx".}
proc IncrementNbStartPoints*(this: var IntPolyh_SectionLine) {.
    importcpp: "IncrementNbStartPoints", header: "IntPolyh_SectionLine.hxx".}
proc Destroy*(this: var IntPolyh_SectionLine) {.importcpp: "Destroy",
    header: "IntPolyh_SectionLine.hxx".}
proc destroyIntPolyh_SectionLine*(this: var IntPolyh_SectionLine) {.
    importcpp: "#.~IntPolyh_SectionLine()", header: "IntPolyh_SectionLine.hxx".}
proc Dump*(this: IntPolyh_SectionLine) {.noSideEffect, importcpp: "Dump",
                                      header: "IntPolyh_SectionLine.hxx".}
proc Prepend*(this: var IntPolyh_SectionLine; SP: IntPolyh_StartPoint) {.
    importcpp: "Prepend", header: "IntPolyh_SectionLine.hxx".}