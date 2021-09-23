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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepGeom_CartesianTransformationOperator

discard "forward decl of StepGeom_CartesianTransformationOperator2d"
discard "forward decl of StepGeom_CartesianTransformationOperator2d"
type
  Handle_StepGeom_CartesianTransformationOperator2d* = handle[
      StepGeom_CartesianTransformationOperator2d]

## ! Added from StepGeom Rev2 to Rev4

type
  StepGeom_CartesianTransformationOperator2d* {.
      importcpp: "StepGeom_CartesianTransformationOperator2d",
      header: "StepGeom_CartesianTransformationOperator2d.hxx", bycopy.} = object of StepGeom_CartesianTransformationOperator


proc constructStepGeom_CartesianTransformationOperator2d*(): StepGeom_CartesianTransformationOperator2d {.
    constructor, importcpp: "StepGeom_CartesianTransformationOperator2d(@)",
    header: "StepGeom_CartesianTransformationOperator2d.hxx".}
type
  StepGeom_CartesianTransformationOperator2dbase_type* = StepGeom_CartesianTransformationOperator

proc get_type_name*(): cstring {.importcpp: "StepGeom_CartesianTransformationOperator2d::get_type_name(@)", header: "StepGeom_CartesianTransformationOperator2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_CartesianTransformationOperator2d::get_type_descriptor(@)",
    header: "StepGeom_CartesianTransformationOperator2d.hxx".}
proc DynamicType*(this: StepGeom_CartesianTransformationOperator2d): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepGeom_CartesianTransformationOperator2d.hxx".}