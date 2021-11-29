##  Created by: Peter Kurnev
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##  Copyright (c) 2007-2010 CEA/DEN, EDF R&D, OPEN CASCADE
##  Copyright (c) 2003-2007 OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN, CEDRAT,
##                          EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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

## ! Checks the shape on self-interference.
## !
## ! The algorithm can set the following errors:
## ! - *BOPAlgo_AlertMultipleArguments* - The number of the input arguments is not one;
## ! - *BOPALgo_ErrorIntersectionFailed* - The check has been aborted during intersection of sub-shapes.
## ! In case the error has occurred during intersection of sub-shapes, i.e.
## ! in BOPAlgo_PaveFiller::PerformInternal() method, the errors from this method
## ! directly will be returned.

type
  BOPAlgoCheckerSI* {.importcpp: "BOPAlgo_CheckerSI",
                     header: "BOPAlgo_CheckerSI.hxx", bycopy.} = object of BOPAlgoPaveFiller


proc newBOPAlgoCheckerSI*(): BOPAlgoCheckerSI {.cdecl, constructor,
    importcpp: "BOPAlgo_CheckerSI(@)", header: "BOPAlgo_CheckerSI.hxx".}
proc destroyBOPAlgoCheckerSI*(this: var BOPAlgoCheckerSI) {.cdecl,
    importcpp: "#.~BOPAlgo_CheckerSI()", header: "BOPAlgo_CheckerSI.hxx".}
proc perform*(this: var BOPAlgoCheckerSI) {.cdecl, importcpp: "Perform", header: "BOPAlgo_CheckerSI.hxx".}
proc setLevelOfCheck*(this: var BOPAlgoCheckerSI; theLevel: cint) {.cdecl,
    importcpp: "SetLevelOfCheck", header: "BOPAlgo_CheckerSI.hxx".}