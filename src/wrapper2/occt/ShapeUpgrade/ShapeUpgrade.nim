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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of ShapeUpgrade_Tool"
discard "forward decl of ShapeUpgrade_EdgeDivide"
discard "forward decl of ShapeUpgrade_ClosedEdgeDivide"
discard "forward decl of ShapeUpgrade_WireDivide"
discard "forward decl of ShapeUpgrade_FaceDivide"
discard "forward decl of ShapeUpgrade_ClosedFaceDivide"
discard "forward decl of ShapeUpgrade_FaceDivideArea"
discard "forward decl of ShapeUpgrade_ShapeDivide"
discard "forward decl of ShapeUpgrade_ShapeDivideArea"
discard "forward decl of ShapeUpgrade_ShapeDivideContinuity"
discard "forward decl of ShapeUpgrade_ShapeDivideAngle"
discard "forward decl of ShapeUpgrade_ShapeConvertToBezier"
discard "forward decl of ShapeUpgrade_ShapeDivideClosed"
discard "forward decl of ShapeUpgrade_ShapeDivideClosedEdges"
discard "forward decl of ShapeUpgrade_SplitCurve"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
discard "forward decl of ShapeUpgrade_SplitCurve2dContinuity"
discard "forward decl of ShapeUpgrade_ConvertCurve2dToBezier"
discard "forward decl of ShapeUpgrade_SplitCurve3d"
discard "forward decl of ShapeUpgrade_SplitCurve3dContinuity"
discard "forward decl of ShapeUpgrade_ConvertCurve3dToBezier"
discard "forward decl of ShapeUpgrade_SplitSurface"
discard "forward decl of ShapeUpgrade_SplitSurfaceContinuity"
discard "forward decl of ShapeUpgrade_SplitSurfaceAngle"
discard "forward decl of ShapeUpgrade_ConvertSurfaceToBezierBasis"
discard "forward decl of ShapeUpgrade_SplitSurfaceArea"
discard "forward decl of ShapeUpgrade_ShellSewing"
discard "forward decl of ShapeUpgrade_FixSmallCurves"
discard "forward decl of ShapeUpgrade_FixSmallBezierCurves"
discard "forward decl of ShapeUpgrade_RemoveLocations"
discard "forward decl of ShapeUpgrade_RemoveInternalWires"
discard "forward decl of ShapeUpgrade_UnifySameDomain"
type
  ShapeUpgrade* {.importcpp: "ShapeUpgrade", header: "ShapeUpgrade.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Unifies
                                                                                   ## same
                                                                                   ## domain
                                                                                   ## faces
                                                                                   ## and
                                                                                   ## edges
                                                                                   ## of
                                                                                   ## specified
                                                                                   ## shape


proc c0BSplineToSequenceOfC1BSplineCurve*(bs: Handle[GeomBSplineCurve];
    seqBS: var Handle[TColGeomHSequenceOfBoundedCurve]): StandardBoolean {.
    importcpp: "ShapeUpgrade::C0BSplineToSequenceOfC1BSplineCurve(@)",
    header: "ShapeUpgrade.hxx".}
proc c0BSplineToSequenceOfC1BSplineCurve*(bs: Handle[Geom2dBSplineCurve];
    seqBS: var Handle[TColGeom2dHSequenceOfBoundedCurve]): StandardBoolean {.
    importcpp: "ShapeUpgrade::C0BSplineToSequenceOfC1BSplineCurve(@)",
    header: "ShapeUpgrade.hxx".}

