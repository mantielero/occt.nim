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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../IntCurveSurface/IntCurveSurface_SequenceOfPnt,
  ../TColStd/TColStd_SequenceOfInteger, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TopoDS/TopoDS_Face,
  ../Standard/Standard_Address, ../GeomAbs/GeomAbs_SurfaceType,
  ../IntCurveSurface/IntCurveSurface_TransitionOnCurve, ../TopAbs/TopAbs_State

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
  IntCurvesFace_Intersector* {.importcpp: "IntCurvesFace_Intersector",
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


proc constructIntCurvesFace_Intersector*(F: TopoDS_Face; aTol: Standard_Real; aRestr: Standard_Boolean = Standard_True;
    UseBToler: Standard_Boolean = Standard_True): IntCurvesFace_Intersector {.
    constructor, importcpp: "IntCurvesFace_Intersector(@)",
    header: "IntCurvesFace_Intersector.hxx".}
proc Perform*(this: var IntCurvesFace_Intersector; L: gp_Lin; PInf: Standard_Real;
             PSup: Standard_Real) {.importcpp: "Perform",
                                  header: "IntCurvesFace_Intersector.hxx".}
proc Perform*(this: var IntCurvesFace_Intersector; HCu: handle[Adaptor3d_HCurve];
             PInf: Standard_Real; PSup: Standard_Real) {.importcpp: "Perform",
    header: "IntCurvesFace_Intersector.hxx".}
proc SurfaceType*(this: IntCurvesFace_Intersector): GeomAbs_SurfaceType {.
    noSideEffect, importcpp: "SurfaceType", header: "IntCurvesFace_Intersector.hxx".}
proc IsDone*(this: IntCurvesFace_Intersector): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntCurvesFace_Intersector.hxx".}
proc NbPnt*(this: IntCurvesFace_Intersector): Standard_Integer {.noSideEffect,
    importcpp: "NbPnt", header: "IntCurvesFace_Intersector.hxx".}
proc UParameter*(this: IntCurvesFace_Intersector; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "UParameter", header: "IntCurvesFace_Intersector.hxx".}
proc VParameter*(this: IntCurvesFace_Intersector; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "VParameter", header: "IntCurvesFace_Intersector.hxx".}
proc WParameter*(this: IntCurvesFace_Intersector; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "WParameter", header: "IntCurvesFace_Intersector.hxx".}
proc Pnt*(this: IntCurvesFace_Intersector; I: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Pnt", header: "IntCurvesFace_Intersector.hxx".}
proc Transition*(this: IntCurvesFace_Intersector; I: Standard_Integer): IntCurveSurface_TransitionOnCurve {.
    noSideEffect, importcpp: "Transition", header: "IntCurvesFace_Intersector.hxx".}
proc State*(this: IntCurvesFace_Intersector; I: Standard_Integer): TopAbs_State {.
    noSideEffect, importcpp: "State", header: "IntCurvesFace_Intersector.hxx".}
proc IsParallel*(this: IntCurvesFace_Intersector): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "IntCurvesFace_Intersector.hxx".}
proc Face*(this: IntCurvesFace_Intersector): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "IntCurvesFace_Intersector.hxx".}
proc ClassifyUVPoint*(this: IntCurvesFace_Intersector; Puv: gp_Pnt2d): TopAbs_State {.
    noSideEffect, importcpp: "ClassifyUVPoint",
    header: "IntCurvesFace_Intersector.hxx".}
proc Bounding*(this: IntCurvesFace_Intersector): Bnd_Box {.noSideEffect,
    importcpp: "Bounding", header: "IntCurvesFace_Intersector.hxx".}
proc SetUseBoundToler*(this: var IntCurvesFace_Intersector;
                      UseBToler: Standard_Boolean) {.
    importcpp: "SetUseBoundToler", header: "IntCurvesFace_Intersector.hxx".}
proc GetUseBoundToler*(this: IntCurvesFace_Intersector): Standard_Boolean {.
    noSideEffect, importcpp: "GetUseBoundToler",
    header: "IntCurvesFace_Intersector.hxx".}
proc Destroy*(this: var IntCurvesFace_Intersector) {.importcpp: "Destroy",
    header: "IntCurvesFace_Intersector.hxx".}
proc destroyIntCurvesFace_Intersector*(this: var IntCurvesFace_Intersector) {.
    importcpp: "#.~IntCurvesFace_Intersector()",
    header: "IntCurvesFace_Intersector.hxx".}