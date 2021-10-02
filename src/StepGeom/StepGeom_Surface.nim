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

discard "forward decl of StepGeom_Surface"
discard "forward decl of StepGeom_Surface"
type
  HandleC1C1* = Handle[StepGeomSurface]
  StepGeomSurface* {.importcpp: "StepGeom_Surface", header: "StepGeom_Surface.hxx",
                    bycopy.} = object of StepGeomGeometricRepresentationItem ## ! Returns a Surface


proc constructStepGeomSurface*(): StepGeomSurface {.constructor,
    importcpp: "StepGeom_Surface(@)", header: "StepGeom_Surface.hxx".}
type
  StepGeomSurfacebaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepGeom_Surface::get_type_name(@)",
                            header: "StepGeom_Surface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Surface::get_type_descriptor(@)",
    header: "StepGeom_Surface.hxx".}
proc dynamicType*(this: StepGeomSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Surface.hxx".}