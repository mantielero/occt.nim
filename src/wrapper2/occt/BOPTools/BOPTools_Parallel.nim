##  Created by: Peter KURNEV
##  Copyright (c) 1999-2013 OPEN CASCADE SAS
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
  ../Standard/Standard_Macro, ../Standard/Standard_NotImplemented,
  ../OSD/OSD_Parallel, ../OSD/OSD_ThreadPool, ../NCollection/NCollection_DataMap,
  ../Standard/Standard_Mutex, ../OSD/OSD_Thread

## ! Implementation of Functors/Starters

type
  BOPTools_Parallel* {.importcpp: "BOPTools_Parallel",
                      header: "BOPTools_Parallel.hxx", bycopy.} = object ## ! Pure version


proc Perform*[TypeSolverVector](theIsRunParallel: Standard_Boolean;
                               theSolverVector: var TypeSolverVector) {.
    importcpp: "BOPTools_Parallel::Perform(@)", header: "BOPTools_Parallel.hxx".}
proc Perform*[TypeSolverVector; TypeContext](theIsRunParallel: Standard_Boolean;
    theSolverVector: var TypeSolverVector; theContext: var handle[TypeContext]) {.
    importcpp: "BOPTools_Parallel::Perform(@)", header: "BOPTools_Parallel.hxx".}