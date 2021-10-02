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

discard "forward decl of StepShape_Face"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceBound"
discard "forward decl of StepShape_OrientedFace"
discard "forward decl of StepShape_OrientedFace"
type
  HandleC1C1* = Handle[StepShapeOrientedFace]
  StepShapeOrientedFace* {.importcpp: "StepShape_OrientedFace",
                          header: "StepShape_OrientedFace.hxx", bycopy.} = object of StepShapeFace ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## OrientedFace


proc constructStepShapeOrientedFace*(): StepShapeOrientedFace {.constructor,
    importcpp: "StepShape_OrientedFace(@)", header: "StepShape_OrientedFace.hxx".}
proc init*(this: var StepShapeOrientedFace; aName: Handle[TCollectionHAsciiString];
          aFaceElement: Handle[StepShapeFace]; aOrientation: StandardBoolean) {.
    importcpp: "Init", header: "StepShape_OrientedFace.hxx".}
proc setFaceElement*(this: var StepShapeOrientedFace;
                    aFaceElement: Handle[StepShapeFace]) {.
    importcpp: "SetFaceElement", header: "StepShape_OrientedFace.hxx".}
proc faceElement*(this: StepShapeOrientedFace): Handle[StepShapeFace] {.
    noSideEffect, importcpp: "FaceElement", header: "StepShape_OrientedFace.hxx".}
proc setOrientation*(this: var StepShapeOrientedFace; aOrientation: StandardBoolean) {.
    importcpp: "SetOrientation", header: "StepShape_OrientedFace.hxx".}
proc orientation*(this: StepShapeOrientedFace): StandardBoolean {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_OrientedFace.hxx".}
proc setBounds*(this: var StepShapeOrientedFace;
               aBounds: Handle[StepShapeHArray1OfFaceBound]) {.
    importcpp: "SetBounds", header: "StepShape_OrientedFace.hxx".}
proc bounds*(this: StepShapeOrientedFace): Handle[StepShapeHArray1OfFaceBound] {.
    noSideEffect, importcpp: "Bounds", header: "StepShape_OrientedFace.hxx".}
proc boundsValue*(this: StepShapeOrientedFace; num: int): Handle[StepShapeFaceBound] {.
    noSideEffect, importcpp: "BoundsValue", header: "StepShape_OrientedFace.hxx".}
proc nbBounds*(this: StepShapeOrientedFace): int {.noSideEffect,
    importcpp: "NbBounds", header: "StepShape_OrientedFace.hxx".}
type
  StepShapeOrientedFacebaseType* = StepShapeFace

proc getTypeName*(): cstring {.importcpp: "StepShape_OrientedFace::get_type_name(@)",
                            header: "StepShape_OrientedFace.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_OrientedFace::get_type_descriptor(@)",
    header: "StepShape_OrientedFace.hxx".}
proc dynamicType*(this: StepShapeOrientedFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_OrientedFace.hxx".}