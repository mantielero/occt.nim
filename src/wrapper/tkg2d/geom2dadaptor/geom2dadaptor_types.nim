type
  Geom2dAdaptor* {.importcpp: "Geom2dAdaptor", header: "Geom2dAdaptor.hxx", bycopy.} = object ##
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
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## 2d
                                                                                      ## curve
                                                                                      ## from
                                                                                      ## a
                                                                                      ## HCurve2d.
                                                                                      ## This
                                                                                      ##
                                                                                      ## !
                                                                                      ## cannot
                                                                                      ## process
                                                                                      ## the
                                                                                      ## OtherCurves.
type
  Geom2dAdaptorCurve* {.importcpp: "Geom2dAdaptor_Curve",
                       header: "Geom2dAdaptor_Curve.hxx", bycopy.} = object of Adaptor2dCurve2d
    ## /< B-spline representation to prevent castings
    ## /< Cached data for B-spline or Bezier curve
    ## /< Calculates value of offset curve
type
  HandleGeom2dAdaptorGHCurve* = Handle[Geom2dAdaptorGHCurve]
  Geom2dAdaptorGHCurve* {.importcpp: "Geom2dAdaptor_GHCurve",
                         header: "Geom2dAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor2dHCurve2d ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## GenHCurve2d.
type
  HandleGeom2dAdaptorHCurve* = Handle[Geom2dAdaptorHCurve]
## ! Provides an interface between the services provided by any
## ! curve from the package Geom2d and those required
## ! of the curve by algorithms, which use it.
type
  Geom2dAdaptorHCurve* {.importcpp: "Geom2dAdaptor_HCurve",
                        header: "Geom2dAdaptor_HCurve.hxx", bycopy.} = object of Geom2dAdaptorGHCurve
