# PROVIDES: GeomAdaptor HandleGeomAdaptorHCurve HandleGeomAdaptorHSurface
# DEPENDS: Adaptor3dCurve Adaptor3dHCurve Adaptor3dHSurface GeomAdaptorGHCurve GeomAdaptorGHSurface Adaptor3dHSurface Adaptor3dHSurface Adaptor3dSurface GeomAdaptorSurface GeomAdaptorSurface

type
  GeomAdaptor* {.importcpp: "GeomAdaptor", header: "GeomAdaptor.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Inherited
                                                                                ## from
                                                                                ## GHCurve.
                                                                                ## Provides
                                                                                ## a
                                                                                ## curve
                                                                                ##
                                                                                ## !
                                                                                ## handled
                                                                                ## by
                                                                                ## reference.
                                                                                ##
                                                                                ## !
                                                                                ## Build
                                                                                ## a
                                                                                ## Geom_Curve
                                                                                ## using
                                                                                ## the
                                                                                ## informations
                                                                                ## from
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## Curve
                                                                                ## from
                                                                                ## Adaptor3d

type
  HandleGeomAdaptorHCurve* = Handle[GeomAdaptorHCurve]
## ! An interface between the services provided by any
## ! curve from the package Geom and those required of
## ! the curve by algorithms which use it.

type
  HandleGeomAdaptorHSurface* = Handle[GeomAdaptorHSurface]
## ! An interface between the services provided by any
## ! surface from the package Geom and those required
## ! of the surface by algorithms which use it.
## ! Provides a  surface handled by reference.

type
  GeomAdaptorCurve* {.importcpp: "GeomAdaptor_Curve",
                     header: "GeomAdaptor_Curve.hxx", bycopy.} = object of Adaptor3dCurve
    ## /< B-spline representation to prevent castings
    ## /< Cached data for B-spline or Bezier curve
    ## /< Calculates value of offset curve

type
  HandleGeomAdaptorGHCurve* = Handle[GeomAdaptorGHCurve]
  GeomAdaptorGHCurve* {.importcpp: "GeomAdaptor_GHCurve",
                       header: "GeomAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## GenHCurve.

type
  HandleGeomAdaptorGHSurface* = Handle[GeomAdaptorGHSurface]
  GeomAdaptorGHSurface* {.importcpp: "GeomAdaptor_GHSurface",
                         header: "GeomAdaptor_GHSurface.hxx", bycopy.} = object of Adaptor3dHSurface ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## GenHSurface.

type
  GeomAdaptorHCurve* {.importcpp: "GeomAdaptor_HCurve",
                      header: "GeomAdaptor_HCurve.hxx", bycopy.} = object of GeomAdaptorGHCurve

type
  GeomAdaptorHSurface* {.importcpp: "GeomAdaptor_HSurface",
                        header: "GeomAdaptor_HSurface.hxx", bycopy.} = object of GeomAdaptorGHSurface

type
  HandleGeomAdaptorHSurfaceOfLinearExtrusion* = Handle[
      GeomAdaptorHSurfaceOfLinearExtrusion]
  GeomAdaptorHSurfaceOfLinearExtrusion* {.
      importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion",
      header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx", bycopy.} = object of Adaptor3dHSurface ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## empty
                                                                                           ## GenHSurface.

type
  HandleGeomAdaptorHSurfaceOfRevolution* = Handle[GeomAdaptorHSurfaceOfRevolution]
  GeomAdaptorHSurfaceOfRevolution* {.importcpp: "GeomAdaptor_HSurfaceOfRevolution", header: "GeomAdaptor_HSurfaceOfRevolution.hxx",
                                    bycopy.} = object of Adaptor3dHSurface ## ! Creates an empty
                                                                      ## GenHSurface.

type
  GeomAdaptorSurface* {.importcpp: "GeomAdaptor_Surface",
                       header: "GeomAdaptor_Surface.hxx", bycopy.} = object of Adaptor3dSurface
    ## /< B-spline representation to prevent downcasts
    ## /< Cached data for B-spline or Bezier surface
    ## /< Calculates values of nested complex surfaces (offset surface, surface of extrusion or revolution)

type
  GeomAdaptorSurfaceOfLinearExtrusion* {.importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx",
                                        bycopy.} = object of GeomAdaptorSurface
    ## /< extruded curve
    ## /< direction of extrusion
    ## /< whether the direction of extrusion is initialized

    ## /< whether the direction of extrusion is initialized
type
  GeomAdaptorSurfaceOfRevolution* {.importcpp: "GeomAdaptor_SurfaceOfRevolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx",
                                   bycopy.} = object of GeomAdaptorSurface
    ## /< revolved curve
    ## /< axis of revolution
    ## /< whether axis of revolution is initialized
    ## /< auxiliary trihedron according to the curve position


