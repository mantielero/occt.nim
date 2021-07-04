##  Created on: 1996-07-15
##  Created by: Laurent BUCHARD
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_State

discard "forward decl of Standard_DomainError"
discard "forward decl of BRepClass3d_SolidExplorer"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  BRepClass3d_SClassifier* {.importcpp: "BRepClass3d_SClassifier",
                            header: "BRepClass3d_SClassifier.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor.
    ## ! This variable stores information about algorithm internal state.
    ## ! Type of this variable differs from TopAbs_State since it contains
    ## ! additional information about error status.
    ## ! 1 - Error inside of the algorithm.
    ## ! 2 - ON.
    ## ! 3 - IN.
    ## ! 4 - OUT.


proc constructBRepClass3d_SClassifier*(): BRepClass3d_SClassifier {.constructor,
    importcpp: "BRepClass3d_SClassifier(@)", header: "BRepClass3d_SClassifier.hxx".}
proc constructBRepClass3d_SClassifier*(S: var BRepClass3d_SolidExplorer; P: gp_Pnt;
                                      Tol: Standard_Real): BRepClass3d_SClassifier {.
    constructor, importcpp: "BRepClass3d_SClassifier(@)",
    header: "BRepClass3d_SClassifier.hxx".}
proc Perform*(this: var BRepClass3d_SClassifier; S: var BRepClass3d_SolidExplorer;
             P: gp_Pnt; Tol: Standard_Real) {.importcpp: "Perform",
    header: "BRepClass3d_SClassifier.hxx".}
proc PerformInfinitePoint*(this: var BRepClass3d_SClassifier;
                          S: var BRepClass3d_SolidExplorer; Tol: Standard_Real) {.
    importcpp: "PerformInfinitePoint", header: "BRepClass3d_SClassifier.hxx".}
proc Rejected*(this: BRepClass3d_SClassifier): Standard_Boolean {.noSideEffect,
    importcpp: "Rejected", header: "BRepClass3d_SClassifier.hxx".}
proc State*(this: BRepClass3d_SClassifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "BRepClass3d_SClassifier.hxx".}
proc IsOnAFace*(this: BRepClass3d_SClassifier): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnAFace", header: "BRepClass3d_SClassifier.hxx".}
proc Face*(this: BRepClass3d_SClassifier): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepClass3d_SClassifier.hxx".}