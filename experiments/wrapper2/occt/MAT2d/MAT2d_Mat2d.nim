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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColStd/TColStd_DataMapOfIntegerInteger,
  ../MAT/MAT_DataMapOfIntegerBisector, ../Standard/Standard_Real

discard "forward decl of MAT_ListOfEdge"
discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT2d_Tool2d"
discard "forward decl of MAT_Bisector"
type
  MAT2d_Mat2d* {.importcpp: "MAT2d_Mat2d", header: "MAT2d_Mat2d.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## construtor.


proc constructMAT2d_Mat2d*(IsOpenResult: Standard_Boolean = Standard_False): MAT2d_Mat2d {.
    constructor, importcpp: "MAT2d_Mat2d(@)", header: "MAT2d_Mat2d.hxx".}
proc destroyMAT2d_Mat2d*(this: var MAT2d_Mat2d) {.importcpp: "#.~MAT2d_Mat2d()",
    header: "MAT2d_Mat2d.hxx".}
proc CreateMat*(this: var MAT2d_Mat2d; aTool: var MAT2d_Tool2d) {.
    importcpp: "CreateMat", header: "MAT2d_Mat2d.hxx".}
proc CreateMatOpen*(this: var MAT2d_Mat2d; aTool: var MAT2d_Tool2d) {.
    importcpp: "CreateMatOpen", header: "MAT2d_Mat2d.hxx".}
proc IsDone*(this: MAT2d_Mat2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "MAT2d_Mat2d.hxx".}
proc Init*(this: var MAT2d_Mat2d) {.importcpp: "Init", header: "MAT2d_Mat2d.hxx".}
proc More*(this: MAT2d_Mat2d): Standard_Boolean {.noSideEffect, importcpp: "More",
    header: "MAT2d_Mat2d.hxx".}
proc Next*(this: var MAT2d_Mat2d) {.importcpp: "Next", header: "MAT2d_Mat2d.hxx".}
proc Bisector*(this: MAT2d_Mat2d): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "Bisector", header: "MAT2d_Mat2d.hxx".}
proc SemiInfinite*(this: MAT2d_Mat2d): Standard_Boolean {.noSideEffect,
    importcpp: "SemiInfinite", header: "MAT2d_Mat2d.hxx".}
proc NumberOfBisectors*(this: MAT2d_Mat2d): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfBisectors", header: "MAT2d_Mat2d.hxx".}