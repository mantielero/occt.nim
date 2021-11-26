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

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_SweptSurface"
discard "forward decl of StepGeom_SweptSurface"
type
  HandleC1C1* = Handle[StepGeomSweptSurface]
  StepGeomSweptSurface* {.importcpp: "StepGeom_SweptSurface",
                         header: "StepGeom_SweptSurface.hxx", bycopy.} = object of StepGeomSurface ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## SweptSurface


proc constructStepGeomSweptSurface*(): StepGeomSweptSurface {.constructor,
    importcpp: "StepGeom_SweptSurface(@)", header: "StepGeom_SweptSurface.hxx".}
proc init*(this: var StepGeomSweptSurface; aName: Handle[TCollectionHAsciiString];
          aSweptCurve: Handle[StepGeomCurve]) {.importcpp: "Init",
    header: "StepGeom_SweptSurface.hxx".}
proc setSweptCurve*(this: var StepGeomSweptSurface;
                   aSweptCurve: Handle[StepGeomCurve]) {.
    importcpp: "SetSweptCurve", header: "StepGeom_SweptSurface.hxx".}
proc sweptCurve*(this: StepGeomSweptSurface): Handle[StepGeomCurve] {.noSideEffect,
    importcpp: "SweptCurve", header: "StepGeom_SweptSurface.hxx".}
type
  StepGeomSweptSurfacebaseType* = StepGeomSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_SweptSurface::get_type_name(@)",
                            header: "StepGeom_SweptSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_SweptSurface::get_type_descriptor(@)",
    header: "StepGeom_SweptSurface.hxx".}
proc dynamicType*(this: StepGeomSweptSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_SweptSurface.hxx".}