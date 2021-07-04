##  Created on: 1998-11-13
##  Created by: Jean-Michel BOULCOURT
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../TopoDS/TopoDS_Shape, ../TopoDS/TopoDS_Compound,
  ../TopTools/TopTools_HSequenceOfShape, ../Standard/Standard_Integer,
  ../TopoDS/TopoDS_Wire

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
type
  BRepProj_Projection* {.importcpp: "BRepProj_Projection",
                        header: "BRepProj_Projection.hxx", bycopy.} = object ## ! Makes a
                                                                        ## Cylindrical
                                                                        ## projection of Wire om Shape
                                                                        ## ! Performs section of theShape by theTool
                                                                        ## ! and stores result in the fields.


proc constructBRepProj_Projection*(Wire: TopoDS_Shape; Shape: TopoDS_Shape; D: gp_Dir): BRepProj_Projection {.
    constructor, importcpp: "BRepProj_Projection(@)",
    header: "BRepProj_Projection.hxx".}
proc constructBRepProj_Projection*(Wire: TopoDS_Shape; Shape: TopoDS_Shape; P: gp_Pnt): BRepProj_Projection {.
    constructor, importcpp: "BRepProj_Projection(@)",
    header: "BRepProj_Projection.hxx".}
proc IsDone*(this: BRepProj_Projection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepProj_Projection.hxx".}
proc Init*(this: var BRepProj_Projection) {.importcpp: "Init",
                                        header: "BRepProj_Projection.hxx".}
proc More*(this: BRepProj_Projection): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "BRepProj_Projection.hxx".}
proc Next*(this: var BRepProj_Projection) {.importcpp: "Next",
                                        header: "BRepProj_Projection.hxx".}
proc Current*(this: BRepProj_Projection): TopoDS_Wire {.noSideEffect,
    importcpp: "Current", header: "BRepProj_Projection.hxx".}
proc Shape*(this: BRepProj_Projection): TopoDS_Compound {.noSideEffect,
    importcpp: "Shape", header: "BRepProj_Projection.hxx".}