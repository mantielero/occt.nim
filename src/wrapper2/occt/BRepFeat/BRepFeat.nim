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


proc sampleEdges*(s: TopoDS_Shape; pt: var TColgpSequenceOfPnt) {.
    importcpp: "BRepFeat::SampleEdges(@)", header: "BRepFeat.hxx".}
proc barycenter*(s: TopoDS_Shape; pt: var GpPnt) {.
    importcpp: "BRepFeat::Barycenter(@)", header: "BRepFeat.hxx".}
proc parametricBarycenter*(s: TopoDS_Shape; c: Handle[GeomCurve]): StandardReal {.
    importcpp: "BRepFeat::ParametricBarycenter(@)", header: "BRepFeat.hxx".}
proc parametricMinMax*(s: TopoDS_Shape; c: Handle[GeomCurve];
                      prmin: var StandardReal; prmax: var StandardReal;
                      prbmin: var StandardReal; prbmax: var StandardReal;
                      flag: var StandardBoolean;
                      ori: StandardBoolean = standardFalse) {.
    importcpp: "BRepFeat::ParametricMinMax(@)", header: "BRepFeat.hxx".}
proc isInside*(f1: TopoDS_Face; f2: TopoDS_Face): StandardBoolean {.
    importcpp: "BRepFeat::IsInside(@)", header: "BRepFeat.hxx".}
proc isInOut*(fc: BRepTopAdaptorFClass2d; ac: Geom2dAdaptorCurve): StandardBoolean {.
    importcpp: "BRepFeat::IsInOut(@)", header: "BRepFeat.hxx".}
proc faceUntil*(s: TopoDS_Shape; f: var TopoDS_Face) {.
    importcpp: "BRepFeat::FaceUntil(@)", header: "BRepFeat.hxx".}
proc tool*(sRef: TopoDS_Shape; fac: TopoDS_Face; orf: TopAbsOrientation): TopoDS_Solid {.
    importcpp: "BRepFeat::Tool(@)", header: "BRepFeat.hxx".}
proc print*(se: BRepFeatStatusError; s: var StandardOStream): var StandardOStream {.
    importcpp: "BRepFeat::Print(@)", header: "BRepFeat.hxx".}

