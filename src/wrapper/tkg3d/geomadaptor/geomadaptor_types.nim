# PROVIDES: GeomAdaptor
# DEPENDS:  Handle[GeomAdaptorHCurve]  Handle[GeomAdaptorHSurface] Adaptor3dCurve  Handle[GeomAdaptorGHCurve] Adaptor3dHCurve  Handle[GeomAdaptorGHSurface] Adaptor3dHSurface GeomAdaptorGHCurve GeomAdaptorGHSurface  Handle[ Adaptor3dHSurface  Handle[GeomAdaptorHSurfaceOfRevolution] Adaptor3dHSurface Adaptor3dSurface GeomAdaptorSurface GeomAdaptorSurface

import tkg3d/geomadaptor/geomadaptor_types
import tkg3d/adaptor3d/adaptor3d_types
import tkg3d/geom/geom_types
import tkernel/standard/standard_types
type
  GeomAdaptor* {.importcpp: "GeomAdaptor", header: "GeomAdaptor.hxx", bycopy.} = object 
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                

  HandleGeomAdaptorHCurve* = Handle[GeomAdaptorHCurve]






  HandleGeomAdaptorHSurface* = Handle[GeomAdaptorHSurface]







  GeomAdaptorCurve* {.importcpp: "GeomAdaptor_Curve",
                     header: "GeomAdaptor_Curve.hxx", bycopy.} = object of Adaptor3dCurve
    
    
    



  HandleGeomAdaptorGHCurve* = Handle[GeomAdaptorGHCurve]


  GeomAdaptorGHCurve* {.importcpp: "GeomAdaptor_GHCurve",
                       header: "GeomAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor3dHCurve 
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        



  HandleGeomAdaptorGHSurface* = Handle[GeomAdaptorGHSurface]


  GeomAdaptorGHSurface* {.importcpp: "GeomAdaptor_GHSurface",
                         header: "GeomAdaptor_GHSurface.hxx", bycopy.} = object of Adaptor3dHSurface 
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              



  GeomAdaptorHCurve* {.importcpp: "GeomAdaptor_HCurve",
                      header: "GeomAdaptor_HCurve.hxx", bycopy.} = object of GeomAdaptorGHCurve



  GeomAdaptorHSurface* {.importcpp: "GeomAdaptor_HSurface",
                        header: "GeomAdaptor_HSurface.hxx", bycopy.} = object of GeomAdaptorGHSurface



  HandleGeomAdaptorHSurfaceOfLinearExtrusion* = Handle[
      GeomAdaptorHSurfaceOfLinearExtrusion]


  GeomAdaptorHSurfaceOfLinearExtrusion* {.
      importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion",
      header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx", bycopy.} = object of Adaptor3dHSurface 
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           



  HandleGeomAdaptorHSurfaceOfRevolution* = Handle[GeomAdaptorHSurfaceOfRevolution]


  GeomAdaptorHSurfaceOfRevolution* {.importcpp: "GeomAdaptor_HSurfaceOfRevolution", header: "GeomAdaptor_HSurfaceOfRevolution.hxx",
                                    bycopy.} = object of Adaptor3dHSurface 
                                                                      



  GeomAdaptorSurface* {.importcpp: "GeomAdaptor_Surface",
                       header: "GeomAdaptor_Surface.hxx", bycopy.} = object of Adaptor3dSurface
    
    
    



  GeomAdaptorSurfaceOfLinearExtrusion* {.importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx",
                                        bycopy.} = object of GeomAdaptorSurface
    
    
    

    



  GeomAdaptorSurfaceOfRevolution* {.importcpp: "GeomAdaptor_SurfaceOfRevolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx",
                                   bycopy.} = object of GeomAdaptorSurface
    
    
    
    






