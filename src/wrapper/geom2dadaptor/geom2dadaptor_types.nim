import ../adaptor2d/adaptor2d_types
import ../geom2d/geom2d_types
import ../../tkg3d/geom/geom_types
import ../../tkernel/standard/standard_types
type
  Geom2dAdaptor* {.importcpp: "Geom2dAdaptor", header: "Geom2dAdaptor.hxx", bycopy.} = object 

  Geom2dAdaptorCurve* {.importcpp: "Geom2dAdaptor_Curve",
                       header: "Geom2dAdaptor_Curve.hxx", bycopy.} = object of Adaptor2dCurve2d

  Geom2dAdaptorGHCurve* {.importcpp: "Geom2dAdaptor_GHCurve",
                         header: "Geom2dAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor2dHCurve2d 
                         #header: "Geom2dAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor2dHCurve2d 

  HandleGeom2dAdaptorGHCurve* = Handle[Geom2dAdaptorGHCurve]

                         #header: "Geom2dAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor2dHCurve2d 
  Geom2dAdaptorHCurve* {.importcpp: "Geom2dAdaptor_HCurve",
                        header: "Geom2dAdaptor_HCurve.hxx", bycopy.} = object of Geom2dAdaptorGHCurve

  HandleGeom2dAdaptorHCurve* = Handle[Geom2dAdaptorHCurve]

