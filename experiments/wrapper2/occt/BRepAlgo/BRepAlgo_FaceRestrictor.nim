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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Face, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
type
  BRepAlgo_FaceRestrictor* {.importcpp: "BRepAlgo_FaceRestrictor",
                            header: "BRepAlgo_FaceRestrictor.hxx", bycopy.} = object ##
                                                                                ## !
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


proc constructBRepAlgo_FaceRestrictor*(): BRepAlgo_FaceRestrictor {.constructor,
    importcpp: "BRepAlgo_FaceRestrictor(@)", header: "BRepAlgo_FaceRestrictor.hxx".}
proc Init*(this: var BRepAlgo_FaceRestrictor; F: TopoDS_Face;
          Proj: Standard_Boolean = Standard_False;
          ControlOrientation: Standard_Boolean = Standard_False) {.
    importcpp: "Init", header: "BRepAlgo_FaceRestrictor.hxx".}
proc Add*(this: var BRepAlgo_FaceRestrictor; W: var TopoDS_Wire) {.importcpp: "Add",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc Clear*(this: var BRepAlgo_FaceRestrictor) {.importcpp: "Clear",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc Perform*(this: var BRepAlgo_FaceRestrictor) {.importcpp: "Perform",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc IsDone*(this: BRepAlgo_FaceRestrictor): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepAlgo_FaceRestrictor.hxx".}
proc More*(this: BRepAlgo_FaceRestrictor): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "BRepAlgo_FaceRestrictor.hxx".}
proc Next*(this: var BRepAlgo_FaceRestrictor) {.importcpp: "Next",
    header: "BRepAlgo_FaceRestrictor.hxx".}
proc Current*(this: BRepAlgo_FaceRestrictor): TopoDS_Face {.noSideEffect,
    importcpp: "Current", header: "BRepAlgo_FaceRestrictor.hxx".}