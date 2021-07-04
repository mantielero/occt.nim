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
  ../Standard/Standard_Handle, Intf_SeqOfSectionPoint, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Intf_SectionPoint"
type
  Intf_TangentZone* {.importcpp: "Intf_TangentZone",
                     header: "Intf_TangentZone.hxx", bycopy.} = object ## ! Returns number of SectionPoint in this TangentZone.


proc NumberOfPoints*(this: Intf_TangentZone): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfPoints", header: "Intf_TangentZone.hxx".}
proc GetPoint*(this: Intf_TangentZone; Index: Standard_Integer): Intf_SectionPoint {.
    noSideEffect, importcpp: "GetPoint", header: "Intf_TangentZone.hxx".}
proc IsEqual*(this: Intf_TangentZone; Other: Intf_TangentZone): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Intf_TangentZone.hxx".}
proc `==`*(this: Intf_TangentZone; Other: Intf_TangentZone): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "Intf_TangentZone.hxx".}
proc Contains*(this: Intf_TangentZone; ThePI: Intf_SectionPoint): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Intf_TangentZone.hxx".}
proc ParamOnFirst*(this: Intf_TangentZone; paraMin: var Standard_Real;
                  paraMax: var Standard_Real) {.noSideEffect,
    importcpp: "ParamOnFirst", header: "Intf_TangentZone.hxx".}
proc ParamOnSecond*(this: Intf_TangentZone; paraMin: var Standard_Real;
                   paraMax: var Standard_Real) {.noSideEffect,
    importcpp: "ParamOnSecond", header: "Intf_TangentZone.hxx".}
proc InfoFirst*(this: Intf_TangentZone; segMin: var Standard_Integer;
               paraMin: var Standard_Real; segMax: var Standard_Integer;
               paraMax: var Standard_Real) {.noSideEffect, importcpp: "InfoFirst",
    header: "Intf_TangentZone.hxx".}
proc InfoSecond*(this: Intf_TangentZone; segMin: var Standard_Integer;
                paraMin: var Standard_Real; segMax: var Standard_Integer;
                paraMax: var Standard_Real) {.noSideEffect, importcpp: "InfoSecond",
    header: "Intf_TangentZone.hxx".}
proc RangeContains*(this: Intf_TangentZone; ThePI: Intf_SectionPoint): Standard_Boolean {.
    noSideEffect, importcpp: "RangeContains", header: "Intf_TangentZone.hxx".}
proc HasCommonRange*(this: Intf_TangentZone; Other: Intf_TangentZone): Standard_Boolean {.
    noSideEffect, importcpp: "HasCommonRange", header: "Intf_TangentZone.hxx".}
proc constructIntf_TangentZone*(): Intf_TangentZone {.constructor,
    importcpp: "Intf_TangentZone(@)", header: "Intf_TangentZone.hxx".}
proc Append*(this: var Intf_TangentZone; Pi: Intf_SectionPoint) {.importcpp: "Append",
    header: "Intf_TangentZone.hxx".}
proc Append*(this: var Intf_TangentZone; Tzi: Intf_TangentZone) {.importcpp: "Append",
    header: "Intf_TangentZone.hxx".}
proc Insert*(this: var Intf_TangentZone; Pi: Intf_SectionPoint): Standard_Boolean {.
    importcpp: "Insert", header: "Intf_TangentZone.hxx".}
proc PolygonInsert*(this: var Intf_TangentZone; Pi: Intf_SectionPoint) {.
    importcpp: "PolygonInsert", header: "Intf_TangentZone.hxx".}
proc InsertBefore*(this: var Intf_TangentZone; Index: Standard_Integer;
                  Pi: Intf_SectionPoint) {.importcpp: "InsertBefore",
    header: "Intf_TangentZone.hxx".}
proc InsertAfter*(this: var Intf_TangentZone; Index: Standard_Integer;
                 Pi: Intf_SectionPoint) {.importcpp: "InsertAfter",
                                        header: "Intf_TangentZone.hxx".}
proc Dump*(this: Intf_TangentZone; Indent: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "Intf_TangentZone.hxx".}