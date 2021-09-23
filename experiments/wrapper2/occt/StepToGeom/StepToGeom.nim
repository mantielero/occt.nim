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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle

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


proc MakeAxis1Placement*(SA: handle[StepGeom_Axis1Placement]): handle[
    Geom_Axis1Placement] {.importcpp: "StepToGeom::MakeAxis1Placement(@)",
                          header: "StepToGeom.hxx".}
proc MakeAxis2Placement*(SA: handle[StepGeom_Axis2Placement3d]): handle[
    Geom_Axis2Placement] {.importcpp: "StepToGeom::MakeAxis2Placement(@)",
                          header: "StepToGeom.hxx".}
proc MakeAxisPlacement*(SA: handle[StepGeom_Axis2Placement2d]): handle[
    Geom2d_AxisPlacement] {.importcpp: "StepToGeom::MakeAxisPlacement(@)",
                           header: "StepToGeom.hxx".}
proc MakeBoundedCurve*(SC: handle[StepGeom_BoundedCurve]): handle[Geom_BoundedCurve] {.
    importcpp: "StepToGeom::MakeBoundedCurve(@)", header: "StepToGeom.hxx".}
proc MakeBoundedCurve2d*(SC: handle[StepGeom_BoundedCurve]): handle[
    Geom2d_BoundedCurve] {.importcpp: "StepToGeom::MakeBoundedCurve2d(@)",
                          header: "StepToGeom.hxx".}
proc MakeBoundedSurface*(SS: handle[StepGeom_BoundedSurface]): handle[
    Geom_BoundedSurface] {.importcpp: "StepToGeom::MakeBoundedSurface(@)",
                          header: "StepToGeom.hxx".}
proc MakeBSplineCurve*(SC: handle[StepGeom_BSplineCurve]): handle[Geom_BSplineCurve] {.
    importcpp: "StepToGeom::MakeBSplineCurve(@)", header: "StepToGeom.hxx".}
proc MakeBSplineCurve2d*(SC: handle[StepGeom_BSplineCurve]): handle[
    Geom2d_BSplineCurve] {.importcpp: "StepToGeom::MakeBSplineCurve2d(@)",
                          header: "StepToGeom.hxx".}
proc MakeBSplineSurface*(SS: handle[StepGeom_BSplineSurface]): handle[
    Geom_BSplineSurface] {.importcpp: "StepToGeom::MakeBSplineSurface(@)",
                          header: "StepToGeom.hxx".}
proc MakeCartesianPoint*(SP: handle[StepGeom_CartesianPoint]): handle[
    Geom_CartesianPoint] {.importcpp: "StepToGeom::MakeCartesianPoint(@)",
                          header: "StepToGeom.hxx".}
proc MakeCartesianPoint2d*(SP: handle[StepGeom_CartesianPoint]): handle[
    Geom2d_CartesianPoint] {.importcpp: "StepToGeom::MakeCartesianPoint2d(@)",
                            header: "StepToGeom.hxx".}
proc MakeCircle*(SC: handle[StepGeom_Circle]): handle[Geom_Circle] {.
    importcpp: "StepToGeom::MakeCircle(@)", header: "StepToGeom.hxx".}
proc MakeCircle2d*(SC: handle[StepGeom_Circle]): handle[Geom2d_Circle] {.
    importcpp: "StepToGeom::MakeCircle2d(@)", header: "StepToGeom.hxx".}
proc MakeConic*(SC: handle[StepGeom_Conic]): handle[Geom_Conic] {.
    importcpp: "StepToGeom::MakeConic(@)", header: "StepToGeom.hxx".}
proc MakeConic2d*(SC: handle[StepGeom_Conic]): handle[Geom2d_Conic] {.
    importcpp: "StepToGeom::MakeConic2d(@)", header: "StepToGeom.hxx".}
proc MakeConicalSurface*(SS: handle[StepGeom_ConicalSurface]): handle[
    Geom_ConicalSurface] {.importcpp: "StepToGeom::MakeConicalSurface(@)",
                          header: "StepToGeom.hxx".}
proc MakeCurve*(SC: handle[StepGeom_Curve]): handle[Geom_Curve] {.
    importcpp: "StepToGeom::MakeCurve(@)", header: "StepToGeom.hxx".}
proc MakeCurve2d*(SC: handle[StepGeom_Curve]): handle[Geom2d_Curve] {.
    importcpp: "StepToGeom::MakeCurve2d(@)", header: "StepToGeom.hxx".}
proc MakeCylindricalSurface*(SS: handle[StepGeom_CylindricalSurface]): handle[
    Geom_CylindricalSurface] {.importcpp: "StepToGeom::MakeCylindricalSurface(@)",
                              header: "StepToGeom.hxx".}
proc MakeDirection*(SD: handle[StepGeom_Direction]): handle[Geom_Direction] {.
    importcpp: "StepToGeom::MakeDirection(@)", header: "StepToGeom.hxx".}
proc MakeDirection2d*(SD: handle[StepGeom_Direction]): handle[Geom2d_Direction] {.
    importcpp: "StepToGeom::MakeDirection2d(@)", header: "StepToGeom.hxx".}
proc MakeElementarySurface*(SS: handle[StepGeom_ElementarySurface]): handle[
    Geom_ElementarySurface] {.importcpp: "StepToGeom::MakeElementarySurface(@)",
                             header: "StepToGeom.hxx".}
proc MakeEllipse*(SC: handle[StepGeom_Ellipse]): handle[Geom_Ellipse] {.
    importcpp: "StepToGeom::MakeEllipse(@)", header: "StepToGeom.hxx".}
proc MakeEllipse2d*(SC: handle[StepGeom_Ellipse]): handle[Geom2d_Ellipse] {.
    importcpp: "StepToGeom::MakeEllipse2d(@)", header: "StepToGeom.hxx".}
proc MakeHyperbola*(SC: handle[StepGeom_Hyperbola]): handle[Geom_Hyperbola] {.
    importcpp: "StepToGeom::MakeHyperbola(@)", header: "StepToGeom.hxx".}
proc MakeHyperbola2d*(SC: handle[StepGeom_Hyperbola]): handle[Geom2d_Hyperbola] {.
    importcpp: "StepToGeom::MakeHyperbola2d(@)", header: "StepToGeom.hxx".}
proc MakeLine*(SC: handle[StepGeom_Line]): handle[Geom_Line] {.
    importcpp: "StepToGeom::MakeLine(@)", header: "StepToGeom.hxx".}
proc MakeLine2d*(SC: handle[StepGeom_Line]): handle[Geom2d_Line] {.
    importcpp: "StepToGeom::MakeLine2d(@)", header: "StepToGeom.hxx".}
proc MakeParabola*(SC: handle[StepGeom_Parabola]): handle[Geom_Parabola] {.
    importcpp: "StepToGeom::MakeParabola(@)", header: "StepToGeom.hxx".}
proc MakeParabola2d*(SC: handle[StepGeom_Parabola]): handle[Geom2d_Parabola] {.
    importcpp: "StepToGeom::MakeParabola2d(@)", header: "StepToGeom.hxx".}
proc MakePlane*(SP: handle[StepGeom_Plane]): handle[Geom_Plane] {.
    importcpp: "StepToGeom::MakePlane(@)", header: "StepToGeom.hxx".}
proc MakePolyline*(SPL: handle[StepGeom_Polyline]): handle[Geom_BSplineCurve] {.
    importcpp: "StepToGeom::MakePolyline(@)", header: "StepToGeom.hxx".}
proc MakePolyline2d*(SPL: handle[StepGeom_Polyline]): handle[Geom2d_BSplineCurve] {.
    importcpp: "StepToGeom::MakePolyline2d(@)", header: "StepToGeom.hxx".}
proc MakeRectangularTrimmedSurface*(SS: handle[StepGeom_RectangularTrimmedSurface]): handle[
    Geom_RectangularTrimmedSurface] {.importcpp: "StepToGeom::MakeRectangularTrimmedSurface(@)",
                                     header: "StepToGeom.hxx".}
proc MakeSphericalSurface*(SS: handle[StepGeom_SphericalSurface]): handle[
    Geom_SphericalSurface] {.importcpp: "StepToGeom::MakeSphericalSurface(@)",
                            header: "StepToGeom.hxx".}
proc MakeSurface*(SS: handle[StepGeom_Surface]): handle[Geom_Surface] {.
    importcpp: "StepToGeom::MakeSurface(@)", header: "StepToGeom.hxx".}
proc MakeSurfaceOfLinearExtrusion*(SS: handle[StepGeom_SurfaceOfLinearExtrusion]): handle[
    Geom_SurfaceOfLinearExtrusion] {.importcpp: "StepToGeom::MakeSurfaceOfLinearExtrusion(@)",
                                    header: "StepToGeom.hxx".}
proc MakeSurfaceOfRevolution*(SS: handle[StepGeom_SurfaceOfRevolution]): handle[
    Geom_SurfaceOfRevolution] {.importcpp: "StepToGeom::MakeSurfaceOfRevolution(@)",
                               header: "StepToGeom.hxx".}
proc MakeSweptSurface*(SS: handle[StepGeom_SweptSurface]): handle[Geom_SweptSurface] {.
    importcpp: "StepToGeom::MakeSweptSurface(@)", header: "StepToGeom.hxx".}
proc MakeToroidalSurface*(SS: handle[StepGeom_ToroidalSurface]): handle[
    Geom_ToroidalSurface] {.importcpp: "StepToGeom::MakeToroidalSurface(@)",
                           header: "StepToGeom.hxx".}
proc MakeTransformation2d*(SCTO: handle[StepGeom_CartesianTransformationOperator2d];
                          CT: var gp_Trsf2d): Standard_Boolean {.
    importcpp: "StepToGeom::MakeTransformation2d(@)", header: "StepToGeom.hxx".}
proc MakeTransformation3d*(SCTO: handle[StepGeom_CartesianTransformationOperator3d];
                          CT: var gp_Trsf): Standard_Boolean {.
    importcpp: "StepToGeom::MakeTransformation3d(@)", header: "StepToGeom.hxx".}
proc MakeTrimmedCurve*(SC: handle[StepGeom_TrimmedCurve]): handle[Geom_TrimmedCurve] {.
    importcpp: "StepToGeom::MakeTrimmedCurve(@)", header: "StepToGeom.hxx".}
proc MakeTrimmedCurve2d*(SC: handle[StepGeom_TrimmedCurve]): handle[
    Geom2d_BSplineCurve] {.importcpp: "StepToGeom::MakeTrimmedCurve2d(@)",
                          header: "StepToGeom.hxx".}
proc MakeVectorWithMagnitude*(SV: handle[StepGeom_Vector]): handle[
    Geom_VectorWithMagnitude] {.importcpp: "StepToGeom::MakeVectorWithMagnitude(@)",
                               header: "StepToGeom.hxx".}
proc MakeVectorWithMagnitude2d*(SV: handle[StepGeom_Vector]): handle[
    Geom2d_VectorWithMagnitude] {.importcpp: "StepToGeom::MakeVectorWithMagnitude2d(@)",
                                 header: "StepToGeom.hxx".}