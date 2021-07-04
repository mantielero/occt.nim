##  Created on: 1997-03-28
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../StepData/StepData_SelectReal, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString

discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of StepBasic_MeasureValueMember"
type
  Handle_StepBasic_MeasureValueMember* = handle[StepBasic_MeasureValueMember]

## ! for Select MeasureValue, i.e. :
## ! length_measure,time_measure,plane_angle_measure,
## ! solid_angle_measure,ratio_measure,parameter_value,
## ! context_dependent_measure,positive_length_measure,
## ! positive_plane_angle_measure,positive_ratio_measure,
## ! area_measure,volume_measure, count_measure

type
  StepBasic_MeasureValueMember* {.importcpp: "StepBasic_MeasureValueMember",
                                 header: "StepBasic_MeasureValueMember.hxx",
                                 bycopy.} = object of StepData_SelectReal


proc constructStepBasic_MeasureValueMember*(): StepBasic_MeasureValueMember {.
    constructor, importcpp: "StepBasic_MeasureValueMember(@)",
    header: "StepBasic_MeasureValueMember.hxx".}
proc HasName*(this: StepBasic_MeasureValueMember): Standard_Boolean {.noSideEffect,
    importcpp: "HasName", header: "StepBasic_MeasureValueMember.hxx".}
proc Name*(this: StepBasic_MeasureValueMember): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepBasic_MeasureValueMember.hxx".}
proc SetName*(this: var StepBasic_MeasureValueMember; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetName", header: "StepBasic_MeasureValueMember.hxx".}
type
  StepBasic_MeasureValueMemberbase_type* = StepData_SelectReal

proc get_type_name*(): cstring {.importcpp: "StepBasic_MeasureValueMember::get_type_name(@)",
                              header: "StepBasic_MeasureValueMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_MeasureValueMember::get_type_descriptor(@)",
    header: "StepBasic_MeasureValueMember.hxx".}
proc DynamicType*(this: StepBasic_MeasureValueMember): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_MeasureValueMember.hxx".}