##  Created on: 1995-06-13
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Handle, ../TColgp/TColgp_SequenceOfPnt,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_OStream, BRepFeat_StatusError

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepTopAdaptor_FClass2d"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of TopoDS_Solid"
discard "forward decl of BRepFeat_Builder"
discard "forward decl of BRepFeat_MakeCylindricalHole"
discard "forward decl of BRepFeat_SplitShape"
discard "forward decl of BRepFeat_Form"
discard "forward decl of BRepFeat_RibSlot"
discard "forward decl of BRepFeat_MakePrism"
discard "forward decl of BRepFeat_MakeRevol"
discard "forward decl of BRepFeat_MakePipe"
discard "forward decl of BRepFeat_Gluer"
discard "forward decl of BRepFeat_MakeDPrism"
discard "forward decl of BRepFeat_MakeLinearForm"
discard "forward decl of BRepFeat_MakeRevolutionForm"
type
  BRepFeat* {.importcpp: "BRepFeat", header: "BRepFeat.hxx", bycopy.} = object


proc SampleEdges*(S: TopoDS_Shape; Pt: var TColgp_SequenceOfPnt) {.
    importcpp: "BRepFeat::SampleEdges(@)", header: "BRepFeat.hxx".}
proc Barycenter*(S: TopoDS_Shape; Pt: var gp_Pnt) {.
    importcpp: "BRepFeat::Barycenter(@)", header: "BRepFeat.hxx".}
proc ParametricBarycenter*(S: TopoDS_Shape; C: handle[Geom_Curve]): Standard_Real {.
    importcpp: "BRepFeat::ParametricBarycenter(@)", header: "BRepFeat.hxx".}
proc ParametricMinMax*(S: TopoDS_Shape; C: handle[Geom_Curve];
                      prmin: var Standard_Real; prmax: var Standard_Real;
                      prbmin: var Standard_Real; prbmax: var Standard_Real;
                      flag: var Standard_Boolean;
                      Ori: Standard_Boolean = Standard_False) {.
    importcpp: "BRepFeat::ParametricMinMax(@)", header: "BRepFeat.hxx".}
proc IsInside*(F1: TopoDS_Face; F2: TopoDS_Face): Standard_Boolean {.
    importcpp: "BRepFeat::IsInside(@)", header: "BRepFeat.hxx".}
proc IsInOut*(FC: BRepTopAdaptor_FClass2d; AC: Geom2dAdaptor_Curve): Standard_Boolean {.
    importcpp: "BRepFeat::IsInOut(@)", header: "BRepFeat.hxx".}
proc FaceUntil*(S: TopoDS_Shape; F: var TopoDS_Face) {.
    importcpp: "BRepFeat::FaceUntil(@)", header: "BRepFeat.hxx".}
proc Tool*(SRef: TopoDS_Shape; Fac: TopoDS_Face; Orf: TopAbs_Orientation): TopoDS_Solid {.
    importcpp: "BRepFeat::Tool(@)", header: "BRepFeat.hxx".}
proc Print*(SE: BRepFeat_StatusError; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "BRepFeat::Print(@)", header: "BRepFeat.hxx".}