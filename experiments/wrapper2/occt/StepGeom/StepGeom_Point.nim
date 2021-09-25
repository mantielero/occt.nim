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

discard "forward decl of StepGeom_Point"
discard "forward decl of StepGeom_Point"
type
  HandleStepGeomPoint* = Handle[StepGeomPoint]
  StepGeomPoint* {.importcpp: "StepGeom_Point", header: "StepGeom_Point.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                             ## !
                                                                                                                             ## Returns
                                                                                                                             ## a
                                                                                                                             ## Point


proc constructStepGeomPoint*(): StepGeomPoint {.constructor,
    importcpp: "StepGeom_Point(@)", header: "StepGeom_Point.hxx".}
type
  StepGeomPointbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepGeom_Point::get_type_name(@)",
                            header: "StepGeom_Point.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Point::get_type_descriptor(@)",
    header: "StepGeom_Point.hxx".}
proc dynamicType*(this: StepGeomPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Point.hxx".}
