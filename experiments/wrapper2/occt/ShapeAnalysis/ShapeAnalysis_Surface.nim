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

discard "forward decl of Geom_Surface"
discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of Bnd_Box"
discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of ShapeAnalysis_Surface"
type
  HandleShapeAnalysisSurface* = Handle[ShapeAnalysisSurface]

## ! Complements standard tool Geom_Surface by providing additional
## ! functionality for detection surface singularities, checking
## ! spatial surface closure and computing projections of 3D points
## ! onto a surface.
## !
## ! * The singularities
## ! Each singularity stores the precision with which corresponding
## ! surface iso-line is considered as degenerated.
## ! The number of singularities is determined by specifying precision
## ! and always not greater than 4.
## !
## ! * The spatial closure
## ! The check for spatial closure is performed with given precision
## ! (default value is Precision::Confusion).
## ! If Geom_Surface says that the surface is closed, this class
## ! also says this. Otherwise additional analysis is performed.
## !
## ! * The parameters of 3D point on the surface
## ! The projection of the point is performed with given precision.
## ! This class tries to find a solution taking into account possible
## ! singularities.
## ! Additional method for searching the solution from already built
## ! one is also provided.
## !
## ! This tool is optimised: computes most information only once

type
  ShapeAnalysisSurface* {.importcpp: "ShapeAnalysis_Surface",
                         header: "ShapeAnalysis_Surface.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## analyzer
                                                                                              ## object
                                                                                              ## on
                                                                                              ## the
                                                                                              ## basis
                                                                                              ## of
                                                                                              ## existing
                                                                                              ## surface
                                                                                              ##
                                                                                              ## !
                                                                                              ## Computes
                                                                                              ## singularities
                                                                                              ## on
                                                                                              ## the
                                                                                              ## surface.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Computes
                                                                                              ## the
                                                                                              ## sizes
                                                                                              ## of
                                                                                              ## boundaries
                                                                                              ## or
                                                                                              ## singular
                                                                                              ## ares
                                                                                              ## of
                                                                                              ## the
                                                                                              ##
                                                                                              ## !
                                                                                              ## surface.
                                                                                              ## Then
                                                                                              ## each
                                                                                              ## boundary
                                                                                              ## or
                                                                                              ## area
                                                                                              ## is
                                                                                              ## considered
                                                                                              ## as
                                                                                              ##
                                                                                              ## !
                                                                                              ## degenerated
                                                                                              ## with
                                                                                              ## precision
                                                                                              ## not
                                                                                              ## less
                                                                                              ## than
                                                                                              ## its
                                                                                              ## size.
                                                                                              ##
                                                                                              ## !
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## singularities
                                                                                              ## and
                                                                                              ## corresponding
                                                                                              ## precisions
                                                                                              ## are
                                                                                              ## the
                                                                                              ##
                                                                                              ## !
                                                                                              ## following:
                                                                                              ##
                                                                                              ## !
                                                                                              ## -
                                                                                              ## ConicalSurface
                                                                                              ## -
                                                                                              ## one
                                                                                              ## degenerated
                                                                                              ## point
                                                                                              ## (apex
                                                                                              ## of
                                                                                              ## the
                                                                                              ## cone),
                                                                                              ##
                                                                                              ## !
                                                                                              ## precision
                                                                                              ## is
                                                                                              ## 0.,
                                                                                              ##
                                                                                              ## !
                                                                                              ## -
                                                                                              ## ToroidalSurface
                                                                                              ## -
                                                                                              ## two
                                                                                              ## degenerated
                                                                                              ## points,
                                                                                              ## precision
                                                                                              ## is
                                                                                              ##
                                                                                              ## !
                                                                                              ## Max
                                                                                              ## (0,
                                                                                              ## majorR-minorR),
                                                                                              ##
                                                                                              ## !
                                                                                              ## -
                                                                                              ## SphericalSurface
                                                                                              ## -
                                                                                              ## two
                                                                                              ## degenerated
                                                                                              ## points
                                                                                              ## (poles),
                                                                                              ##
                                                                                              ## !
                                                                                              ## precision
                                                                                              ## is
                                                                                              ## 0.
                                                                                              ##
                                                                                              ## !
                                                                                              ## -
                                                                                              ## Bounded,
                                                                                              ## Surface
                                                                                              ## Of
                                                                                              ## Revolution,
                                                                                              ## Offset
                                                                                              ## -
                                                                                              ## four
                                                                                              ## degenerated
                                                                                              ##
                                                                                              ## !
                                                                                              ## points,
                                                                                              ## precisions
                                                                                              ## are
                                                                                              ## maximum
                                                                                              ## distance
                                                                                              ## between
                                                                                              ## corners
                                                                                              ##
                                                                                              ## !
                                                                                              ## and
                                                                                              ## middle
                                                                                              ## point
                                                                                              ## on
                                                                                              ## the
                                                                                              ## boundary


proc constructShapeAnalysisSurface*(s: Handle[GeomSurface]): ShapeAnalysisSurface {.
    constructor, importcpp: "ShapeAnalysis_Surface(@)",
    header: "ShapeAnalysis_Surface.hxx".}
proc init*(this: var ShapeAnalysisSurface; s: Handle[GeomSurface]) {.
    importcpp: "Init", header: "ShapeAnalysis_Surface.hxx".}
proc init*(this: var ShapeAnalysisSurface; other: Handle[ShapeAnalysisSurface]) {.
    importcpp: "Init", header: "ShapeAnalysis_Surface.hxx".}
proc setDomain*(this: var ShapeAnalysisSurface; u1: float; u2: float; v1: float; v2: float) {.
    importcpp: "SetDomain", header: "ShapeAnalysis_Surface.hxx".}
proc surface*(this: ShapeAnalysisSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "ShapeAnalysis_Surface.hxx".}
proc adaptor3d*(this: var ShapeAnalysisSurface): Handle[GeomAdaptorHSurface] {.
    importcpp: "Adaptor3d", header: "ShapeAnalysis_Surface.hxx".}
proc trueAdaptor3d*(this: ShapeAnalysisSurface): Handle[GeomAdaptorHSurface] {.
    noSideEffect, importcpp: "TrueAdaptor3d", header: "ShapeAnalysis_Surface.hxx".}
proc gap*(this: ShapeAnalysisSurface): float {.noSideEffect, importcpp: "Gap",
    header: "ShapeAnalysis_Surface.hxx".}
proc value*(this: var ShapeAnalysisSurface; u: float; v: float): Pnt {.
    importcpp: "Value", header: "ShapeAnalysis_Surface.hxx".}
proc value*(this: var ShapeAnalysisSurface; p2d: Pnt2d): Pnt {.importcpp: "Value",
    header: "ShapeAnalysis_Surface.hxx".}
proc hasSingularities*(this: var ShapeAnalysisSurface; preci: float): bool {.
    importcpp: "HasSingularities", header: "ShapeAnalysis_Surface.hxx".}
proc nbSingularities*(this: var ShapeAnalysisSurface; preci: float): int {.
    importcpp: "NbSingularities", header: "ShapeAnalysis_Surface.hxx".}
proc singularity*(this: var ShapeAnalysisSurface; num: int; preci: var float;
                 p3d: var Pnt; firstP2d: var Pnt2d; lastP2d: var Pnt2d;
                 firstpar: var float; lastpar: var float; uisodeg: var bool): bool {.
    importcpp: "Singularity", header: "ShapeAnalysis_Surface.hxx".}
proc isDegenerated*(this: var ShapeAnalysisSurface; p3d: Pnt; preci: float): bool {.
    importcpp: "IsDegenerated", header: "ShapeAnalysis_Surface.hxx".}
proc degeneratedValues*(this: var ShapeAnalysisSurface; p3d: Pnt; preci: float;
                       firstP2d: var Pnt2d; lastP2d: var Pnt2d; firstpar: var float;
                       lastpar: var float; forward: bool = true): bool {.
    importcpp: "DegeneratedValues", header: "ShapeAnalysis_Surface.hxx".}
proc projectDegenerated*(this: var ShapeAnalysisSurface; p3d: Pnt; preci: float;
                        neighbour: Pnt2d; result: var Pnt2d): bool {.
    importcpp: "ProjectDegenerated", header: "ShapeAnalysis_Surface.hxx".}
proc projectDegenerated*(this: var ShapeAnalysisSurface; nbrPnt: int;
                        points: TColgpSequenceOfPnt;
                        pnt2d: var TColgpSequenceOfPnt2d; preci: float; direct: bool): bool {.
    importcpp: "ProjectDegenerated", header: "ShapeAnalysis_Surface.hxx".}
proc isDegenerated*(this: var ShapeAnalysisSurface; p2d1: Pnt2d; p2d2: Pnt2d;
                   tol: float; ratio: float): bool {.importcpp: "IsDegenerated",
    header: "ShapeAnalysis_Surface.hxx".}
proc bounds*(this: ShapeAnalysisSurface; ufirst: var float; ulast: var float;
            vfirst: var float; vlast: var float) {.noSideEffect, importcpp: "Bounds",
    header: "ShapeAnalysis_Surface.hxx".}
proc computeBoundIsos*(this: var ShapeAnalysisSurface) {.
    importcpp: "ComputeBoundIsos", header: "ShapeAnalysis_Surface.hxx".}
proc uIso*(this: var ShapeAnalysisSurface; u: float): Handle[GeomCurve] {.
    importcpp: "UIso", header: "ShapeAnalysis_Surface.hxx".}
proc vIso*(this: var ShapeAnalysisSurface; v: float): Handle[GeomCurve] {.
    importcpp: "VIso", header: "ShapeAnalysis_Surface.hxx".}
proc isUClosed*(this: var ShapeAnalysisSurface; preci: float = -1): bool {.
    importcpp: "IsUClosed", header: "ShapeAnalysis_Surface.hxx".}
proc isVClosed*(this: var ShapeAnalysisSurface; preci: float = -1): bool {.
    importcpp: "IsVClosed", header: "ShapeAnalysis_Surface.hxx".}
proc valueOfUV*(this: var ShapeAnalysisSurface; p3d: Pnt; preci: float): Pnt2d {.
    importcpp: "ValueOfUV", header: "ShapeAnalysis_Surface.hxx".}
proc nextValueOfUV*(this: var ShapeAnalysisSurface; p2dPrev: Pnt2d; p3d: Pnt;
                   preci: float; maxpreci: float = -1.0): Pnt2d {.
    importcpp: "NextValueOfUV", header: "ShapeAnalysis_Surface.hxx".}
proc uVFromIso*(this: var ShapeAnalysisSurface; p3d: Pnt; preci: float; u: var float;
               v: var float): float {.importcpp: "UVFromIso",
                                  header: "ShapeAnalysis_Surface.hxx".}
proc uCloseVal*(this: ShapeAnalysisSurface): float {.noSideEffect,
    importcpp: "UCloseVal", header: "ShapeAnalysis_Surface.hxx".}
proc vCloseVal*(this: ShapeAnalysisSurface): float {.noSideEffect,
    importcpp: "VCloseVal", header: "ShapeAnalysis_Surface.hxx".}
proc getBoxUF*(this: var ShapeAnalysisSurface): BndBox {.importcpp: "GetBoxUF",
    header: "ShapeAnalysis_Surface.hxx".}
proc getBoxUL*(this: var ShapeAnalysisSurface): BndBox {.importcpp: "GetBoxUL",
    header: "ShapeAnalysis_Surface.hxx".}
proc getBoxVF*(this: var ShapeAnalysisSurface): BndBox {.importcpp: "GetBoxVF",
    header: "ShapeAnalysis_Surface.hxx".}
proc getBoxVL*(this: var ShapeAnalysisSurface): BndBox {.importcpp: "GetBoxVL",
    header: "ShapeAnalysis_Surface.hxx".}
type
  ShapeAnalysisSurfacebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeAnalysis_Surface::get_type_name(@)",
                            header: "ShapeAnalysis_Surface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeAnalysis_Surface::get_type_descriptor(@)",
    header: "ShapeAnalysis_Surface.hxx".}
proc dynamicType*(this: ShapeAnalysisSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeAnalysis_Surface.hxx".}
