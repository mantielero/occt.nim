##  Created on: 1992-09-22
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of MAT_ListOfEdge"
discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT2d_Tool2d"
discard "forward decl of MAT_Bisector"
type
  MAT2dMat2d* {.importcpp: "MAT2d_Mat2d", header: "MAT2d_Mat2d.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## construtor.


proc constructMAT2dMat2d*(isOpenResult: bool = false): MAT2dMat2d {.constructor,
    importcpp: "MAT2d_Mat2d(@)", header: "MAT2d_Mat2d.hxx".}
proc destroyMAT2dMat2d*(this: var MAT2dMat2d) {.importcpp: "#.~MAT2d_Mat2d()",
    header: "MAT2d_Mat2d.hxx".}
proc createMat*(this: var MAT2dMat2d; aTool: var MAT2dTool2d) {.importcpp: "CreateMat",
    header: "MAT2d_Mat2d.hxx".}
proc createMatOpen*(this: var MAT2dMat2d; aTool: var MAT2dTool2d) {.
    importcpp: "CreateMatOpen", header: "MAT2d_Mat2d.hxx".}
proc isDone*(this: MAT2dMat2d): bool {.noSideEffect, importcpp: "IsDone",
                                   header: "MAT2d_Mat2d.hxx".}
proc init*(this: var MAT2dMat2d) {.importcpp: "Init", header: "MAT2d_Mat2d.hxx".}
proc more*(this: MAT2dMat2d): bool {.noSideEffect, importcpp: "More",
                                 header: "MAT2d_Mat2d.hxx".}
proc next*(this: var MAT2dMat2d) {.importcpp: "Next", header: "MAT2d_Mat2d.hxx".}
proc bisector*(this: MAT2dMat2d): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "Bisector", header: "MAT2d_Mat2d.hxx".}
proc semiInfinite*(this: MAT2dMat2d): bool {.noSideEffect, importcpp: "SemiInfinite",
    header: "MAT2d_Mat2d.hxx".}
proc numberOfBisectors*(this: MAT2dMat2d): cint {.noSideEffect,
    importcpp: "NumberOfBisectors", header: "MAT2d_Mat2d.hxx".}

























