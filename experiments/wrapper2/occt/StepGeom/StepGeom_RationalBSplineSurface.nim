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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray2OfReal, StepGeom_BSplineSurface,
  ../Standard/Standard_Integer, StepGeom_HArray2OfCartesianPoint,
  StepGeom_BSplineSurfaceForm, ../StepData/StepData_Logical,
  ../Standard/Standard_Real

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_RationalBSplineSurface"
discard "forward decl of StepGeom_RationalBSplineSurface"
type
  Handle_StepGeom_RationalBSplineSurface* = handle[StepGeom_RationalBSplineSurface]
  StepGeom_RationalBSplineSurface* {.importcpp: "StepGeom_RationalBSplineSurface", header: "StepGeom_RationalBSplineSurface.hxx",
                                    bycopy.} = object of StepGeom_BSplineSurface ## !
                                                                            ## Returns a
                                                                            ## RationalBSplineSurface


proc constructStepGeom_RationalBSplineSurface*(): StepGeom_RationalBSplineSurface {.
    constructor, importcpp: "StepGeom_RationalBSplineSurface(@)",
    header: "StepGeom_RationalBSplineSurface.hxx".}
proc Init*(this: var StepGeom_RationalBSplineSurface;
          aName: handle[TCollection_HAsciiString]; aUDegree: Standard_Integer;
          aVDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray2OfCartesianPoint];
          aSurfaceForm: StepGeom_BSplineSurfaceForm; aUClosed: StepData_Logical;
          aVClosed: StepData_Logical; aSelfIntersect: StepData_Logical;
          aWeightsData: handle[TColStd_HArray2OfReal]) {.importcpp: "Init",
    header: "StepGeom_RationalBSplineSurface.hxx".}
proc SetWeightsData*(this: var StepGeom_RationalBSplineSurface;
                    aWeightsData: handle[TColStd_HArray2OfReal]) {.
    importcpp: "SetWeightsData", header: "StepGeom_RationalBSplineSurface.hxx".}
proc WeightsData*(this: StepGeom_RationalBSplineSurface): handle[
    TColStd_HArray2OfReal] {.noSideEffect, importcpp: "WeightsData",
                            header: "StepGeom_RationalBSplineSurface.hxx".}
proc WeightsDataValue*(this: StepGeom_RationalBSplineSurface;
                      num1: Standard_Integer; num2: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "WeightsDataValue",
    header: "StepGeom_RationalBSplineSurface.hxx".}
proc NbWeightsDataI*(this: StepGeom_RationalBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbWeightsDataI",
    header: "StepGeom_RationalBSplineSurface.hxx".}
proc NbWeightsDataJ*(this: StepGeom_RationalBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbWeightsDataJ",
    header: "StepGeom_RationalBSplineSurface.hxx".}
type
  StepGeom_RationalBSplineSurfacebase_type* = StepGeom_BSplineSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_RationalBSplineSurface::get_type_name(@)",
                              header: "StepGeom_RationalBSplineSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_RationalBSplineSurface::get_type_descriptor(@)",
    header: "StepGeom_RationalBSplineSurface.hxx".}
proc DynamicType*(this: StepGeom_RationalBSplineSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_RationalBSplineSurface.hxx".}