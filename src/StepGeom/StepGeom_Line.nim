##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Vector"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Line"
discard "forward decl of StepGeom_Line"
type
  HandleC1C1* = Handle[StepGeomLine]
  StepGeomLine* {.importcpp: "StepGeom_Line", header: "StepGeom_Line.hxx", bycopy.} = object of StepGeomCurve ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## Line


proc constructStepGeomLine*(): StepGeomLine {.constructor,
    importcpp: "StepGeom_Line(@)", header: "StepGeom_Line.hxx".}
proc init*(this: var StepGeomLine; aName: Handle[TCollectionHAsciiString];
          aPnt: Handle[StepGeomCartesianPoint]; aDir: Handle[StepGeomVector]) {.
    importcpp: "Init", header: "StepGeom_Line.hxx".}
proc setPnt*(this: var StepGeomLine; aPnt: Handle[StepGeomCartesianPoint]) {.
    importcpp: "SetPnt", header: "StepGeom_Line.hxx".}
proc pnt*(this: StepGeomLine): Handle[StepGeomCartesianPoint] {.noSideEffect,
    importcpp: "Pnt", header: "StepGeom_Line.hxx".}
proc setDir*(this: var StepGeomLine; aDir: Handle[StepGeomVector]) {.
    importcpp: "SetDir", header: "StepGeom_Line.hxx".}
proc dir*(this: StepGeomLine): Handle[StepGeomVector] {.noSideEffect,
    importcpp: "Dir", header: "StepGeom_Line.hxx".}
type
  StepGeomLinebaseType* = StepGeomCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_Line::get_type_name(@)",
                            header: "StepGeom_Line.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Line::get_type_descriptor(@)",
    header: "StepGeom_Line.hxx".}
proc dynamicType*(this: StepGeomLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Line.hxx".}