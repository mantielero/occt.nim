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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepShape_Face, StepShape_HArray1OfFaceBound

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceSurface"
discard "forward decl of StepShape_FaceSurface"
type
  Handle_StepShape_FaceSurface* = handle[StepShape_FaceSurface]
  StepShape_FaceSurface* {.importcpp: "StepShape_FaceSurface",
                          header: "StepShape_FaceSurface.hxx", bycopy.} = object of StepShape_Face ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## FaceSurface


proc constructStepShape_FaceSurface*(): StepShape_FaceSurface {.constructor,
    importcpp: "StepShape_FaceSurface(@)", header: "StepShape_FaceSurface.hxx".}
proc Init*(this: var StepShape_FaceSurface; aName: handle[TCollection_HAsciiString];
          aBounds: handle[StepShape_HArray1OfFaceBound];
          aFaceGeometry: handle[StepGeom_Surface]; aSameSense: Standard_Boolean) {.
    importcpp: "Init", header: "StepShape_FaceSurface.hxx".}
proc SetFaceGeometry*(this: var StepShape_FaceSurface;
                     aFaceGeometry: handle[StepGeom_Surface]) {.
    importcpp: "SetFaceGeometry", header: "StepShape_FaceSurface.hxx".}
proc FaceGeometry*(this: StepShape_FaceSurface): handle[StepGeom_Surface] {.
    noSideEffect, importcpp: "FaceGeometry", header: "StepShape_FaceSurface.hxx".}
proc SetSameSense*(this: var StepShape_FaceSurface; aSameSense: Standard_Boolean) {.
    importcpp: "SetSameSense", header: "StepShape_FaceSurface.hxx".}
proc SameSense*(this: StepShape_FaceSurface): Standard_Boolean {.noSideEffect,
    importcpp: "SameSense", header: "StepShape_FaceSurface.hxx".}
type
  StepShape_FaceSurfacebase_type* = StepShape_Face

proc get_type_name*(): cstring {.importcpp: "StepShape_FaceSurface::get_type_name(@)",
                              header: "StepShape_FaceSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_FaceSurface::get_type_descriptor(@)",
    header: "StepShape_FaceSurface.hxx".}
proc DynamicType*(this: StepShape_FaceSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_FaceSurface.hxx".}