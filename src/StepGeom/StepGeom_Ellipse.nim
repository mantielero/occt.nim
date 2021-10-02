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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepGeom_Ellipse"
discard "forward decl of StepGeom_Ellipse"
type
  HandleC1C1* = Handle[StepGeomEllipse]
  StepGeomEllipse* {.importcpp: "StepGeom_Ellipse", header: "StepGeom_Ellipse.hxx",
                    bycopy.} = object of StepGeomConic ## ! Returns a Ellipse


proc constructStepGeomEllipse*(): StepGeomEllipse {.constructor,
    importcpp: "StepGeom_Ellipse(@)", header: "StepGeom_Ellipse.hxx".}
proc init*(this: var StepGeomEllipse; aName: Handle[TCollectionHAsciiString];
          aPosition: StepGeomAxis2Placement; aSemiAxis1: StandardReal;
          aSemiAxis2: StandardReal) {.importcpp: "Init",
                                    header: "StepGeom_Ellipse.hxx".}
proc setSemiAxis1*(this: var StepGeomEllipse; aSemiAxis1: StandardReal) {.
    importcpp: "SetSemiAxis1", header: "StepGeom_Ellipse.hxx".}
proc semiAxis1*(this: StepGeomEllipse): StandardReal {.noSideEffect,
    importcpp: "SemiAxis1", header: "StepGeom_Ellipse.hxx".}
proc setSemiAxis2*(this: var StepGeomEllipse; aSemiAxis2: StandardReal) {.
    importcpp: "SetSemiAxis2", header: "StepGeom_Ellipse.hxx".}
proc semiAxis2*(this: StepGeomEllipse): StandardReal {.noSideEffect,
    importcpp: "SemiAxis2", header: "StepGeom_Ellipse.hxx".}
type
  StepGeomEllipsebaseType* = StepGeomConic

proc getTypeName*(): cstring {.importcpp: "StepGeom_Ellipse::get_type_name(@)",
                            header: "StepGeom_Ellipse.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Ellipse::get_type_descriptor(@)",
    header: "StepGeom_Ellipse.hxx".}
proc dynamicType*(this: StepGeomEllipse): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Ellipse.hxx".}