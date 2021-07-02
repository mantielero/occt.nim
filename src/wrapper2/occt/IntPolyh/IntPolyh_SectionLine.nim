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

discard "forward decl of IntPolyh_StartPoint"
type
  IntPolyhSectionLine* {.importcpp: "IntPolyh_SectionLine",
                        header: "IntPolyh_SectionLine.hxx", bycopy.} = object


proc constructIntPolyhSectionLine*(): IntPolyhSectionLine {.constructor,
    importcpp: "IntPolyh_SectionLine(@)", header: "IntPolyh_SectionLine.hxx".}
proc constructIntPolyhSectionLine*(nn: StandardInteger): IntPolyhSectionLine {.
    constructor, importcpp: "IntPolyh_SectionLine(@)",
    header: "IntPolyh_SectionLine.hxx".}
proc init*(this: var IntPolyhSectionLine; nn: StandardInteger) {.importcpp: "Init",
    header: "IntPolyh_SectionLine.hxx".}
proc value*(this: IntPolyhSectionLine; nn: StandardInteger): IntPolyhStartPoint {.
    noSideEffect, importcpp: "Value", header: "IntPolyh_SectionLine.hxx".}
proc `[]`*(this: IntPolyhSectionLine; nn: StandardInteger): IntPolyhStartPoint {.
    noSideEffect, importcpp: "#[@]", header: "IntPolyh_SectionLine.hxx".}
proc changeValue*(this: var IntPolyhSectionLine; nn: StandardInteger): var IntPolyhStartPoint {.
    importcpp: "ChangeValue", header: "IntPolyh_SectionLine.hxx".}
proc `[]`*(this: var IntPolyhSectionLine; nn: StandardInteger): var IntPolyhStartPoint {.
    importcpp: "#[@]", header: "IntPolyh_SectionLine.hxx".}
proc copy*(this: var IntPolyhSectionLine; other: IntPolyhSectionLine): var IntPolyhSectionLine {.
    importcpp: "Copy", header: "IntPolyh_SectionLine.hxx".}
proc getN*(this: IntPolyhSectionLine): StandardInteger {.noSideEffect,
    importcpp: "GetN", header: "IntPolyh_SectionLine.hxx".}
proc nbStartPoints*(this: IntPolyhSectionLine): StandardInteger {.noSideEffect,
    importcpp: "NbStartPoints", header: "IntPolyh_SectionLine.hxx".}
proc incrementNbStartPoints*(this: var IntPolyhSectionLine) {.
    importcpp: "IncrementNbStartPoints", header: "IntPolyh_SectionLine.hxx".}
proc destroy*(this: var IntPolyhSectionLine) {.importcpp: "Destroy",
    header: "IntPolyh_SectionLine.hxx".}
proc destroyIntPolyhSectionLine*(this: var IntPolyhSectionLine) {.
    importcpp: "#.~IntPolyh_SectionLine()", header: "IntPolyh_SectionLine.hxx".}
proc dump*(this: IntPolyhSectionLine) {.noSideEffect, importcpp: "Dump",
                                     header: "IntPolyh_SectionLine.hxx".}
proc prepend*(this: var IntPolyhSectionLine; sp: IntPolyhStartPoint) {.
    importcpp: "Prepend", header: "IntPolyh_SectionLine.hxx".}

