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
  IntfTangentZone* {.importcpp: "Intf_TangentZone", header: "Intf_TangentZone.hxx",
                    bycopy.} = object ## ! Returns number of SectionPoint in this TangentZone.


proc numberOfPoints*(this: IntfTangentZone): StandardInteger {.noSideEffect,
    importcpp: "NumberOfPoints", header: "Intf_TangentZone.hxx".}
proc getPoint*(this: IntfTangentZone; index: StandardInteger): IntfSectionPoint {.
    noSideEffect, importcpp: "GetPoint", header: "Intf_TangentZone.hxx".}
proc isEqual*(this: IntfTangentZone; other: IntfTangentZone): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "Intf_TangentZone.hxx".}
proc `==`*(this: IntfTangentZone; other: IntfTangentZone): StandardBoolean {.
    noSideEffect, importcpp: "(# == #)", header: "Intf_TangentZone.hxx".}
proc contains*(this: IntfTangentZone; thePI: IntfSectionPoint): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "Intf_TangentZone.hxx".}
proc paramOnFirst*(this: IntfTangentZone; paraMin: var StandardReal;
                  paraMax: var StandardReal) {.noSideEffect,
    importcpp: "ParamOnFirst", header: "Intf_TangentZone.hxx".}
proc paramOnSecond*(this: IntfTangentZone; paraMin: var StandardReal;
                   paraMax: var StandardReal) {.noSideEffect,
    importcpp: "ParamOnSecond", header: "Intf_TangentZone.hxx".}
proc infoFirst*(this: IntfTangentZone; segMin: var StandardInteger;
               paraMin: var StandardReal; segMax: var StandardInteger;
               paraMax: var StandardReal) {.noSideEffect, importcpp: "InfoFirst",
    header: "Intf_TangentZone.hxx".}
proc infoSecond*(this: IntfTangentZone; segMin: var StandardInteger;
                paraMin: var StandardReal; segMax: var StandardInteger;
                paraMax: var StandardReal) {.noSideEffect, importcpp: "InfoSecond",
    header: "Intf_TangentZone.hxx".}
proc rangeContains*(this: IntfTangentZone; thePI: IntfSectionPoint): StandardBoolean {.
    noSideEffect, importcpp: "RangeContains", header: "Intf_TangentZone.hxx".}
proc hasCommonRange*(this: IntfTangentZone; other: IntfTangentZone): StandardBoolean {.
    noSideEffect, importcpp: "HasCommonRange", header: "Intf_TangentZone.hxx".}
proc constructIntfTangentZone*(): IntfTangentZone {.constructor,
    importcpp: "Intf_TangentZone(@)", header: "Intf_TangentZone.hxx".}
proc append*(this: var IntfTangentZone; pi: IntfSectionPoint) {.importcpp: "Append",
    header: "Intf_TangentZone.hxx".}
proc append*(this: var IntfTangentZone; tzi: IntfTangentZone) {.importcpp: "Append",
    header: "Intf_TangentZone.hxx".}
proc insert*(this: var IntfTangentZone; pi: IntfSectionPoint): StandardBoolean {.
    importcpp: "Insert", header: "Intf_TangentZone.hxx".}
proc polygonInsert*(this: var IntfTangentZone; pi: IntfSectionPoint) {.
    importcpp: "PolygonInsert", header: "Intf_TangentZone.hxx".}
proc insertBefore*(this: var IntfTangentZone; index: StandardInteger;
                  pi: IntfSectionPoint) {.importcpp: "InsertBefore",
                                        header: "Intf_TangentZone.hxx".}
proc insertAfter*(this: var IntfTangentZone; index: StandardInteger;
                 pi: IntfSectionPoint) {.importcpp: "InsertAfter",
                                       header: "Intf_TangentZone.hxx".}
proc dump*(this: IntfTangentZone; indent: StandardInteger) {.noSideEffect,
    importcpp: "Dump", header: "Intf_TangentZone.hxx".}

