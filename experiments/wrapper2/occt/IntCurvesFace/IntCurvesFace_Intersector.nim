##  Created on: 1996-05-31
##  Created by: Laurent BUCHARD
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Lin"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of IntCurveSurface_HInter"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Bnd_Box"
type
  IntCurvesFaceIntersector* {.importcpp: "IntCurvesFace_Intersector",
                             header: "IntCurvesFace_Intersector.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Load
                                                                                   ## a
                                                                                   ## Face.
                                                                                   ##
                                                                                   ## !
                                                                                   ##
                                                                                   ## !
                                                                                   ## The
                                                                                   ## Tolerance
                                                                                   ## <Tol>
                                                                                   ## is
                                                                                   ## used
                                                                                   ## to
                                                                                   ## determine
                                                                                   ## if
                                                                                   ## the
                                                                                   ##
                                                                                   ## !
                                                                                   ## first
                                                                                   ## point
                                                                                   ## of
                                                                                   ## the
                                                                                   ## segment
                                                                                   ## is
                                                                                   ## near
                                                                                   ## the
                                                                                   ## face.
                                                                                   ## In
                                                                                   ##
                                                                                   ## !
                                                                                   ## that
                                                                                   ## case,
                                                                                   ## the
                                                                                   ## parameter
                                                                                   ## of
                                                                                   ## the
                                                                                   ## intersection
                                                                                   ## point
                                                                                   ##
                                                                                   ## !
                                                                                   ## on
                                                                                   ## the
                                                                                   ## line
                                                                                   ## can
                                                                                   ## be
                                                                                   ## a
                                                                                   ## negative
                                                                                   ## value
                                                                                   ## (greater
                                                                                   ## than
                                                                                   ## -Tol).
                                                                                   ##
                                                                                   ## !
                                                                                   ## If
                                                                                   ## aRestr
                                                                                   ## =
                                                                                   ## true
                                                                                   ## UV
                                                                                   ## bounding
                                                                                   ## box
                                                                                   ## of
                                                                                   ## face
                                                                                   ## is
                                                                                   ## used
                                                                                   ## to
                                                                                   ## restrict
                                                                                   ##
                                                                                   ## !
                                                                                   ## it's
                                                                                   ## underlined
                                                                                   ## surface,
                                                                                   ##
                                                                                   ## !
                                                                                   ## otherwise
                                                                                   ## surface
                                                                                   ## is
                                                                                   ## not
                                                                                   ## restricted.
                                                                                   ##
                                                                                   ## !
                                                                                   ## If
                                                                                   ## UseBToler
                                                                                   ## =
                                                                                   ## false
                                                                                   ## then
                                                                                   ## the
                                                                                   ## 2d-point
                                                                                   ## of
                                                                                   ## intersection
                                                                                   ## is
                                                                                   ## classified
                                                                                   ## with
                                                                                   ## null-tolerance
                                                                                   ##
                                                                                   ## !
                                                                                   ## (relative
                                                                                   ## to
                                                                                   ## face);
                                                                                   ##
                                                                                   ## !
                                                                                   ## otherwise
                                                                                   ## it's
                                                                                   ## using
                                                                                   ## maximium
                                                                                   ## between
                                                                                   ## input
                                                                                   ## tolerance(aTol)
                                                                                   ## and
                                                                                   ## tolerances
                                                                                   ## of
                                                                                   ## face
                                                                                   ## bounds
                                                                                   ## (edges).
    ## Curve is "parallel" face surface
    ## This case is recognized only for some pairs
    ## of analytical curves and surfaces (plane - line, ...)


proc constructIntCurvesFaceIntersector*(f: TopoDS_Face; aTol: float;
                                       aRestr: bool = true; useBToler: bool = true): IntCurvesFaceIntersector {.
    constructor, importcpp: "IntCurvesFace_Intersector(@)",
    header: "IntCurvesFace_Intersector.hxx".}
proc perform*(this: var IntCurvesFaceIntersector; L: Lin; pInf: float; pSup: float) {.
    importcpp: "Perform", header: "IntCurvesFace_Intersector.hxx".}
proc perform*(this: var IntCurvesFaceIntersector; hCu: Handle[Adaptor3dHCurve];
             pInf: float; pSup: float) {.importcpp: "Perform",
                                     header: "IntCurvesFace_Intersector.hxx".}
proc surfaceType*(this: IntCurvesFaceIntersector): GeomAbsSurfaceType {.
    noSideEffect, importcpp: "SurfaceType", header: "IntCurvesFace_Intersector.hxx".}
proc isDone*(this: IntCurvesFaceIntersector): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntCurvesFace_Intersector.hxx".}
proc nbPnt*(this: IntCurvesFaceIntersector): int {.noSideEffect, importcpp: "NbPnt",
    header: "IntCurvesFace_Intersector.hxx".}
proc uParameter*(this: IntCurvesFaceIntersector; i: int): float {.noSideEffect,
    importcpp: "UParameter", header: "IntCurvesFace_Intersector.hxx".}
proc vParameter*(this: IntCurvesFaceIntersector; i: int): float {.noSideEffect,
    importcpp: "VParameter", header: "IntCurvesFace_Intersector.hxx".}
proc wParameter*(this: IntCurvesFaceIntersector; i: int): float {.noSideEffect,
    importcpp: "WParameter", header: "IntCurvesFace_Intersector.hxx".}
proc pnt*(this: IntCurvesFaceIntersector; i: int): Pnt {.noSideEffect,
    importcpp: "Pnt", header: "IntCurvesFace_Intersector.hxx".}
proc transition*(this: IntCurvesFaceIntersector; i: int): IntCurveSurfaceTransitionOnCurve {.
    noSideEffect, importcpp: "Transition", header: "IntCurvesFace_Intersector.hxx".}
proc state*(this: IntCurvesFaceIntersector; i: int): TopAbsState {.noSideEffect,
    importcpp: "State", header: "IntCurvesFace_Intersector.hxx".}
proc isParallel*(this: IntCurvesFaceIntersector): bool {.noSideEffect,
    importcpp: "IsParallel", header: "IntCurvesFace_Intersector.hxx".}
proc face*(this: IntCurvesFaceIntersector): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "IntCurvesFace_Intersector.hxx".}
proc classifyUVPoint*(this: IntCurvesFaceIntersector; puv: Pnt2d): TopAbsState {.
    noSideEffect, importcpp: "ClassifyUVPoint",
    header: "IntCurvesFace_Intersector.hxx".}
proc bounding*(this: IntCurvesFaceIntersector): BndBox {.noSideEffect,
    importcpp: "Bounding", header: "IntCurvesFace_Intersector.hxx".}
proc setUseBoundToler*(this: var IntCurvesFaceIntersector; useBToler: bool) {.
    importcpp: "SetUseBoundToler", header: "IntCurvesFace_Intersector.hxx".}
proc getUseBoundToler*(this: IntCurvesFaceIntersector): bool {.noSideEffect,
    importcpp: "GetUseBoundToler", header: "IntCurvesFace_Intersector.hxx".}
proc destroy*(this: var IntCurvesFaceIntersector) {.importcpp: "Destroy",
    header: "IntCurvesFace_Intersector.hxx".}
proc destroyIntCurvesFaceIntersector*(this: var IntCurvesFaceIntersector) {.
    importcpp: "#.~IntCurvesFace_Intersector()",
    header: "IntCurvesFace_Intersector.hxx".}
