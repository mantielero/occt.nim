##  Created on: 1993-08-30
##  Created by: Martine LANGLOIS
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of StepGeom_CartesianPoint"
type
  StepToTopoDS_CartesianPointHasher* {.importcpp: "StepToTopoDS_CartesianPointHasher", header: "StepToTopoDS_CartesianPointHasher.hxx",
                                      bycopy.} = object ## ! Computes a hash code for the cartesian point, in the range [1, theUpperBound]
                                                     ## ! @param theCartesianPoint the cartesian point which hash code is to be computed
                                                     ## ! @param theUpperBound the upper bound of the range a computing hash code must be within
                                                     ## ! @return a computed hash code, in the range [1, theUpperBound]


proc HashCode*(theCartesianPoint: handle[StepGeom_CartesianPoint];
              theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "StepToTopoDS_CartesianPointHasher::HashCode(@)",
    header: "StepToTopoDS_CartesianPointHasher.hxx".}
proc IsEqual*(K1: handle[StepGeom_CartesianPoint];
             K2: handle[StepGeom_CartesianPoint]): Standard_Boolean {.
    importcpp: "StepToTopoDS_CartesianPointHasher::IsEqual(@)",
    header: "StepToTopoDS_CartesianPointHasher.hxx".}