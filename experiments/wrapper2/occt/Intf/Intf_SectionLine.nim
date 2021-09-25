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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Intf_SectionPoint"
type
  IntfSectionLine* {.importcpp: "Intf_SectionLine", header: "Intf_SectionLine.hxx",
                    bycopy.} = object ## ! Returns number of points in this SectionLine.


proc numberOfPoints*(this: IntfSectionLine): int {.noSideEffect,
    importcpp: "NumberOfPoints", header: "Intf_SectionLine.hxx".}
proc getPoint*(this: IntfSectionLine; index: int): IntfSectionPoint {.noSideEffect,
    importcpp: "GetPoint", header: "Intf_SectionLine.hxx".}
proc isClosed*(this: IntfSectionLine): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Intf_SectionLine.hxx".}
proc contains*(this: IntfSectionLine; thePI: IntfSectionPoint): bool {.noSideEffect,
    importcpp: "Contains", header: "Intf_SectionLine.hxx".}
proc isEnd*(this: IntfSectionLine; thePI: IntfSectionPoint): int {.noSideEffect,
    importcpp: "IsEnd", header: "Intf_SectionLine.hxx".}
proc isEqual*(this: IntfSectionLine; other: IntfSectionLine): bool {.noSideEffect,
    importcpp: "IsEqual", header: "Intf_SectionLine.hxx".}
proc `==`*(this: IntfSectionLine; other: IntfSectionLine): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Intf_SectionLine.hxx".}
proc constructIntfSectionLine*(): IntfSectionLine {.constructor,
    importcpp: "Intf_SectionLine(@)", header: "Intf_SectionLine.hxx".}
proc constructIntfSectionLine*(other: IntfSectionLine): IntfSectionLine {.
    constructor, importcpp: "Intf_SectionLine(@)", header: "Intf_SectionLine.hxx".}
proc append*(this: var IntfSectionLine; pi: IntfSectionPoint) {.importcpp: "Append",
    header: "Intf_SectionLine.hxx".}
proc append*(this: var IntfSectionLine; ls: var IntfSectionLine) {.importcpp: "Append",
    header: "Intf_SectionLine.hxx".}
proc prepend*(this: var IntfSectionLine; pi: IntfSectionPoint) {.importcpp: "Prepend",
    header: "Intf_SectionLine.hxx".}
proc prepend*(this: var IntfSectionLine; ls: var IntfSectionLine) {.
    importcpp: "Prepend", header: "Intf_SectionLine.hxx".}
proc reverse*(this: var IntfSectionLine) {.importcpp: "Reverse",
                                       header: "Intf_SectionLine.hxx".}
proc close*(this: var IntfSectionLine) {.importcpp: "Close",
                                     header: "Intf_SectionLine.hxx".}
proc dump*(this: IntfSectionLine; indent: int) {.noSideEffect, importcpp: "Dump",
    header: "Intf_SectionLine.hxx".}
