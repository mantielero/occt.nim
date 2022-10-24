# PROVIDES:
# DEPENDS: Adaptor3dCurve Adaptor3dCurve Geom2dAdaptorCurve BRepAdaptorArray1OfCurve Adaptor3dHCurve Adaptor3dHCurve Adaptor2dHCurve2d Adaptor3dHSurface Adaptor3dSurface

type
  BRepAdaptorCompCurve* {.importcpp: "BRepAdaptor_CompCurve",
                         header: "BRepAdaptor_CompCurve.hxx", bycopy.} = object of Adaptor3dCurve ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## undefined
                                                                                           ## Curve
                                                                                           ## with
                                                                                           ## no
                                                                                           ## Wire
                                                                                           ## loaded.

type
  BRepAdaptorCurve* {.importcpp: "BRepAdaptor_Curve",
                     header: "BRepAdaptor_Curve.hxx", bycopy.} = object of Adaptor3dCurve ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## undefined
                                                                                   ## Curve
                                                                                   ## with
                                                                                   ## no
                                                                                   ## Edge
                                                                                   ## loaded.

type
  BRepAdaptorCurve2d* {.importcpp: "BRepAdaptor_Curve2d",
                       header: "BRepAdaptor_Curve2d.hxx", bycopy.} = object of Geom2dAdaptorCurve ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## uninitialized
                                                                                           ## curve2d.

type
  BRepAdaptorHArray1OfCurve* {.importcpp: "BRepAdaptor_HArray1OfCurve",
                              header: "BRepAdaptor_HArray1OfCurve.hxx", bycopy.} = object of BRepAdaptorArray1OfCurve

type
  HandleBRepAdaptorHCompCurve* = Handle[BRepAdaptorHCompCurve]
  BRepAdaptorHCompCurve* {.importcpp: "BRepAdaptor_HCompCurve",
                          header: "BRepAdaptor_HCompCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## GenHCurve.

type
  HandleBRepAdaptorHCurve* = Handle[BRepAdaptorHCurve]
  BRepAdaptorHCurve* {.importcpp: "BRepAdaptor_HCurve",
                      header: "BRepAdaptor_HCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## GenHCurve.

type
  HandleBRepAdaptorHCurve2d* = Handle[BRepAdaptorHCurve2d]
  BRepAdaptorHCurve2d* {.importcpp: "BRepAdaptor_HCurve2d",
                        header: "BRepAdaptor_HCurve2d.hxx", bycopy.} = object of Adaptor2dHCurve2d ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## GenHCurve2d.

type
  HandleBRepAdaptorHSurface* = Handle[BRepAdaptorHSurface]
  BRepAdaptorHSurface* {.importcpp: "BRepAdaptor_HSurface",
                        header: "BRepAdaptor_HSurface.hxx", bycopy.} = object of Adaptor3dHSurface ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## GenHSurface.

                                                                                            ## GenHSurface.
type
  BRepAdaptorSurface* {.importcpp: "BRepAdaptor_Surface",
                       header: "BRepAdaptor_Surface.hxx", bycopy.} = object of Adaptor3dSurface ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## an
                                                                                         ## undefined
                                                                                         ## surface
                                                                                         ## with
                                                                                         ## no
                                                                                         ## face
                                                                                         ## loaded.


