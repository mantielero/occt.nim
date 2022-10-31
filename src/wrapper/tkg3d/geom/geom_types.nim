import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
type
  GeomUndefinedDerivative* = object # FIXME

  GeomUndefinedValue* = object      # FIXME
  
  HandleGeomCurve* {.importcpp:"opencascade::handle<Geom_Curve>", header: "Standard_Handle.hxx", bycopy, pure, inheritable.} = object

  GeomGeometry* {.importcpp: "Geom_Geometry", header: "Geom_Geometry.hxx", bycopy.} = object of StandardTransient 

  GeomOsculatingSurface* {.importcpp: "Geom_OsculatingSurface",
                          header: "Geom_OsculatingSurface.hxx", bycopy.} = object of StandardTransient 

  GeomSequenceOfBSplineSurface* = NCollectionSequence[Handle[GeomBSplineSurface]]

  GeomTransformation* {.importcpp: "Geom_Transformation",
                       header: "Geom_Transformation.hxx", bycopy.} = object of StandardTransient 

  HandleGeomTrimmedCurve* {.importcpp:"opencascade::handle<Geom_TrimmedCurve>", header: "Standard_Handle.hxx", bycopy.} = object of HandleGeomCurve

  GeomHSequenceOfBSplineSurface* {.importcpp: "Geom_HSequenceOfBSplineSurface",
                                  header: "Geom_HSequenceOfBSplineSurface.hxx",
                                  bycopy.} = object of GeomSequenceOfBSplineSurface

  HandleGeomUndefinedDerivative* = Handle[GeomUndefinedDerivative]

  HandleGeomUndefinedValue* = Handle[GeomUndefinedValue]

  GeomCurve* {.importcpp: "Geom_Curve", header: "Geom_Curve.hxx", bycopy.} = object of GeomGeometry 

  GeomAxisPlacement* {.importcpp: "Geom_AxisPlacement",
                      header: "Geom_AxisPlacement.hxx", bycopy.} = object of GeomGeometry 

  HandleGeomGeometry* = Handle[GeomGeometry]

  GeomSurface* {.importcpp: "Geom_Surface", header: "Geom_Surface.hxx", bycopy.} = object of GeomGeometry 

  GeomPoint* {.importcpp: "Geom_Point", header: "Geom_Point.hxx", bycopy.} = object of GeomGeometry 

  GeomAxis2Placement* {.importcpp: "Geom_Axis2Placement",
                       header: "Geom_Axis2Placement.hxx", bycopy.} = object of GeomAxisPlacement 

  GeomAxis1Placement* {.importcpp: "Geom_Axis1Placement",
                       header: "Geom_Axis1Placement.hxx", bycopy.} = object of GeomAxisPlacement 

  HandleGeomAxisPlacement* = Handle[GeomAxisPlacement]

  HandleGeomAxis2Placement* = Handle[GeomAxis2Placement]

  HandleGeomAxis1Placement* = Handle[GeomAxis1Placement]

  GeomConic* {.importcpp: "Geom_Conic", header: "Geom_Conic.hxx", bycopy.} = object of GeomCurve 

  GeomBoundedCurve* {.importcpp: "Geom_BoundedCurve",
                     header: "Geom_BoundedCurve.hxx", bycopy.} = object of GeomCurve 

  GeomOffsetCurve* {.importcpp: "Geom_OffsetCurve", header: "Geom_OffsetCurve.hxx",
                    bycopy.} = object of GeomCurve 

  GeomLine* {.importcpp: "Geom_Line", header: "Geom_Line.hxx", bycopy.} = object of GeomCurve 

  GeomCircle* {.importcpp: "Geom_Circle", header: "Geom_Circle.hxx", bycopy.} = object of GeomConic 

  HandleGeomConic* = Handle[GeomConic]

  GeomParabola* {.importcpp: "Geom_Parabola", header: "Geom_Parabola.hxx", bycopy.} = object of GeomConic 

  GeomHyperbola* {.importcpp: "Geom_Hyperbola", header: "Geom_Hyperbola.hxx", bycopy.} = object of GeomConic 

  HandleGeomCircle* = Handle[GeomCircle]

  GeomEllipse* {.importcpp: "Geom_Ellipse", header: "Geom_Ellipse.hxx", bycopy.} = object of GeomConic 

  HandleGeomEllipse* = Handle[GeomEllipse]

  GeomBezierCurve* {.importcpp: "Geom_BezierCurve", header: "Geom_BezierCurve.hxx",
                    bycopy.} = object of GeomBoundedCurve 

  HandleGeomBoundedCurve* = Handle[GeomBoundedCurve]

  GeomTrimmedCurve* {.importcpp: "Geom_TrimmedCurve",
                     header: "Geom_TrimmedCurve.hxx", bycopy.} = object of GeomBoundedCurve 

  GeomBSplineCurve* {.importcpp: "Geom_BSplineCurve",
                     header: "Geom_BSplineCurve.hxx", bycopy.} = object of GeomBoundedCurve 

  HandleGeomBezierCurve* = Handle[GeomBezierCurve]

  HandleGeomBSplineCurve* = Handle[GeomBSplineCurve]

  HandleGeomHSequenceOfBSplineSurface* = Handle[GeomHSequenceOfBSplineSurface]

  HandleGeomHyperbola* = Handle[GeomHyperbola]

  HandleGeomLine* = Handle[GeomLine]

  HandleGeomOffsetCurve* = Handle[GeomOffsetCurve]

  HandleGeomOsculatingSurface* = Handle[GeomOsculatingSurface]

  HandleGeomParabola* = Handle[GeomParabola]

  HandleGeomPoint* = Handle[GeomPoint]

  GeomCartesianPoint* {.importcpp: "Geom_CartesianPoint",
                       header: "Geom_CartesianPoint.hxx", bycopy.} = object of GeomPoint 

  HandleGeomCartesianPoint* = Handle[GeomCartesianPoint]

  GeomOffsetSurface* {.importcpp: "Geom_OffsetSurface",
                      header: "Geom_OffsetSurface.hxx", bycopy.} = object of GeomSurface 

  HandleGeomSurface* = Handle[GeomSurface]

  HandleGeomOffsetSurface* = Handle[GeomOffsetSurface]

  GeomElementarySurface* {.importcpp: "Geom_ElementarySurface",
                          header: "Geom_ElementarySurface.hxx", bycopy.} = object of GeomSurface 

  GeomBoundedSurface* {.importcpp: "Geom_BoundedSurface",
                       header: "Geom_BoundedSurface.hxx", bycopy.} = object of GeomSurface

  GeomRectangularTrimmedSurface* {.importcpp: "Geom_RectangularTrimmedSurface",
                                  header: "Geom_RectangularTrimmedSurface.hxx",
                                  bycopy.} = object of GeomBoundedSurface 

  HandleGeomRectangularTrimmedSurface* = Handle[GeomRectangularTrimmedSurface]

  GeomBSplineSurface* {.importcpp: "Geom_BSplineSurface",
                       header: "Geom_BSplineSurface.hxx", bycopy.} = object of GeomBoundedSurface 

  GeomBezierSurface* {.importcpp: "Geom_BezierSurface",
                      header: "Geom_BezierSurface.hxx", bycopy.} = object of GeomBoundedSurface 

  HandleGeomBoundedSurface* = Handle[GeomBoundedSurface]

  HandleGeomBezierSurface* = Handle[GeomBezierSurface]

  HandleGeomBSplineSurface* = Handle[GeomBSplineSurface]

  GeomSweptSurface* {.importcpp: "Geom_SweptSurface",
                     header: "Geom_SweptSurface.hxx", bycopy.} = object of GeomSurface 

  GeomCylindricalSurface* {.importcpp: "Geom_CylindricalSurface",
                           header: "Geom_CylindricalSurface.hxx", bycopy.} = object of GeomElementarySurface 

  GeomConicalSurface* {.importcpp: "Geom_ConicalSurface",
                       header: "Geom_ConicalSurface.hxx", bycopy.} = object of GeomElementarySurface 

  HandleGeomElementarySurface* = Handle[GeomElementarySurface]

  GeomToroidalSurface* {.importcpp: "Geom_ToroidalSurface",
                        header: "Geom_ToroidalSurface.hxx", bycopy.} = object of GeomElementarySurface 

  HandleGeomCylindricalSurface* = Handle[GeomCylindricalSurface]

  HandleGeomConicalSurface* = Handle[GeomConicalSurface]

  GeomPlane* {.importcpp: "Geom_Plane", header: "Geom_Plane.hxx", bycopy.} = object of GeomElementarySurface 

  GeomSphericalSurface* {.importcpp: "Geom_SphericalSurface",
                         header: "Geom_SphericalSurface.hxx", bycopy.} = object of GeomElementarySurface 

  HandleGeomPlane* = Handle[GeomPlane]

  HandleGeomSphericalSurface* = Handle[GeomSphericalSurface]

  GeomSurfaceOfRevolution* {.importcpp: "Geom_SurfaceOfRevolution",
                            header: "Geom_SurfaceOfRevolution.hxx", bycopy.} = object of GeomSweptSurface 

  GeomSurfaceOfLinearExtrusion* {.importcpp: "Geom_SurfaceOfLinearExtrusion",
                                 header: "Geom_SurfaceOfLinearExtrusion.hxx",
                                 bycopy.} = object of GeomSweptSurface 

  HandleGeomSweptSurface* = Handle[GeomSweptSurface]

  HandleGeomSurfaceOfLinearExtrusion* = Handle[GeomSurfaceOfLinearExtrusion]

  HandleGeomSurfaceOfRevolution* = Handle[GeomSurfaceOfRevolution]

  HandleGeomToroidalSurface* = Handle[GeomToroidalSurface]

  HandleGeomTransformation* = Handle[GeomTransformation]

  GeomVector* {.importcpp: "Geom_Vector", header: "Geom_Vector.hxx", bycopy.} = object of GeomGeometry 

  HandleGeomVector* = Handle[GeomVector]

  GeomVectorWithMagnitude* {.importcpp: "Geom_VectorWithMagnitude",
                            header: "Geom_VectorWithMagnitude.hxx", bycopy.} = object of GeomVector 

  GeomDirection* {.importcpp: "Geom_Direction", header: "Geom_Direction.hxx", bycopy.} = object of GeomVector 

  HandleGeomDirection* = Handle[GeomDirection]

  HandleGeomVectorWithMagnitude* = Handle[GeomVectorWithMagnitude]

