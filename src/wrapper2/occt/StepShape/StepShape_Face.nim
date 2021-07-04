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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_HArray1OfFaceBound,
  StepShape_TopologicalRepresentationItem, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceBound"
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_Face"
type
  Handle_StepShape_Face* = handle[StepShape_Face]
  StepShape_Face* {.importcpp: "StepShape_Face", header: "StepShape_Face.hxx", bycopy.} = object of StepShape_TopologicalRepresentationItem ##
                                                                                                                                  ## !
                                                                                                                                  ## Returns
                                                                                                                                  ## a
                                                                                                                                  ## Face


proc constructStepShape_Face*(): StepShape_Face {.constructor,
    importcpp: "StepShape_Face(@)", header: "StepShape_Face.hxx".}
proc Init*(this: var StepShape_Face; aName: handle[TCollection_HAsciiString];
          aBounds: handle[StepShape_HArray1OfFaceBound]) {.importcpp: "Init",
    header: "StepShape_Face.hxx".}
proc SetBounds*(this: var StepShape_Face;
               aBounds: handle[StepShape_HArray1OfFaceBound]) {.
    importcpp: "SetBounds", header: "StepShape_Face.hxx".}
proc Bounds*(this: StepShape_Face): handle[StepShape_HArray1OfFaceBound] {.
    noSideEffect, importcpp: "Bounds", header: "StepShape_Face.hxx".}
proc BoundsValue*(this: StepShape_Face; num: Standard_Integer): handle[
    StepShape_FaceBound] {.noSideEffect, importcpp: "BoundsValue",
                          header: "StepShape_Face.hxx".}
proc NbBounds*(this: StepShape_Face): Standard_Integer {.noSideEffect,
    importcpp: "NbBounds", header: "StepShape_Face.hxx".}
type
  StepShape_Facebase_type* = StepShape_TopologicalRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_Face::get_type_name(@)",
                              header: "StepShape_Face.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_Face::get_type_descriptor(@)",
    header: "StepShape_Face.hxx".}
proc DynamicType*(this: StepShape_Face): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Face.hxx".}