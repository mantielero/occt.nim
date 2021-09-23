##  Created on: 1994-03-30
##  Created by: Laurent BUCHARD
##  Copyright (c) 1994-1999 Matra Datavision
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
  BRepClass3d_SolidExplorer, BRepClass3d_SClassifier, ../Standard/Standard_Real

discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
type
  BRepClass3d_SolidClassifier* {.importcpp: "BRepClass3d_SolidClassifier",
                                header: "BRepClass3d_SolidClassifier.hxx", bycopy.} = object of BRepClass3d_SClassifier ##
                                                                                                                 ## !
                                                                                                                 ## empty
                                                                                                                 ## constructor


proc constructBRepClass3d_SolidClassifier*(): BRepClass3d_SolidClassifier {.
    constructor, importcpp: "BRepClass3d_SolidClassifier(@)",
    header: "BRepClass3d_SolidClassifier.hxx".}
proc Load*(this: var BRepClass3d_SolidClassifier; S: TopoDS_Shape) {.
    importcpp: "Load", header: "BRepClass3d_SolidClassifier.hxx".}
proc constructBRepClass3d_SolidClassifier*(S: TopoDS_Shape): BRepClass3d_SolidClassifier {.
    constructor, importcpp: "BRepClass3d_SolidClassifier(@)",
    header: "BRepClass3d_SolidClassifier.hxx".}
proc constructBRepClass3d_SolidClassifier*(S: TopoDS_Shape; P: gp_Pnt;
    Tol: Standard_Real): BRepClass3d_SolidClassifier {.constructor,
    importcpp: "BRepClass3d_SolidClassifier(@)",
    header: "BRepClass3d_SolidClassifier.hxx".}
proc Perform*(this: var BRepClass3d_SolidClassifier; P: gp_Pnt; Tol: Standard_Real) {.
    importcpp: "Perform", header: "BRepClass3d_SolidClassifier.hxx".}
proc PerformInfinitePoint*(this: var BRepClass3d_SolidClassifier; Tol: Standard_Real) {.
    importcpp: "PerformInfinitePoint", header: "BRepClass3d_SolidClassifier.hxx".}
proc Destroy*(this: var BRepClass3d_SolidClassifier) {.importcpp: "Destroy",
    header: "BRepClass3d_SolidClassifier.hxx".}
proc destroyBRepClass3d_SolidClassifier*(this: var BRepClass3d_SolidClassifier) {.
    importcpp: "#.~BRepClass3d_SolidClassifier()",
    header: "BRepClass3d_SolidClassifier.hxx".}