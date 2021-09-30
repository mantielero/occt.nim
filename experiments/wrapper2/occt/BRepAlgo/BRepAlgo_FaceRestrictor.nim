##  Created on: 1995-09-01
##  Created by: Yves FRICAUD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
type
  BRepAlgoFaceRestrictor* {.importcpp: "BRepAlgo_FaceRestrictor",
                           header: "BRepAlgo_FaceRestrictor.hxx", bycopy.} = object ## !
                                                                               ## Evaluate
                                                                               ## all
                                                                               ## the
                                                                               ## faces
                                                                               ## limited
                                                                               ## by
                                                                               ## the
                                                                               ## set
                                                                               ## of
                                                                               ## Wires.


proc `new`*(this: var BRepAlgoFaceRestrictor; theSize: csize_t): pointer {.
    importcpp: "BRepAlgo_FaceRestrictor::operator new",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc `delete`*(this: var BRepAlgoFaceRestrictor; theAddress: pointer) {.
    importcpp: "BRepAlgo_FaceRestrictor::operator delete",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc `new[]`*(this: var BRepAlgoFaceRestrictor; theSize: csize_t): pointer {.
    importcpp: "BRepAlgo_FaceRestrictor::operator new[]",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc `delete[]`*(this: var BRepAlgoFaceRestrictor; theAddress: pointer) {.
    importcpp: "BRepAlgo_FaceRestrictor::operator delete[]",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc `new`*(this: var BRepAlgoFaceRestrictor; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAlgo_FaceRestrictor::operator new",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc `delete`*(this: var BRepAlgoFaceRestrictor; a2: pointer; a3: pointer) {.
    importcpp: "BRepAlgo_FaceRestrictor::operator delete",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc constructBRepAlgoFaceRestrictor*(): BRepAlgoFaceRestrictor {.constructor,
    importcpp: "BRepAlgo_FaceRestrictor(@)", header: "BRepAlgo_FaceRestrictor.hxx".}
proc init*(this: var BRepAlgoFaceRestrictor; f: TopoDS_Face;
          proj: StandardBoolean = false; controlOrientation: StandardBoolean = false) {.
    importcpp: "Init", header: "BRepAlgo_FaceRestrictor.hxx".}
proc add*(this: var BRepAlgoFaceRestrictor; w: var TopoDS_Wire) {.importcpp: "Add",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc clear*(this: var BRepAlgoFaceRestrictor) {.importcpp: "Clear",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc perform*(this: var BRepAlgoFaceRestrictor) {.importcpp: "Perform",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc isDone*(this: BRepAlgoFaceRestrictor): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepAlgo_FaceRestrictor.hxx".}
proc more*(this: BRepAlgoFaceRestrictor): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "BRepAlgo_FaceRestrictor.hxx".}
proc next*(this: var BRepAlgoFaceRestrictor) {.importcpp: "Next",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc current*(this: BRepAlgoFaceRestrictor): TopoDS_Face {.noSideEffect,
    importcpp: "Current", header: "BRepAlgo_FaceRestrictor.hxx".}