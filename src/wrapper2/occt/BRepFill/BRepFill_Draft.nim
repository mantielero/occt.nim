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
  ../Standard/Standard_Handle, ../gp/gp_Dir, ../Standard/Standard_Real,
  ../TopTools/TopTools_HArray2OfShape, ../TopTools/TopTools_ListOfShape,
  ../TopoDS/TopoDS_Shape, ../TopoDS/TopoDS_Shell, ../TopoDS/TopoDS_Wire,
  ../GeomAbs/GeomAbs_Shape, BRepFill_TransitionStyle, ../Standard/Standard_Boolean

discard "forward decl of BRepFill_DraftLaw"
discard "forward decl of BRepFill_SectionLaw"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Dir"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Shell"
discard "forward decl of Bnd_Box"
type
  BRepFill_Draft* {.importcpp: "BRepFill_Draft", header: "BRepFill_Draft.hxx", bycopy.} = object


proc constructBRepFill_Draft*(Shape: TopoDS_Shape; Dir: gp_Dir; Angle: Standard_Real): BRepFill_Draft {.
    constructor, importcpp: "BRepFill_Draft(@)", header: "BRepFill_Draft.hxx".}
proc SetOptions*(this: var BRepFill_Draft;
                Style: BRepFill_TransitionStyle = BRepFill_Right;
                AngleMin: Standard_Real = 0.01; AngleMax: Standard_Real = 3.0) {.
    importcpp: "SetOptions", header: "BRepFill_Draft.hxx".}
proc SetDraft*(this: var BRepFill_Draft;
              IsInternal: Standard_Boolean = Standard_False) {.
    importcpp: "SetDraft", header: "BRepFill_Draft.hxx".}
proc Perform*(this: var BRepFill_Draft; LengthMax: Standard_Real) {.
    importcpp: "Perform", header: "BRepFill_Draft.hxx".}
proc Perform*(this: var BRepFill_Draft; Surface: handle[Geom_Surface];
             KeepInsideSurface: Standard_Boolean = Standard_True) {.
    importcpp: "Perform", header: "BRepFill_Draft.hxx".}
proc Perform*(this: var BRepFill_Draft; StopShape: TopoDS_Shape;
             KeepOutSide: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "BRepFill_Draft.hxx".}
proc IsDone*(this: BRepFill_Draft): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_Draft.hxx".}
proc Shell*(this: BRepFill_Draft): TopoDS_Shell {.noSideEffect, importcpp: "Shell",
    header: "BRepFill_Draft.hxx".}
proc Generated*(this: var BRepFill_Draft; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepFill_Draft.hxx".}
proc Shape*(this: BRepFill_Draft): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BRepFill_Draft.hxx".}