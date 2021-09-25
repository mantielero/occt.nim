##  Created on: 1993-06-11
##  Created by: Martine LANGLOIS
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Geom_Axis1Placement"
discard "forward decl of Geom_Axis2Placement"
discard "forward decl of Geom_BoundedCurve"
discard "forward decl of Geom_BoundedSurface"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_CartesianPoint"
discard "forward decl of Geom_Circle"
discard "forward decl of Geom_Conic"
discard "forward decl of Geom_ConicalSurface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_CylindricalSurface"
discard "forward decl of Geom_Direction"
discard "forward decl of Geom_ElementarySurface"
discard "forward decl of Geom_Ellipse"
discard "forward decl of Geom_Hyperbola"
discard "forward decl of Geom_Line"
discard "forward decl of Geom_Parabola"
discard "forward decl of Geom_Plane"
discard "forward decl of Geom_RectangularTrimmedSurface"
discard "forward decl of Geom_SphericalSurface"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_SurfaceOfLinearExtrusion"
discard "forward decl of Geom_SurfaceOfRevolution"
discard "forward decl of Geom_SweptSurface"
discard "forward decl of Geom_ToroidalSurface"
discard "forward decl of Geom_TrimmedCurve"
discard "forward decl of Geom_VectorWithMagnitude"
discard "forward decl of Geom2d_AxisPlacement"
discard "forward decl of Geom2d_BoundedCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_CartesianPoint"
discard "forward decl of Geom2d_Circle"
discard "forward decl of Geom2d_Conic"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom2d_Direction"
discard "forward decl of Geom2d_Ellipse"
discard "forward decl of Geom2d_Hyperbola"
discard "forward decl of Geom2d_Line"
discard "forward decl of Geom2d_Parabola"
discard "forward decl of Geom2d_VectorWithMagnitude"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Trsf2d"
discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of StepGeom_Axis2Placement2d"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepGeom_BoundedCurve"
discard "forward decl of StepGeom_BoundedSurface"
discard "forward decl of StepGeom_BSplineCurve"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Direction"
discard "forward decl of StepGeom_BSplineSurface"
discard "forward decl of StepGeom_Circle"
discard "forward decl of StepGeom_Conic"
discard "forward decl of StepGeom_ConicalSurface"
discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_CylindricalSurface"
discard "forward decl of StepGeom_ElementarySurface"
discard "forward decl of StepGeom_Ellipse"
discard "forward decl of StepGeom_Hyperbola"
discard "forward decl of StepGeom_Line"
discard "forward decl of StepGeom_Parabola"
discard "forward decl of StepGeom_Plane"
discard "forward decl of StepGeom_Polyline"
discard "forward decl of StepGeom_RectangularTrimmedSurface"
discard "forward decl of StepGeom_SphericalSurface"
discard "forward decl of StepGeom_Surface"
discard "forward decl of StepGeom_SurfaceOfLinearExtrusion"
discard "forward decl of StepGeom_SurfaceOfRevolution"
discard "forward decl of StepGeom_SweptSurface"
discard "forward decl of StepGeom_ToroidalSurface"
discard "forward decl of StepGeom_CartesianTransformationOperator2d"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
discard "forward decl of StepGeom_TrimmedCurve"
discard "forward decl of StepGeom_Vector"
type
  StepToGeom* {.importcpp: "StepToGeom", header: "StepToGeom.hxx", bycopy.} = object


proc makeAxis1Placement*(sa: Handle[StepGeomAxis1Placement]): Handle[
    GeomAxis1Placement] {.importcpp: "StepToGeom::MakeAxis1Placement(@)",
                         header: "StepToGeom.hxx".}
proc makeAxis2Placement*(sa: Handle[StepGeomAxis2Placement3d]): Handle[
    GeomAxis2Placement] {.importcpp: "StepToGeom::MakeAxis2Placement(@)",
                         header: "StepToGeom.hxx".}
proc makeAxisPlacement*(sa: Handle[StepGeomAxis2Placement2d]): Handle[
    Geom2dAxisPlacement] {.importcpp: "StepToGeom::MakeAxisPlacement(@)",
                          header: "StepToGeom.hxx".}
proc makeBoundedCurve*(sc: Handle[StepGeomBoundedCurve]): Handle[GeomBoundedCurve] {.
    importcpp: "StepToGeom::MakeBoundedCurve(@)", header: "StepToGeom.hxx".}
proc makeBoundedCurve2d*(sc: Handle[StepGeomBoundedCurve]): Handle[
    Geom2dBoundedCurve] {.importcpp: "StepToGeom::MakeBoundedCurve2d(@)",
                         header: "StepToGeom.hxx".}
proc makeBoundedSurface*(ss: Handle[StepGeomBoundedSurface]): Handle[
    GeomBoundedSurface] {.importcpp: "StepToGeom::MakeBoundedSurface(@)",
                         header: "StepToGeom.hxx".}
proc makeBSplineCurve*(sc: Handle[StepGeomBSplineCurve]): Handle[GeomBSplineCurve] {.
    importcpp: "StepToGeom::MakeBSplineCurve(@)", header: "StepToGeom.hxx".}
proc makeBSplineCurve2d*(sc: Handle[StepGeomBSplineCurve]): Handle[
    Geom2dBSplineCurve] {.importcpp: "StepToGeom::MakeBSplineCurve2d(@)",
                         header: "StepToGeom.hxx".}
proc makeBSplineSurface*(ss: Handle[StepGeomBSplineSurface]): Handle[
    GeomBSplineSurface] {.importcpp: "StepToGeom::MakeBSplineSurface(@)",
                         header: "StepToGeom.hxx".}
proc makeCartesianPoint*(sp: Handle[StepGeomCartesianPoint]): Handle[
    GeomCartesianPoint] {.importcpp: "StepToGeom::MakeCartesianPoint(@)",
                         header: "StepToGeom.hxx".}
proc makeCartesianPoint2d*(sp: Handle[StepGeomCartesianPoint]): Handle[
    Geom2dCartesianPoint] {.importcpp: "StepToGeom::MakeCartesianPoint2d(@)",
                           header: "StepToGeom.hxx".}
proc makeCircle*(sc: Handle[StepGeomCircle]): Handle[GeomCircle] {.
    importcpp: "StepToGeom::MakeCircle(@)", header: "StepToGeom.hxx".}
proc makeCircle2d*(sc: Handle[StepGeomCircle]): Handle[Geom2dCircle] {.
    importcpp: "StepToGeom::MakeCircle2d(@)", header: "StepToGeom.hxx".}
proc makeConic*(sc: Handle[StepGeomConic]): Handle[GeomConic] {.
    importcpp: "StepToGeom::MakeConic(@)", header: "StepToGeom.hxx".}
proc makeConic2d*(sc: Handle[StepGeomConic]): Handle[Geom2dConic] {.
    importcpp: "StepToGeom::MakeConic2d(@)", header: "StepToGeom.hxx".}
proc makeConicalSurface*(ss: Handle[StepGeomConicalSurface]): Handle[
    GeomConicalSurface] {.importcpp: "StepToGeom::MakeConicalSurface(@)",
                         header: "StepToGeom.hxx".}
proc makeCurve*(sc: Handle[StepGeomCurve]): Handle[GeomCurve] {.
    importcpp: "StepToGeom::MakeCurve(@)", header: "StepToGeom.hxx".}
proc makeCurve2d*(sc: Handle[StepGeomCurve]): Handle[Geom2dCurve] {.
    importcpp: "StepToGeom::MakeCurve2d(@)", header: "StepToGeom.hxx".}
proc makeCylindricalSurface*(ss: Handle[StepGeomCylindricalSurface]): Handle[
    GeomCylindricalSurface] {.importcpp: "StepToGeom::MakeCylindricalSurface(@)",
                             header: "StepToGeom.hxx".}
proc makeDirection*(sd: Handle[StepGeomDirection]): Handle[GeomDirection] {.
    importcpp: "StepToGeom::MakeDirection(@)", header: "StepToGeom.hxx".}
proc makeDirection2d*(sd: Handle[StepGeomDirection]): Handle[Geom2dDirection] {.
    importcpp: "StepToGeom::MakeDirection2d(@)", header: "StepToGeom.hxx".}
proc makeElementarySurface*(ss: Handle[StepGeomElementarySurface]): Handle[
    GeomElementarySurface] {.importcpp: "StepToGeom::MakeElementarySurface(@)",
                            header: "StepToGeom.hxx".}
proc makeEllipse*(sc: Handle[StepGeomEllipse]): Handle[GeomEllipse] {.
    importcpp: "StepToGeom::MakeEllipse(@)", header: "StepToGeom.hxx".}
proc makeEllipse2d*(sc: Handle[StepGeomEllipse]): Handle[Geom2dEllipse] {.
    importcpp: "StepToGeom::MakeEllipse2d(@)", header: "StepToGeom.hxx".}
proc makeHyperbola*(sc: Handle[StepGeomHyperbola]): Handle[GeomHyperbola] {.
    importcpp: "StepToGeom::MakeHyperbola(@)", header: "StepToGeom.hxx".}
proc makeHyperbola2d*(sc: Handle[StepGeomHyperbola]): Handle[Geom2dHyperbola] {.
    importcpp: "StepToGeom::MakeHyperbola2d(@)", header: "StepToGeom.hxx".}
proc makeLine*(sc: Handle[StepGeomLine]): Handle[GeomLine] {.
    importcpp: "StepToGeom::MakeLine(@)", header: "StepToGeom.hxx".}
proc makeLine2d*(sc: Handle[StepGeomLine]): Handle[Geom2dLine] {.
    importcpp: "StepToGeom::MakeLine2d(@)", header: "StepToGeom.hxx".}
proc makeParabola*(sc: Handle[StepGeomParabola]): Handle[GeomParabola] {.
    importcpp: "StepToGeom::MakeParabola(@)", header: "StepToGeom.hxx".}
proc makeParabola2d*(sc: Handle[StepGeomParabola]): Handle[Geom2dParabola] {.
    importcpp: "StepToGeom::MakeParabola2d(@)", header: "StepToGeom.hxx".}
proc makePlane*(sp: Handle[StepGeomPlane]): Handle[GeomPlane] {.
    importcpp: "StepToGeom::MakePlane(@)", header: "StepToGeom.hxx".}
proc makePolyline*(spl: Handle[StepGeomPolyline]): Handle[GeomBSplineCurve] {.
    importcpp: "StepToGeom::MakePolyline(@)", header: "StepToGeom.hxx".}
proc makePolyline2d*(spl: Handle[StepGeomPolyline]): Handle[Geom2dBSplineCurve] {.
    importcpp: "StepToGeom::MakePolyline2d(@)", header: "StepToGeom.hxx".}
proc makeRectangularTrimmedSurface*(ss: Handle[StepGeomRectangularTrimmedSurface]): Handle[
    GeomRectangularTrimmedSurface] {.importcpp: "StepToGeom::MakeRectangularTrimmedSurface(@)",
                                    header: "StepToGeom.hxx".}
proc makeSphericalSurface*(ss: Handle[StepGeomSphericalSurface]): Handle[
    GeomSphericalSurface] {.importcpp: "StepToGeom::MakeSphericalSurface(@)",
                           header: "StepToGeom.hxx".}
proc makeSurface*(ss: Handle[StepGeomSurface]): Handle[GeomSurface] {.
    importcpp: "StepToGeom::MakeSurface(@)", header: "StepToGeom.hxx".}
proc makeSurfaceOfLinearExtrusion*(ss: Handle[StepGeomSurfaceOfLinearExtrusion]): Handle[
    GeomSurfaceOfLinearExtrusion] {.importcpp: "StepToGeom::MakeSurfaceOfLinearExtrusion(@)",
                                   header: "StepToGeom.hxx".}
proc makeSurfaceOfRevolution*(ss: Handle[StepGeomSurfaceOfRevolution]): Handle[
    GeomSurfaceOfRevolution] {.importcpp: "StepToGeom::MakeSurfaceOfRevolution(@)",
                              header: "StepToGeom.hxx".}
proc makeSweptSurface*(ss: Handle[StepGeomSweptSurface]): Handle[GeomSweptSurface] {.
    importcpp: "StepToGeom::MakeSweptSurface(@)", header: "StepToGeom.hxx".}
proc makeToroidalSurface*(ss: Handle[StepGeomToroidalSurface]): Handle[
    GeomToroidalSurface] {.importcpp: "StepToGeom::MakeToroidalSurface(@)",
                          header: "StepToGeom.hxx".}
proc makeTransformation2d*(scto: Handle[StepGeomCartesianTransformationOperator2d];
                          ct: var Trsf2d): bool {.
    importcpp: "StepToGeom::MakeTransformation2d(@)", header: "StepToGeom.hxx".}
proc makeTransformation3d*(scto: Handle[StepGeomCartesianTransformationOperator3d];
                          ct: var Trsf): bool {.
    importcpp: "StepToGeom::MakeTransformation3d(@)", header: "StepToGeom.hxx".}
proc makeTrimmedCurve*(sc: Handle[StepGeomTrimmedCurve]): Handle[GeomTrimmedCurve] {.
    importcpp: "StepToGeom::MakeTrimmedCurve(@)", header: "StepToGeom.hxx".}
proc makeTrimmedCurve2d*(sc: Handle[StepGeomTrimmedCurve]): Handle[
    Geom2dBSplineCurve] {.importcpp: "StepToGeom::MakeTrimmedCurve2d(@)",
                         header: "StepToGeom.hxx".}
proc makeVectorWithMagnitude*(sv: Handle[StepGeomVector]): Handle[
    GeomVectorWithMagnitude] {.importcpp: "StepToGeom::MakeVectorWithMagnitude(@)",
                              header: "StepToGeom.hxx".}
proc makeVectorWithMagnitude2d*(sv: Handle[StepGeomVector]): Handle[
    Geom2dVectorWithMagnitude] {.importcpp: "StepToGeom::MakeVectorWithMagnitude2d(@)",
                                header: "StepToGeom.hxx".}
