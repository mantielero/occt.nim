# PROVIDES: Geom2dAdaptor
# DEPENDS:  Handle[Geom2dAdaptorHCurve] Adaptor2dCurve2d  Handle[Geom2dAdaptorGHCurve] Adaptor2dHCurve2d Geom2dAdaptorGHCurve

import tkg2d/adaptor2d/adaptor2d_types
import tkg2d/geom2dadaptor/geom2dadaptor_types
import tkg2d/geom2d/geom2d_types
import tkg3d/geom/geom_types
import tkernel/standard/standard_types
type
  Geom2dAdaptor* {.importcpp: "Geom2dAdaptor", header: "Geom2dAdaptor.hxx", bycopy.} = object 

  HandleGeom2dAdaptorHCurve* = Handle[Geom2dAdaptorHCurve]

  Geom2dAdaptorCurve* {.importcpp: "Geom2dAdaptor_Curve",
                       header: "Geom2dAdaptor_Curve.hxx", bycopy.} = object of Adaptor2dCurve2d

  HandleGeom2dAdaptorGHCurve* = Handle[Geom2dAdaptorGHCurve]

  Geom2dAdaptorGHCurve* {.importcpp: "Geom2dAdaptor_GHCurve",
                         header: "Geom2dAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor2dHCurve2d 

                         header: "Geom2dAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor2dHCurve2d 
  Geom2dAdaptorHCurve* {.importcpp: "Geom2dAdaptor_HCurve",
                        header: "Geom2dAdaptor_HCurve.hxx", bycopy.} = object of Geom2dAdaptorGHCurve


