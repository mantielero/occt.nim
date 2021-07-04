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
  StepShape_Face, StepShape_HArray1OfFaceBound, ../Standard/Standard_Integer

discard "forward decl of StepShape_Face"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceBound"
discard "forward decl of StepShape_OrientedFace"
discard "forward decl of StepShape_OrientedFace"
type
  Handle_StepShape_OrientedFace* = handle[StepShape_OrientedFace]
  StepShape_OrientedFace* {.importcpp: "StepShape_OrientedFace",
                           header: "StepShape_OrientedFace.hxx", bycopy.} = object of StepShape_Face ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## OrientedFace


proc constructStepShape_OrientedFace*(): StepShape_OrientedFace {.constructor,
    importcpp: "StepShape_OrientedFace(@)", header: "StepShape_OrientedFace.hxx".}
proc Init*(this: var StepShape_OrientedFace;
          aName: handle[TCollection_HAsciiString];
          aFaceElement: handle[StepShape_Face]; aOrientation: Standard_Boolean) {.
    importcpp: "Init", header: "StepShape_OrientedFace.hxx".}
proc SetFaceElement*(this: var StepShape_OrientedFace;
                    aFaceElement: handle[StepShape_Face]) {.
    importcpp: "SetFaceElement", header: "StepShape_OrientedFace.hxx".}
proc FaceElement*(this: StepShape_OrientedFace): handle[StepShape_Face] {.
    noSideEffect, importcpp: "FaceElement", header: "StepShape_OrientedFace.hxx".}
proc SetOrientation*(this: var StepShape_OrientedFace;
                    aOrientation: Standard_Boolean) {.importcpp: "SetOrientation",
    header: "StepShape_OrientedFace.hxx".}
proc Orientation*(this: StepShape_OrientedFace): Standard_Boolean {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_OrientedFace.hxx".}
proc SetBounds*(this: var StepShape_OrientedFace;
               aBounds: handle[StepShape_HArray1OfFaceBound]) {.
    importcpp: "SetBounds", header: "StepShape_OrientedFace.hxx".}
proc Bounds*(this: StepShape_OrientedFace): handle[StepShape_HArray1OfFaceBound] {.
    noSideEffect, importcpp: "Bounds", header: "StepShape_OrientedFace.hxx".}
proc BoundsValue*(this: StepShape_OrientedFace; num: Standard_Integer): handle[
    StepShape_FaceBound] {.noSideEffect, importcpp: "BoundsValue",
                          header: "StepShape_OrientedFace.hxx".}
proc NbBounds*(this: StepShape_OrientedFace): Standard_Integer {.noSideEffect,
    importcpp: "NbBounds", header: "StepShape_OrientedFace.hxx".}
type
  StepShape_OrientedFacebase_type* = StepShape_Face

proc get_type_name*(): cstring {.importcpp: "StepShape_OrientedFace::get_type_name(@)",
                              header: "StepShape_OrientedFace.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_OrientedFace::get_type_descriptor(@)",
    header: "StepShape_OrientedFace.hxx".}
proc DynamicType*(this: StepShape_OrientedFace): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_OrientedFace.hxx".}