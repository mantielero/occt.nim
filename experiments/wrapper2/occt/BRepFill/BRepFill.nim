##  Created on: 1994-03-03
##  Created by: Joelle CHAUVET
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of BRepFill_Generator"
discard "forward decl of BRepFill_SectionLaw"
discard "forward decl of BRepFill_ShapeLaw"
discard "forward decl of BRepFill_NSections"
discard "forward decl of BRepFill_Draft"
discard "forward decl of BRepFill_LocationLaw"
discard "forward decl of BRepFill_DraftLaw"
discard "forward decl of BRepFill_Edge3DLaw"
discard "forward decl of BRepFill_EdgeOnSurfLaw"
discard "forward decl of BRepFill_ACRLaw"
discard "forward decl of BRepFill_Pipe"
discard "forward decl of BRepFill_PipeShell"
discard "forward decl of BRepFill_Evolved"
discard "forward decl of BRepFill_Sweep"
discard "forward decl of BRepFill_CompatibleWires"
discard "forward decl of BRepFill_OffsetWire"
discard "forward decl of BRepFill_OffsetAncestors"
discard "forward decl of BRepFill_ApproxSeewing"
discard "forward decl of BRepFill_ComputeCLine"
discard "forward decl of BRepFill_TrimSurfaceTool"
discard "forward decl of BRepFill_TrimEdgeTool"
discard "forward decl of BRepFill_SectionPlacement"
discard "forward decl of BRepFill_Section"
discard "forward decl of BRepFill_TrimShellCorner"
discard "forward decl of BRepFill_CurveConstraint"
discard "forward decl of BRepFill_Filling"
discard "forward decl of BRepFill_FaceAndOrder"
discard "forward decl of BRepFill_EdgeFaceAndOrder"
type
  BRepFill* {.importcpp: "BRepFill", header: "BRepFill.hxx", bycopy.} = object ## ! Computes a ruled surface between two edges.
                                                                       ## ! Computes origins and
                                                                       ## orientation on a closed wire


proc face*(edge1: TopoDS_Edge; edge2: TopoDS_Edge): TopoDS_Face {.
    importcpp: "BRepFill::Face(@)", header: "BRepFill.hxx".}
proc shell*(wire1: TopoDS_Wire; wire2: TopoDS_Wire): TopoDS_Shell {.
    importcpp: "BRepFill::Shell(@)", header: "BRepFill.hxx".}
proc axe*(spine: TopoDS_Shape; profile: TopoDS_Wire; axeProf: var Ax3;
         profOnSpine: var bool; tol: cfloat) {.importcpp: "BRepFill::Axe(@)",
    header: "BRepFill.hxx".}
proc computeACR*(wire: TopoDS_Wire; acr: var TColStdArray1OfReal) {.
    importcpp: "BRepFill::ComputeACR(@)", header: "BRepFill.hxx".}
proc insertACR*(wire: TopoDS_Wire; aCRcuts: TColStdArray1OfReal; prec: cfloat): TopoDS_Wire {.
    importcpp: "BRepFill::InsertACR(@)", header: "BRepFill.hxx".}

























