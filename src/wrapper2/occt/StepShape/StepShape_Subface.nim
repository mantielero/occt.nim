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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_Face,
  StepShape_HArray1OfFaceBound

discard "forward decl of StepShape_Face"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Subface"
discard "forward decl of StepShape_Subface"
type
  Handle_StepShape_Subface* = handle[StepShape_Subface]

## ! Representation of STEP entity Subface

type
  StepShape_Subface* {.importcpp: "StepShape_Subface",
                      header: "StepShape_Subface.hxx", bycopy.} = object of StepShape_Face ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor


proc constructStepShape_Subface*(): StepShape_Subface {.constructor,
    importcpp: "StepShape_Subface(@)", header: "StepShape_Subface.hxx".}
proc Init*(this: var StepShape_Subface;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aFace_Bounds: handle[StepShape_HArray1OfFaceBound];
          aParentFace: handle[StepShape_Face]) {.importcpp: "Init",
    header: "StepShape_Subface.hxx".}
proc ParentFace*(this: StepShape_Subface): handle[StepShape_Face] {.noSideEffect,
    importcpp: "ParentFace", header: "StepShape_Subface.hxx".}
proc SetParentFace*(this: var StepShape_Subface; ParentFace: handle[StepShape_Face]) {.
    importcpp: "SetParentFace", header: "StepShape_Subface.hxx".}
type
  StepShape_Subfacebase_type* = StepShape_Face

proc get_type_name*(): cstring {.importcpp: "StepShape_Subface::get_type_name(@)",
                              header: "StepShape_Subface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_Subface::get_type_descriptor(@)",
    header: "StepShape_Subface.hxx".}
proc DynamicType*(this: StepShape_Subface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Subface.hxx".}