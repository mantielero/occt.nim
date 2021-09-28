##  Created on: 1997-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of StepGeom_CartesianTransformationOperator2d"
discard "forward decl of StepGeom_CartesianTransformationOperator2d"
type
  HandleC1C1* = Handle[StepGeomCartesianTransformationOperator2d]

## ! Added from StepGeom Rev2 to Rev4

type
  StepGeomCartesianTransformationOperator2d* {.
      importcpp: "StepGeom_CartesianTransformationOperator2d",
      header: "StepGeom_CartesianTransformationOperator2d.hxx", bycopy.} = object of StepGeomCartesianTransformationOperator


proc constructStepGeomCartesianTransformationOperator2d*(): StepGeomCartesianTransformationOperator2d {.
    constructor, importcpp: "StepGeom_CartesianTransformationOperator2d(@)",
    header: "StepGeom_CartesianTransformationOperator2d.hxx".}
type
  StepGeomCartesianTransformationOperator2dbaseType* = StepGeomCartesianTransformationOperator

proc getTypeName*(): cstring {.importcpp: "StepGeom_CartesianTransformationOperator2d::get_type_name(@)", header: "StepGeom_CartesianTransformationOperator2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_CartesianTransformationOperator2d::get_type_descriptor(@)",
    header: "StepGeom_CartesianTransformationOperator2d.hxx".}
proc dynamicType*(this: StepGeomCartesianTransformationOperator2d): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepGeom_CartesianTransformationOperator2d.hxx".}

























