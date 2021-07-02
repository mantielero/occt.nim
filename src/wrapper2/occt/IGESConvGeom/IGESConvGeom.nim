##  Created on: 1994-09-01
##  Created by: Christian CAILLET
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

discard "forward decl of IGESGeom_SplineCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of IGESGeom_SplineSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of IGESConvGeom_GeomBuilder"
type
  IGESConvGeom* {.importcpp: "IGESConvGeom", header: "IGESConvGeom.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## basic
                                                                                   ## tool
                                                                                   ## to
                                                                                   ## build
                                                                                   ## curves
                                                                                   ## from
                                                                                   ## IGESGeom
                                                                                   ## (arrays
                                                                                   ## of
                                                                                   ## points,
                                                                                   ##
                                                                                   ## !
                                                                                   ## Transformations,
                                                                                   ## evaluation
                                                                                   ## of
                                                                                   ## points
                                                                                   ## in
                                                                                   ## a
                                                                                   ## datum)
                                                                                   ##
                                                                                   ## !
                                                                                   ## Converts
                                                                                   ## a
                                                                                   ## SplineCurve
                                                                                   ## from
                                                                                   ## IGES
                                                                                   ## to
                                                                                   ## a
                                                                                   ## BSplineCurve
                                                                                   ## from
                                                                                   ## CasCade
                                                                                   ##
                                                                                   ## !
                                                                                   ## <epscoef>
                                                                                   ## gives
                                                                                   ## tolerance
                                                                                   ## to
                                                                                   ## consider
                                                                                   ## coefficient
                                                                                   ## to
                                                                                   ## be
                                                                                   ## nul
                                                                                   ##
                                                                                   ## !
                                                                                   ## <epsgeom>
                                                                                   ## gives
                                                                                   ## tolerance
                                                                                   ## to
                                                                                   ## consider
                                                                                   ## poles
                                                                                   ## to
                                                                                   ## be
                                                                                   ## equal
                                                                                   ##
                                                                                   ## !
                                                                                   ## The
                                                                                   ## returned
                                                                                   ## value
                                                                                   ## is
                                                                                   ## a
                                                                                   ## status
                                                                                   ## with
                                                                                   ## these
                                                                                   ## possible
                                                                                   ## values
                                                                                   ## :
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## 0
                                                                                   ## OK,
                                                                                   ## done
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## 1
                                                                                   ## the
                                                                                   ## result
                                                                                   ## is
                                                                                   ## not
                                                                                   ## guaranteed
                                                                                   ## to
                                                                                   ## be
                                                                                   ## C0
                                                                                   ## (with
                                                                                   ## <epsgeom>)
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## 2
                                                                                   ## SplineType
                                                                                   ## not
                                                                                   ## processed
                                                                                   ## (allowed
                                                                                   ## :
                                                                                   ## max
                                                                                   ## 3)
                                                                                   ##
                                                                                   ## !
                                                                                   ## (no
                                                                                   ## result
                                                                                   ## produced)
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## 3
                                                                                   ## error
                                                                                   ## during
                                                                                   ## creation
                                                                                   ## of
                                                                                   ## control
                                                                                   ## points
                                                                                   ##
                                                                                   ## !
                                                                                   ## (no
                                                                                   ## result
                                                                                   ## produced)
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## 4
                                                                                   ## polynomial
                                                                                   ## equation
                                                                                   ## is
                                                                                   ## not
                                                                                   ## correct
                                                                                   ## (no
                                                                                   ## result
                                                                                   ## produced)
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## 5
                                                                                   ## less
                                                                                   ## than
                                                                                   ## one
                                                                                   ## segment
                                                                                   ## (no
                                                                                   ## result
                                                                                   ## produced)


proc splineCurveFromIGES*(igesent: Handle[IGESGeomSplineCurve];
                         epscoef: StandardReal; epsgeom: StandardReal;
                         result: var Handle[GeomBSplineCurve]): StandardInteger {.
    importcpp: "IGESConvGeom::SplineCurveFromIGES(@)", header: "IGESConvGeom.hxx".}
proc increaseCurveContinuity*(curve: Handle[GeomBSplineCurve];
                             epsgeom: StandardReal;
                             continuity: StandardInteger = 2): StandardInteger {.
    importcpp: "IGESConvGeom::IncreaseCurveContinuity(@)",
    header: "IGESConvGeom.hxx".}
proc increaseCurveContinuity*(curve: Handle[Geom2dBSplineCurve];
                             epsgeom: StandardReal;
                             continuity: StandardInteger = 2): StandardInteger {.
    importcpp: "IGESConvGeom::IncreaseCurveContinuity(@)",
    header: "IGESConvGeom.hxx".}
proc splineSurfaceFromIGES*(igesent: Handle[IGESGeomSplineSurface];
                           epscoef: StandardReal; epsgeom: StandardReal;
                           result: var Handle[GeomBSplineSurface]): StandardInteger {.
    importcpp: "IGESConvGeom::SplineSurfaceFromIGES(@)",
    header: "IGESConvGeom.hxx".}
proc increaseSurfaceContinuity*(surface: Handle[GeomBSplineSurface];
                               epsgeom: StandardReal;
                               continuity: StandardInteger = 2): StandardInteger {.
    importcpp: "IGESConvGeom::IncreaseSurfaceContinuity(@)",
    header: "IGESConvGeom.hxx".}

