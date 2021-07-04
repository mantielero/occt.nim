##  Created on: 1993-05-28
##  Created by: Modelistation
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
  ../Standard/Standard_Handle, BRepClass_FClassifier, ../Standard/Standard_Real

discard "forward decl of BRepClass_FaceExplorer"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepClass_FaceClassifier* {.importcpp: "BRepClass_FaceClassifier",
                             header: "BRepClass_FaceClassifier.hxx", bycopy.} = object of BRepClass_FClassifier ##
                                                                                                         ## !
                                                                                                         ## Empty
                                                                                                         ## constructor,
                                                                                                         ## undefined
                                                                                                         ## algorithm.


proc constructBRepClass_FaceClassifier*(): BRepClass_FaceClassifier {.constructor,
    importcpp: "BRepClass_FaceClassifier(@)",
    header: "BRepClass_FaceClassifier.hxx".}
proc constructBRepClass_FaceClassifier*(F: var BRepClass_FaceExplorer; P: gp_Pnt2d;
                                       Tol: Standard_Real): BRepClass_FaceClassifier {.
    constructor, importcpp: "BRepClass_FaceClassifier(@)",
    header: "BRepClass_FaceClassifier.hxx".}
proc constructBRepClass_FaceClassifier*(F: TopoDS_Face; P: gp_Pnt2d;
                                       Tol: Standard_Real): BRepClass_FaceClassifier {.
    constructor, importcpp: "BRepClass_FaceClassifier(@)",
    header: "BRepClass_FaceClassifier.hxx".}
proc Perform*(this: var BRepClass_FaceClassifier; F: TopoDS_Face; P: gp_Pnt2d;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "BRepClass_FaceClassifier.hxx".}
proc constructBRepClass_FaceClassifier*(F: TopoDS_Face; P: gp_Pnt; Tol: Standard_Real): BRepClass_FaceClassifier {.
    constructor, importcpp: "BRepClass_FaceClassifier(@)",
    header: "BRepClass_FaceClassifier.hxx".}
proc Perform*(this: var BRepClass_FaceClassifier; F: TopoDS_Face; P: gp_Pnt;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "BRepClass_FaceClassifier.hxx".}