import ../adaptor3d/adaptor3d_types
#import ../geom/geom_types
import ../standard/standard_types
type
  GeomAdaptor* {.importcpp: "GeomAdaptor", header: "GeomAdaptor.hxx", bycopy.} = object 

  GeomAdaptorCurve* {.importcpp: "GeomAdaptor_Curve",
                     header: "GeomAdaptor_Curve.hxx", bycopy.} = object of Adaptor3dCurve

  GeomAdaptorGHCurve* {.importcpp: "GeomAdaptor_GHCurve",
                       header: "GeomAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor3dHCurve 

  HandleGeomAdaptorGHCurve* = Handle[GeomAdaptorGHCurve]

  GeomAdaptorGHSurface* {.importcpp: "GeomAdaptor_GHSurface",
                         header: "GeomAdaptor_GHSurface.hxx", bycopy.} = object of Adaptor3dHSurface 

  HandleGeomAdaptorGHSurface* = Handle[GeomAdaptorGHSurface]

  GeomAdaptorHCurve* {.importcpp: "GeomAdaptor_HCurve",
                      header: "GeomAdaptor_HCurve.hxx", bycopy.} = object of GeomAdaptorGHCurve

  HandleGeomAdaptorHCurve* = Handle[GeomAdaptorHCurve]

  GeomAdaptorHSurface* {.importcpp: "GeomAdaptor_HSurface",
                        header: "GeomAdaptor_HSurface.hxx", bycopy.} = object of GeomAdaptorGHSurface

  HandleGeomAdaptorHSurface* = Handle[GeomAdaptorHSurface]

  GeomAdaptorHSurfaceOfLinearExtrusion* {.
      importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion",
      header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx", bycopy.} = object of Adaptor3dHSurface 

  HandleGeomAdaptorHSurfaceOfLinearExtrusion* = Handle[
      GeomAdaptorHSurfaceOfLinearExtrusion]

  GeomAdaptorHSurfaceOfRevolution* {.importcpp: "GeomAdaptor_HSurfaceOfRevolution", header: "GeomAdaptor_HSurfaceOfRevolution.hxx",
                                    bycopy.} = object of Adaptor3dHSurface 

  HandleGeomAdaptorHSurfaceOfRevolution* = Handle[GeomAdaptorHSurfaceOfRevolution]

  GeomAdaptorSurface* {.importcpp: "GeomAdaptor_Surface",
                       header: "GeomAdaptor_Surface.hxx", bycopy.} = object of Adaptor3dSurface

  GeomAdaptorSurfaceOfLinearExtrusion* {.importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx",
                                        bycopy.} = object of GeomAdaptorSurface
                                        #bycopy.} = object of GeomAdaptorSurface

                                        #bycopy.} = object of GeomAdaptorSurface
  GeomAdaptorSurfaceOfRevolution* {.importcpp: "GeomAdaptor_SurfaceOfRevolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx",
                                   bycopy.} = object of GeomAdaptorSurface

