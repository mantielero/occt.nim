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

discard "forward decl of Standard_DomainError"
discard "forward decl of BRepClass3d_SolidExplorer"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  BRepClass3dSClassifier* {.importcpp: "BRepClass3d_SClassifier",
                           header: "BRepClass3d_SClassifier.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor.
    ## ! This variable stores information about algorithm internal state.
    ## ! Type of this variable differs from TopAbs_State since it contains
    ## ! additional information about error status.
    ## ! 1 - Error inside of the algorithm.
    ## ! 2 - ON.
    ## ! 3 - IN.
    ## ! 4 - OUT.


proc constructBRepClass3dSClassifier*(): BRepClass3dSClassifier {.constructor,
    importcpp: "BRepClass3d_SClassifier(@)", header: "BRepClass3d_SClassifier.hxx".}
proc constructBRepClass3dSClassifier*(s: var BRepClass3dSolidExplorer; p: Pnt;
                                     tol: float): BRepClass3dSClassifier {.
    constructor, importcpp: "BRepClass3d_SClassifier(@)",
    header: "BRepClass3d_SClassifier.hxx".}
proc perform*(this: var BRepClass3dSClassifier; s: var BRepClass3dSolidExplorer;
             p: Pnt; tol: float) {.importcpp: "Perform",
                               header: "BRepClass3d_SClassifier.hxx".}
proc performInfinitePoint*(this: var BRepClass3dSClassifier;
                          s: var BRepClass3dSolidExplorer; tol: float) {.
    importcpp: "PerformInfinitePoint", header: "BRepClass3d_SClassifier.hxx".}
proc rejected*(this: BRepClass3dSClassifier): bool {.noSideEffect,
    importcpp: "Rejected", header: "BRepClass3d_SClassifier.hxx".}
proc state*(this: BRepClass3dSClassifier): TopAbsState {.noSideEffect,
    importcpp: "State", header: "BRepClass3d_SClassifier.hxx".}
proc isOnAFace*(this: BRepClass3dSClassifier): bool {.noSideEffect,
    importcpp: "IsOnAFace", header: "BRepClass3d_SClassifier.hxx".}
proc face*(this: BRepClass3dSClassifier): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepClass3d_SClassifier.hxx".}
