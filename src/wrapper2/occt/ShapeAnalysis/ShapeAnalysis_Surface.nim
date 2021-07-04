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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Extrema/Extrema_ExtPS,
  ../GeomAdaptor/GeomAdaptor_Surface, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real, ../gp/gp_Pnt,
  ../gp/gp_Pnt2d, ../Bnd/Bnd_Box, ../Standard/Standard_Transient,
  ../TColgp/TColgp_SequenceOfPnt, ../TColgp/TColgp_SequenceOfPnt2d

discard "forward decl of Geom_Surface"
discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of Bnd_Box"
discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of ShapeAnalysis_Surface"
type
  Handle_ShapeAnalysis_Surface* = handle[ShapeAnalysis_Surface]

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
  ShapeAnalysis_Surface* {.importcpp: "ShapeAnalysis_Surface",
                          header: "ShapeAnalysis_Surface.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructShapeAnalysis_Surface*(S: handle[Geom_Surface]): ShapeAnalysis_Surface {.
    constructor, importcpp: "ShapeAnalysis_Surface(@)",
    header: "ShapeAnalysis_Surface.hxx".}
proc Init*(this: var ShapeAnalysis_Surface; S: handle[Geom_Surface]) {.
    importcpp: "Init", header: "ShapeAnalysis_Surface.hxx".}
proc Init*(this: var ShapeAnalysis_Surface; other: handle[ShapeAnalysis_Surface]) {.
    importcpp: "Init", header: "ShapeAnalysis_Surface.hxx".}
proc SetDomain*(this: var ShapeAnalysis_Surface; U1: Standard_Real; U2: Standard_Real;
               V1: Standard_Real; V2: Standard_Real) {.importcpp: "SetDomain",
    header: "ShapeAnalysis_Surface.hxx".}
proc Surface*(this: ShapeAnalysis_Surface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "ShapeAnalysis_Surface.hxx".}
proc Adaptor3d*(this: var ShapeAnalysis_Surface): handle[GeomAdaptor_HSurface] {.
    importcpp: "Adaptor3d", header: "ShapeAnalysis_Surface.hxx".}
proc TrueAdaptor3d*(this: ShapeAnalysis_Surface): handle[GeomAdaptor_HSurface] {.
    noSideEffect, importcpp: "TrueAdaptor3d", header: "ShapeAnalysis_Surface.hxx".}
proc Gap*(this: ShapeAnalysis_Surface): Standard_Real {.noSideEffect,
    importcpp: "Gap", header: "ShapeAnalysis_Surface.hxx".}
proc Value*(this: var ShapeAnalysis_Surface; u: Standard_Real; v: Standard_Real): gp_Pnt {.
    importcpp: "Value", header: "ShapeAnalysis_Surface.hxx".}
proc Value*(this: var ShapeAnalysis_Surface; p2d: gp_Pnt2d): gp_Pnt {.
    importcpp: "Value", header: "ShapeAnalysis_Surface.hxx".}
proc HasSingularities*(this: var ShapeAnalysis_Surface; preci: Standard_Real): Standard_Boolean {.
    importcpp: "HasSingularities", header: "ShapeAnalysis_Surface.hxx".}
proc NbSingularities*(this: var ShapeAnalysis_Surface; preci: Standard_Real): Standard_Integer {.
    importcpp: "NbSingularities", header: "ShapeAnalysis_Surface.hxx".}
proc Singularity*(this: var ShapeAnalysis_Surface; num: Standard_Integer;
                 preci: var Standard_Real; P3d: var gp_Pnt; firstP2d: var gp_Pnt2d;
                 lastP2d: var gp_Pnt2d; firstpar: var Standard_Real;
                 lastpar: var Standard_Real; uisodeg: var Standard_Boolean): Standard_Boolean {.
    importcpp: "Singularity", header: "ShapeAnalysis_Surface.hxx".}
proc IsDegenerated*(this: var ShapeAnalysis_Surface; P3d: gp_Pnt; preci: Standard_Real): Standard_Boolean {.
    importcpp: "IsDegenerated", header: "ShapeAnalysis_Surface.hxx".}
proc DegeneratedValues*(this: var ShapeAnalysis_Surface; P3d: gp_Pnt;
                       preci: Standard_Real; firstP2d: var gp_Pnt2d;
                       lastP2d: var gp_Pnt2d; firstpar: var Standard_Real;
                       lastpar: var Standard_Real;
                       forward: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "DegeneratedValues", header: "ShapeAnalysis_Surface.hxx".}
proc ProjectDegenerated*(this: var ShapeAnalysis_Surface; P3d: gp_Pnt;
                        preci: Standard_Real; neighbour: gp_Pnt2d;
                        result: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "ProjectDegenerated", header: "ShapeAnalysis_Surface.hxx".}
proc ProjectDegenerated*(this: var ShapeAnalysis_Surface; nbrPnt: Standard_Integer;
                        points: TColgp_SequenceOfPnt;
                        pnt2d: var TColgp_SequenceOfPnt2d; preci: Standard_Real;
                        direct: Standard_Boolean): Standard_Boolean {.
    importcpp: "ProjectDegenerated", header: "ShapeAnalysis_Surface.hxx".}
proc IsDegenerated*(this: var ShapeAnalysis_Surface; p2d1: gp_Pnt2d; p2d2: gp_Pnt2d;
                   tol: Standard_Real; ratio: Standard_Real): Standard_Boolean {.
    importcpp: "IsDegenerated", header: "ShapeAnalysis_Surface.hxx".}
proc Bounds*(this: ShapeAnalysis_Surface; ufirst: var Standard_Real;
            ulast: var Standard_Real; vfirst: var Standard_Real;
            vlast: var Standard_Real) {.noSideEffect, importcpp: "Bounds",
                                     header: "ShapeAnalysis_Surface.hxx".}
proc ComputeBoundIsos*(this: var ShapeAnalysis_Surface) {.
    importcpp: "ComputeBoundIsos", header: "ShapeAnalysis_Surface.hxx".}
proc UIso*(this: var ShapeAnalysis_Surface; U: Standard_Real): handle[Geom_Curve] {.
    importcpp: "UIso", header: "ShapeAnalysis_Surface.hxx".}
proc VIso*(this: var ShapeAnalysis_Surface; V: Standard_Real): handle[Geom_Curve] {.
    importcpp: "VIso", header: "ShapeAnalysis_Surface.hxx".}
proc IsUClosed*(this: var ShapeAnalysis_Surface; preci: Standard_Real = -1): Standard_Boolean {.
    importcpp: "IsUClosed", header: "ShapeAnalysis_Surface.hxx".}
proc IsVClosed*(this: var ShapeAnalysis_Surface; preci: Standard_Real = -1): Standard_Boolean {.
    importcpp: "IsVClosed", header: "ShapeAnalysis_Surface.hxx".}
proc ValueOfUV*(this: var ShapeAnalysis_Surface; P3D: gp_Pnt; preci: Standard_Real): gp_Pnt2d {.
    importcpp: "ValueOfUV", header: "ShapeAnalysis_Surface.hxx".}
proc NextValueOfUV*(this: var ShapeAnalysis_Surface; p2dPrev: gp_Pnt2d; P3D: gp_Pnt;
                   preci: Standard_Real; maxpreci: Standard_Real = -1.0): gp_Pnt2d {.
    importcpp: "NextValueOfUV", header: "ShapeAnalysis_Surface.hxx".}
proc UVFromIso*(this: var ShapeAnalysis_Surface; P3D: gp_Pnt; preci: Standard_Real;
               U: var Standard_Real; V: var Standard_Real): Standard_Real {.
    importcpp: "UVFromIso", header: "ShapeAnalysis_Surface.hxx".}
proc UCloseVal*(this: ShapeAnalysis_Surface): Standard_Real {.noSideEffect,
    importcpp: "UCloseVal", header: "ShapeAnalysis_Surface.hxx".}
proc VCloseVal*(this: ShapeAnalysis_Surface): Standard_Real {.noSideEffect,
    importcpp: "VCloseVal", header: "ShapeAnalysis_Surface.hxx".}
proc GetBoxUF*(this: var ShapeAnalysis_Surface): Bnd_Box {.importcpp: "GetBoxUF",
    header: "ShapeAnalysis_Surface.hxx".}
proc GetBoxUL*(this: var ShapeAnalysis_Surface): Bnd_Box {.importcpp: "GetBoxUL",
    header: "ShapeAnalysis_Surface.hxx".}
proc GetBoxVF*(this: var ShapeAnalysis_Surface): Bnd_Box {.importcpp: "GetBoxVF",
    header: "ShapeAnalysis_Surface.hxx".}
proc GetBoxVL*(this: var ShapeAnalysis_Surface): Bnd_Box {.importcpp: "GetBoxVL",
    header: "ShapeAnalysis_Surface.hxx".}
type
  ShapeAnalysis_Surfacebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeAnalysis_Surface::get_type_name(@)",
                              header: "ShapeAnalysis_Surface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeAnalysis_Surface::get_type_descriptor(@)",
    header: "ShapeAnalysis_Surface.hxx".}
proc DynamicType*(this: ShapeAnalysis_Surface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeAnalysis_Surface.hxx".}