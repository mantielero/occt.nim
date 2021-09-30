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

discard "forward decl of BRepClass_FaceExplorer"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepClassFaceClassifier* {.importcpp: "BRepClass_FaceClassifier",
                            header: "BRepClass_FaceClassifier.hxx", bycopy.} = object of BRepClassFClassifier


proc `new`*(this: var BRepClassFaceClassifier; theSize: csize_t): pointer {.
    importcpp: "BRepClass_FaceClassifier::operator new",
    header: "BRepClass_FaceClassifier.hxx".}
proc `delete`*(this: var BRepClassFaceClassifier; theAddress: pointer) {.
    importcpp: "BRepClass_FaceClassifier::operator delete",
    header: "BRepClass_FaceClassifier.hxx".}
proc `new[]`*(this: var BRepClassFaceClassifier; theSize: csize_t): pointer {.
    importcpp: "BRepClass_FaceClassifier::operator new[]",
    header: "BRepClass_FaceClassifier.hxx".}
proc `delete[]`*(this: var BRepClassFaceClassifier; theAddress: pointer) {.
    importcpp: "BRepClass_FaceClassifier::operator delete[]",
    header: "BRepClass_FaceClassifier.hxx".}
proc `new`*(this: var BRepClassFaceClassifier; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepClass_FaceClassifier::operator new",
    header: "BRepClass_FaceClassifier.hxx".}
proc `delete`*(this: var BRepClassFaceClassifier; a2: pointer; a3: pointer) {.
    importcpp: "BRepClass_FaceClassifier::operator delete",
    header: "BRepClass_FaceClassifier.hxx".}
proc constructBRepClassFaceClassifier*(): BRepClassFaceClassifier {.constructor,
    importcpp: "BRepClass_FaceClassifier(@)",
    header: "BRepClass_FaceClassifier.hxx".}
proc constructBRepClassFaceClassifier*(f: var BRepClassFaceExplorer; p: Pnt2d;
                                      tol: StandardReal): BRepClassFaceClassifier {.
    constructor, importcpp: "BRepClass_FaceClassifier(@)",
    header: "BRepClass_FaceClassifier.hxx".}
proc constructBRepClassFaceClassifier*(f: TopoDS_Face; p: Pnt2d; tol: StandardReal): BRepClassFaceClassifier {.
    constructor, importcpp: "BRepClass_FaceClassifier(@)",
    header: "BRepClass_FaceClassifier.hxx".}
proc perform*(this: var BRepClassFaceClassifier; f: TopoDS_Face; p: Pnt2d;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "BRepClass_FaceClassifier.hxx".}
proc constructBRepClassFaceClassifier*(f: TopoDS_Face; p: Pnt; tol: StandardReal): BRepClassFaceClassifier {.
    constructor, importcpp: "BRepClass_FaceClassifier(@)",
    header: "BRepClass_FaceClassifier.hxx".}
proc perform*(this: var BRepClassFaceClassifier; f: TopoDS_Face; p: Pnt;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "BRepClass_FaceClassifier.hxx".}