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

discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
type
  BRepClass3dSolidClassifier* {.importcpp: "BRepClass3d_SolidClassifier",
                               header: "BRepClass3d_SolidClassifier.hxx", bycopy.} = object of BRepClass3dSClassifier ##
                                                                                                               ## !
                                                                                                               ## empty
                                                                                                               ## constructor


proc constructBRepClass3dSolidClassifier*(): BRepClass3dSolidClassifier {.
    constructor, importcpp: "BRepClass3d_SolidClassifier(@)",
    header: "BRepClass3d_SolidClassifier.hxx".}
proc load*(this: var BRepClass3dSolidClassifier; s: TopoDS_Shape) {.importcpp: "Load",
    header: "BRepClass3d_SolidClassifier.hxx".}
proc constructBRepClass3dSolidClassifier*(s: TopoDS_Shape): BRepClass3dSolidClassifier {.
    constructor, importcpp: "BRepClass3d_SolidClassifier(@)",
    header: "BRepClass3d_SolidClassifier.hxx".}
proc constructBRepClass3dSolidClassifier*(s: TopoDS_Shape; p: GpPnt;
    tol: StandardReal): BRepClass3dSolidClassifier {.constructor,
    importcpp: "BRepClass3d_SolidClassifier(@)",
    header: "BRepClass3d_SolidClassifier.hxx".}
proc perform*(this: var BRepClass3dSolidClassifier; p: GpPnt; tol: StandardReal) {.
    importcpp: "Perform", header: "BRepClass3d_SolidClassifier.hxx".}
proc performInfinitePoint*(this: var BRepClass3dSolidClassifier; tol: StandardReal) {.
    importcpp: "PerformInfinitePoint", header: "BRepClass3d_SolidClassifier.hxx".}
proc destroy*(this: var BRepClass3dSolidClassifier) {.importcpp: "Destroy",
    header: "BRepClass3d_SolidClassifier.hxx".}
proc destroyBRepClass3dSolidClassifier*(this: var BRepClass3dSolidClassifier) {.
    importcpp: "#.~BRepClass3d_SolidClassifier()",
    header: "BRepClass3d_SolidClassifier.hxx".}

