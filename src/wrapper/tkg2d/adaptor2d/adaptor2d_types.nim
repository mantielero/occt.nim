# PROVIDES: Adaptor2dCurve2d
# DEPENDS:  Handle[Adaptor2dHCurve2d] Adaptor2dCurve2d Adaptor2dCurve2d StandardTransient  Handle[Adaptor2dHLine2d] Adaptor2dHCurve2d  Handle[Adaptor2dHOffsetCurve]  Handle[Adaptor2dHOffsetCurve] Adaptor2dHCurve2d

import tkg2d/adaptor2d/adaptor2d_types
import tkernel/standard/standard_types
type
  Adaptor2dCurve2d* {.importcpp: "Adaptor2d_Curve2d",
                     header: "Adaptor2d_Curve2d.hxx", bycopy.} = object of RootObj

  HandleAdaptor2dHCurve2d* = Handle[Adaptor2dHCurve2d]










  Adaptor2dLine2d* {.importcpp: "Adaptor2d_Line2d", header: "Adaptor2d_Line2d.hxx",
                    bycopy.} = object of Adaptor2dCurve2d

                    bycopy.} = object of Adaptor2dCurve2d


  Adaptor2dOffsetCurve* {.importcpp: "Adaptor2d_OffsetCurve",
                         header: "Adaptor2d_OffsetCurve.hxx", bycopy.} = object of Adaptor2dCurve2d 
                                                                                             
                                                                                             
                                                                                             
                                                                                             
                                                                                             
                                                                                             
                                                                                             




  Adaptor2dHCurve2d* {.importcpp: "Adaptor2d_HCurve2d",
                      header: "Adaptor2d_HCurve2d.hxx", bycopy.} = object of StandardTransient 
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        



  HandleAdaptor2dHLine2d* = Handle[Adaptor2dHLine2d]


  Adaptor2dHLine2d* {.importcpp: "Adaptor2d_HLine2d",
                     header: "Adaptor2d_HLine2d.hxx", bycopy.} = object of Adaptor2dHCurve2d 
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      



  HandleAdaptor2dHOffsetCurve* = Handle[Adaptor2dHOffsetCurve]


  HandleAdaptor2dHOffsetCurve* = Handle[Adaptor2dHOffsetCurve]

  HandleAdaptor2dHOffsetCurve* = Handle[Adaptor2dHOffsetCurve]
  Adaptor2dHOffsetCurve* {.importcpp: "Adaptor2d_HOffsetCurve",
                          header: "Adaptor2d_HOffsetCurve.hxx", bycopy.} = object of Adaptor2dHCurve2d 
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                





