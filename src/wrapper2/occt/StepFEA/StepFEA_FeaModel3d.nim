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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_FeaModel

discard "forward decl of StepFEA_FeaModel3d"
discard "forward decl of StepFEA_FeaModel3d"
type
  Handle_StepFEA_FeaModel3d* = handle[StepFEA_FeaModel3d]

## ! Representation of STEP entity FeaModel3d

type
  StepFEA_FeaModel3d* {.importcpp: "StepFEA_FeaModel3d",
                       header: "StepFEA_FeaModel3d.hxx", bycopy.} = object of StepFEA_FeaModel ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructStepFEA_FeaModel3d*(): StepFEA_FeaModel3d {.constructor,
    importcpp: "StepFEA_FeaModel3d(@)", header: "StepFEA_FeaModel3d.hxx".}
type
  StepFEA_FeaModel3dbase_type* = StepFEA_FeaModel

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaModel3d::get_type_name(@)",
                              header: "StepFEA_FeaModel3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_FeaModel3d::get_type_descriptor(@)",
    header: "StepFEA_FeaModel3d.hxx".}
proc DynamicType*(this: StepFEA_FeaModel3d): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepFEA_FeaModel3d.hxx".}