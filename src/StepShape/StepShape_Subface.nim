##  Created on: 2002-01-04
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of StepShape_Face"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Subface"
discard "forward decl of StepShape_Subface"
type
  HandleC1C1* = Handle[StepShapeSubface]

## ! Representation of STEP entity Subface

type
  StepShapeSubface* {.importcpp: "StepShape_Subface",
                     header: "StepShape_Subface.hxx", bycopy.} = object of StepShapeFace ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructStepShapeSubface*(): StepShapeSubface {.constructor,
    importcpp: "StepShape_Subface(@)", header: "StepShape_Subface.hxx".}
proc init*(this: var StepShapeSubface;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aFaceBounds: Handle[StepShapeHArray1OfFaceBound];
          aParentFace: Handle[StepShapeFace]) {.importcpp: "Init",
    header: "StepShape_Subface.hxx".}
proc parentFace*(this: StepShapeSubface): Handle[StepShapeFace] {.noSideEffect,
    importcpp: "ParentFace", header: "StepShape_Subface.hxx".}
proc setParentFace*(this: var StepShapeSubface; parentFace: Handle[StepShapeFace]) {.
    importcpp: "SetParentFace", header: "StepShape_Subface.hxx".}
type
  StepShapeSubfacebaseType* = StepShapeFace

proc getTypeName*(): cstring {.importcpp: "StepShape_Subface::get_type_name(@)",
                            header: "StepShape_Subface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_Subface::get_type_descriptor(@)",
    header: "StepShape_Subface.hxx".}
proc dynamicType*(this: StepShapeSubface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Subface.hxx".}

























