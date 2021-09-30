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
discard "forward decl of StepShape_FaceBound"
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_Face"
type
  HandleC1C1* = Handle[StepShapeFace]
  StepShapeFace* {.importcpp: "StepShape_Face", header: "StepShape_Face.hxx", bycopy.} = object of StepShapeTopologicalRepresentationItem ##
                                                                                                                                ## !
                                                                                                                                ## Returns
                                                                                                                                ## a
                                                                                                                                ## Face


proc constructStepShapeFace*(): StepShapeFace {.constructor,
    importcpp: "StepShape_Face(@)", header: "StepShape_Face.hxx".}
proc init*(this: var StepShapeFace; aName: Handle[TCollectionHAsciiString];
          aBounds: Handle[StepShapeHArray1OfFaceBound]) {.importcpp: "Init",
    header: "StepShape_Face.hxx".}
proc setBounds*(this: var StepShapeFace;
               aBounds: Handle[StepShapeHArray1OfFaceBound]) {.
    importcpp: "SetBounds", header: "StepShape_Face.hxx".}
proc bounds*(this: StepShapeFace): Handle[StepShapeHArray1OfFaceBound] {.
    noSideEffect, importcpp: "Bounds", header: "StepShape_Face.hxx".}
proc boundsValue*(this: StepShapeFace; num: cint): Handle[StepShapeFaceBound] {.
    noSideEffect, importcpp: "BoundsValue", header: "StepShape_Face.hxx".}
proc nbBounds*(this: StepShapeFace): cint {.noSideEffect, importcpp: "NbBounds",
                                        header: "StepShape_Face.hxx".}
type
  StepShapeFacebaseType* = StepShapeTopologicalRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_Face::get_type_name(@)",
                            header: "StepShape_Face.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_Face::get_type_descriptor(@)",
    header: "StepShape_Face.hxx".}
proc dynamicType*(this: StepShapeFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Face.hxx".}

























