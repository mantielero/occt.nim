##  Created on: 2002-12-12
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_FeaParametricPoint"
discard "forward decl of StepFEA_FeaParametricPoint"
type
  HandleC1C1* = Handle[StepFEA_FeaParametricPoint]

## ! Representation of STEP entity FeaParametricPoint

type
  StepFEA_FeaParametricPoint* {.importcpp: "StepFEA_FeaParametricPoint",
                               header: "StepFEA_FeaParametricPoint.hxx", bycopy.} = object of StepGeomPoint ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor


proc constructStepFEA_FeaParametricPoint*(): StepFEA_FeaParametricPoint {.
    constructor, importcpp: "StepFEA_FeaParametricPoint(@)",
    header: "StepFEA_FeaParametricPoint.hxx".}
proc init*(this: var StepFEA_FeaParametricPoint;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aCoordinates: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "StepFEA_FeaParametricPoint.hxx".}
proc coordinates*(this: StepFEA_FeaParametricPoint): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "Coordinates",
    header: "StepFEA_FeaParametricPoint.hxx".}
proc setCoordinates*(this: var StepFEA_FeaParametricPoint;
                    coordinates: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetCoordinates", header: "StepFEA_FeaParametricPoint.hxx".}
type
  StepFEA_FeaParametricPointbaseType* = StepGeomPoint

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaParametricPoint::get_type_name(@)",
                            header: "StepFEA_FeaParametricPoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_FeaParametricPoint::get_type_descriptor(@)",
    header: "StepFEA_FeaParametricPoint.hxx".}
proc dynamicType*(this: StepFEA_FeaParametricPoint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FeaParametricPoint.hxx".}

























