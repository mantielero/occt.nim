##  Created on: 1991-06-18
##  Created by: Didier PIFFAULT
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_Handle, Intf_SeqOfSectionPoint,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Intf_SectionPoint"
type
  Intf_SectionLine* {.importcpp: "Intf_SectionLine",
                     header: "Intf_SectionLine.hxx", bycopy.} = object ## ! Returns number of points in this SectionLine.


proc NumberOfPoints*(this: Intf_SectionLine): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfPoints", header: "Intf_SectionLine.hxx".}
proc GetPoint*(this: Intf_SectionLine; Index: Standard_Integer): Intf_SectionPoint {.
    noSideEffect, importcpp: "GetPoint", header: "Intf_SectionLine.hxx".}
proc IsClosed*(this: Intf_SectionLine): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Intf_SectionLine.hxx".}
proc Contains*(this: Intf_SectionLine; ThePI: Intf_SectionPoint): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Intf_SectionLine.hxx".}
proc IsEnd*(this: Intf_SectionLine; ThePI: Intf_SectionPoint): Standard_Integer {.
    noSideEffect, importcpp: "IsEnd", header: "Intf_SectionLine.hxx".}
proc IsEqual*(this: Intf_SectionLine; Other: Intf_SectionLine): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Intf_SectionLine.hxx".}
proc `==`*(this: Intf_SectionLine; Other: Intf_SectionLine): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "Intf_SectionLine.hxx".}
proc constructIntf_SectionLine*(): Intf_SectionLine {.constructor,
    importcpp: "Intf_SectionLine(@)", header: "Intf_SectionLine.hxx".}
proc constructIntf_SectionLine*(Other: Intf_SectionLine): Intf_SectionLine {.
    constructor, importcpp: "Intf_SectionLine(@)", header: "Intf_SectionLine.hxx".}
proc Append*(this: var Intf_SectionLine; Pi: Intf_SectionPoint) {.importcpp: "Append",
    header: "Intf_SectionLine.hxx".}
proc Append*(this: var Intf_SectionLine; LS: var Intf_SectionLine) {.
    importcpp: "Append", header: "Intf_SectionLine.hxx".}
proc Prepend*(this: var Intf_SectionLine; Pi: Intf_SectionPoint) {.
    importcpp: "Prepend", header: "Intf_SectionLine.hxx".}
proc Prepend*(this: var Intf_SectionLine; LS: var Intf_SectionLine) {.
    importcpp: "Prepend", header: "Intf_SectionLine.hxx".}
proc Reverse*(this: var Intf_SectionLine) {.importcpp: "Reverse",
                                        header: "Intf_SectionLine.hxx".}
proc Close*(this: var Intf_SectionLine) {.importcpp: "Close",
                                      header: "Intf_SectionLine.hxx".}
proc Dump*(this: Intf_SectionLine; Indent: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "Intf_SectionLine.hxx".}