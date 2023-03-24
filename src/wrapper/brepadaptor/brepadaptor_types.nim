import ../adaptor2d/adaptor2d_types
import ../geom2dadaptor/geom2dadaptor_types
import ../adaptor3d/adaptor3d_types
# import ../brep/brep_types
# import ../geom2d/geom2d_types
import ../ncollection/ncollection_types
# import ../geom/geom_types
import ../standard/standard_types
type
  BRepAdaptorCompCurve* {.importcpp: "BRepAdaptor_CompCurve",
                         header: "BRepAdaptor_CompCurve.hxx", bycopy.} = object of Adaptor3dCurve 

  BRepAdaptorCurve* {.importcpp: "BRepAdaptor_Curve",
                     header: "BRepAdaptor_Curve.hxx", bycopy.} = object of Adaptor3dCurve 

  BRepAdaptorArray1OfCurve* = NCollectionArray1[BRepAdaptorCurve]

  BRepAdaptorCurve2d* {.importcpp: "BRepAdaptor_Curve2d",
                       header: "BRepAdaptor_Curve2d.hxx", bycopy.} = object of Geom2dAdaptorCurve 

  BRepAdaptorHArray1OfCurve* {.importcpp: "BRepAdaptor_HArray1OfCurve",
                              header: "BRepAdaptor_HArray1OfCurve.hxx", bycopy.} = object of BRepAdaptorArray1OfCurve

  BRepAdaptorHCompCurve* {.importcpp: "BRepAdaptor_HCompCurve",
                          header: "BRepAdaptor_HCompCurve.hxx", bycopy.} = object of Adaptor3dHCurve 

  HandleBRepAdaptorHCompCurve* = Handle[BRepAdaptorHCompCurve]

  BRepAdaptorHCurve* {.importcpp: "BRepAdaptor_HCurve",
                      header: "BRepAdaptor_HCurve.hxx", bycopy.} = object of Adaptor3dHCurve 

  HandleBRepAdaptorHCurve* = Handle[BRepAdaptorHCurve]

  BRepAdaptorHCurve2d* {.importcpp: "BRepAdaptor_HCurve2d",
                        header: "BRepAdaptor_HCurve2d.hxx", bycopy.} = object of Adaptor2dHCurve2d 

  HandleBRepAdaptorHCurve2d* = Handle[BRepAdaptorHCurve2d]

  BRepAdaptorHSurface* {.importcpp: "BRepAdaptor_HSurface",
                        header: "BRepAdaptor_HSurface.hxx", bycopy.} = object of Adaptor3dHSurface 
                        #header: "BRepAdaptor_HSurface.hxx", bycopy.} = object of Adaptor3dHSurface 

  HandleBRepAdaptorHSurface* = Handle[BRepAdaptorHSurface]

                        #header: "BRepAdaptor_HSurface.hxx", bycopy.} = object of Adaptor3dHSurface 
  BRepAdaptorSurface* {.importcpp: "BRepAdaptor_Surface",
                       header: "BRepAdaptor_Surface.hxx", bycopy.} = object of Adaptor3dSurface 

