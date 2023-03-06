import ../../tkg3d/geom/geom_types
import ../../tkernel/standard/standard_types

type
  Geom2dUndefinedDerivative* = object # FIXME
  
  Geom2dUndefinedValue* = object      # FIXME
  
  HandleGeom2dGeometry* {.importcpp:"opencascade::handle<Geom2d_Geometry>", header:"Standard_Handle.hxx", bycopy, pure, inheritable.} = object

  HandleGeom2dUndefinedDerivative* = Handle[Geom2dUndefinedDerivative]

  HandleGeom2dUndefinedValue* = Handle[Geom2dUndefinedValue]

  HandleGeom2dCurve* {.importcpp:"opencascade::handle<Geom2d_Curve>", header:"Standard_Handle.hxx", bycopy.} = object of HandleGeom2dGeometry

  HandleGeom2dTrimmedCurve* {.importcpp:"opencascade::handle<Geom2d_TrimmedCurve>", header:"Standard_Handle.hxx", bycopy.} = object of HandleGeom2dCurve

  Geom2dGeometry* {.importcpp: "Geom2d_Geometry", header: "Geom2d_Geometry.hxx",
                   bycopy.} = object of StandardTransient 

  Geom2dCurve* {.importcpp: "Geom2d_Curve", header: "Geom2d_Curve.hxx", bycopy.} = object of Geom2dGeometry 

  Geom2dBoundedCurve* {.importcpp: "Geom2d_BoundedCurve",
                       header: "Geom2d_BoundedCurve.hxx", bycopy.} = object of Geom2dCurve 

  Geom2dBezierCurve* {.importcpp: "Geom2d_BezierCurve",
                      header: "Geom2d_BezierCurve.hxx", bycopy.} = object of Geom2dBoundedCurve 

  HandleGeom2dBezierCurve* = Handle[Geom2dBezierCurve]

  HandleGeom2dBoundedCurve* = Handle[Geom2dBoundedCurve]

  Geom2dBSplineCurve* {.importcpp: "Geom2d_BSplineCurve",
                       header: "Geom2d_BSplineCurve.hxx", bycopy.} = object of Geom2dBoundedCurve 

  HandleGeom2dBSplineCurve* = Handle[Geom2dBSplineCurve]

  Geom2dConic* {.importcpp: "Geom2d_Conic", header: "Geom2d_Conic.hxx", bycopy.} = object of Geom2dCurve 

  Geom2dEllipse* {.importcpp: "Geom2d_Ellipse", header: "Geom2d_Ellipse.hxx", bycopy.} = object of Geom2dConic 

  HandleGeom2dEllipse* = Handle[Geom2dEllipse]

  Geom2dCircle* {.importcpp: "Geom2d_Circle", header: "Geom2d_Circle.hxx", bycopy.} = object of Geom2dConic 

  HandleGeom2dCircle* = Handle[Geom2dCircle]

  HandleGeom2dConic* = Handle[Geom2dConic]

  Geom2dAxisPlacement* {.importcpp: "Geom2d_AxisPlacement",
                        header: "Geom2d_AxisPlacement.hxx", bycopy.} = object of Geom2dGeometry 

  HandleGeom2dAxisPlacement* = Handle[Geom2dAxisPlacement]

  Geom2dHyperbola* {.importcpp: "Geom2d_Hyperbola", header: "Geom2d_Hyperbola.hxx",
                    bycopy.} = object of Geom2dConic 

  HandleGeom2dHyperbola* = Handle[Geom2dHyperbola]

  Geom2dLine* {.importcpp: "Geom2d_Line", header: "Geom2d_Line.hxx", bycopy.} = object of Geom2dCurve 

  HandleGeom2dLine* = Handle[Geom2dLine]

  Geom2dOffsetCurve* {.importcpp: "Geom2d_OffsetCurve",
                      header: "Geom2d_OffsetCurve.hxx", bycopy.} = object of Geom2dCurve 

  HandleGeom2dOffsetCurve* = Handle[Geom2dOffsetCurve]

  Geom2dParabola* {.importcpp: "Geom2d_Parabola", header: "Geom2d_Parabola.hxx",
                   bycopy.} = object of Geom2dConic 

  HandleGeom2dParabola* = Handle[Geom2dParabola]

  Geom2dPoint* {.importcpp: "Geom2d_Point", header: "Geom2d_Point.hxx", bycopy.} = object of Geom2dGeometry 

  Geom2dCartesianPoint* {.importcpp: "Geom2d_CartesianPoint",
                         header: "Geom2d_CartesianPoint.hxx", bycopy.} = object of Geom2dPoint 

  HandleGeom2dCartesianPoint* = Handle[Geom2dCartesianPoint]

  HandleGeom2dPoint* = Handle[Geom2dPoint]

  Geom2dTransformation* {.importcpp: "Geom2d_Transformation",
                         header: "Geom2d_Transformation.hxx", bycopy.} = object of StandardTransient 

  HandleGeom2dTransformation* = Handle[Geom2dTransformation]

  Geom2dTrimmedCurve* {.importcpp: "Geom2d_TrimmedCurve",
                       header: "Geom2d_TrimmedCurve.hxx", bycopy.} = object of Geom2dBoundedCurve 

  Geom2dVector* {.importcpp: "Geom2d_Vector", header: "Geom2d_Vector.hxx", bycopy.} = object of Geom2dGeometry 

  HandleGeom2dVector* = Handle[Geom2dVector]

  Geom2dDirection* {.importcpp: "Geom2d_Direction", header: "Geom2d_Direction.hxx",
                    bycopy.} = object of Geom2dVector 

  HandleGeom2dDirection* = Handle[Geom2dDirection]

  #Geom2dVector* {.importcpp: "Geom2d_Vector", header: "Geom2d_Vector.hxx", bycopy.} = object of Geom2dGeometry 
  Geom2dVectorWithMagnitude* {.importcpp: "Geom2d_VectorWithMagnitude",
                              header: "Geom2d_VectorWithMagnitude.hxx", bycopy.} = object of Geom2dVector 

  HandleGeom2dVectorWithMagnitude* = Handle[Geom2dVectorWithMagnitude]

