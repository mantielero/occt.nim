##  Created on: 1998-06-03
##  Created by: data exchange team
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of ShapeAnalysis_Geom"
discard "forward decl of ShapeAnalysis_Curve"
discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of ShapeAnalysis_Edge"
discard "forward decl of ShapeAnalysis_Wire"
discard "forward decl of ShapeAnalysis_WireOrder"
discard "forward decl of ShapeAnalysis_WireVertex"
discard "forward decl of ShapeAnalysis_CheckSmallFace"
discard "forward decl of ShapeAnalysis_Shell"
discard "forward decl of ShapeAnalysis_ShapeTolerance"
discard "forward decl of ShapeAnalysis_ShapeContents"
discard "forward decl of ShapeAnalysis_FreeBounds"
discard "forward decl of ShapeAnalysis_FreeBoundData"
discard "forward decl of ShapeAnalysis_FreeBoundsProperties"
discard "forward decl of ShapeAnalysis_TransferParameters"
discard "forward decl of ShapeAnalysis_TransferParametersProj"
type
  ShapeAnalysis* {.importcpp: "ShapeAnalysis", header: "ShapeAnalysis.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## outer
                                                                                      ## wire
                                                                                      ## on
                                                                                      ## the
                                                                                      ## face
                                                                                      ## <Face>.
                                                                                      ##
                                                                                      ## !
                                                                                      ## This
                                                                                      ## is
                                                                                      ## replacement
                                                                                      ## of
                                                                                      ## the
                                                                                      ## method
                                                                                      ## BRepTools::OuterWire
                                                                                      ##
                                                                                      ## !
                                                                                      ## until
                                                                                      ## it
                                                                                      ## works
                                                                                      ## badly.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## first
                                                                                      ## wire
                                                                                      ## oriented
                                                                                      ## as
                                                                                      ## outer
                                                                                      ## according
                                                                                      ## to
                                                                                      ##
                                                                                      ## !
                                                                                      ## FClass2d_Classifier.
                                                                                      ## If
                                                                                      ## none,
                                                                                      ## last
                                                                                      ## wire
                                                                                      ## is
                                                                                      ## returned.


proc outerWire*(face: TopoDS_Face): TopoDS_Wire {.
    importcpp: "ShapeAnalysis::OuterWire(@)", header: "ShapeAnalysis.hxx".}
proc totCross2D*(sewd: Handle[ShapeExtendWireData]; aFace: TopoDS_Face): StandardReal {.
    importcpp: "ShapeAnalysis::TotCross2D(@)", header: "ShapeAnalysis.hxx".}
proc contourArea*(theWire: TopoDS_Wire): StandardReal {.
    importcpp: "ShapeAnalysis::ContourArea(@)", header: "ShapeAnalysis.hxx".}
proc isOuterBound*(face: TopoDS_Face): StandardBoolean {.
    importcpp: "ShapeAnalysis::IsOuterBound(@)", header: "ShapeAnalysis.hxx".}
proc adjustByPeriod*(val: StandardReal; toVal: StandardReal; period: StandardReal): StandardReal {.
    importcpp: "ShapeAnalysis::AdjustByPeriod(@)", header: "ShapeAnalysis.hxx".}
proc adjustToPeriod*(val: StandardReal; valMin: StandardReal; valMax: StandardReal): StandardReal {.
    importcpp: "ShapeAnalysis::AdjustToPeriod(@)", header: "ShapeAnalysis.hxx".}
proc findBounds*(shape: TopoDS_Shape; v1: var TopoDS_Vertex; v2: var TopoDS_Vertex) {.
    importcpp: "ShapeAnalysis::FindBounds(@)", header: "ShapeAnalysis.hxx".}
proc getFaceUVBounds*(f: TopoDS_Face; umin: var StandardReal; umax: var StandardReal;
                     vmin: var StandardReal; vmax: var StandardReal) {.
    importcpp: "ShapeAnalysis::GetFaceUVBounds(@)", header: "ShapeAnalysis.hxx".}

