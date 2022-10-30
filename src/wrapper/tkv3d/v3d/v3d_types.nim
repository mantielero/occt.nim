# PROVIDES: V3d V3dImageDumpOptions V3dTypeOfOrientation
# DEPENDS:  Handle[V3dPlane]  Handle[V3dView] Graphic3dCLight AspectCircularGrid V3dPositionLight StandardTransient V3dPositionLight Graphic3dCLight AspectRectangularGrid V3dPositionLight StandardTransient StandardTransient StandardTransient

import tkservice/aspect/aspect_types
import tkv3d/v3d/v3d_types
import tkv3d/graphic3d/graphic3d_types
import tkernel/standard/standard_types
type
  V3d* {.importcpp: "V3d", header: "V3d.hxx", bycopy.} = object 

  V3dImageDumpOptions* {.importcpp: "V3d_ImageDumpOptions",
                        header: "V3d_ImageDumpOptions.hxx", bycopy.} = object 
                                                                         
    width* {.importc: "Width".}: cint 
    height* {.importc: "Height".}: cint 
    bufferType* {.importc: "BufferType".}: Graphic3dBufferType 
    stereoOptions* {.importc: "StereoOptions".}: V3dStereoDumpOptions 
    tileSize* {.importc: "TileSize".}: cint 
    toAdjustAspect* {.importc: "ToAdjustAspect".}: bool 

  V3dTypeOfOrientation* {.size: sizeof(cint), importcpp: "V3d_TypeOfOrientation",
                         header: "V3d_TypeOfOrientation.hxx".} = enum
    v3dXpos,                  
    v3dYpos,                  
    v3dZpos,                  
    v3dXneg,                  
    v3dYneg,                  
    v3dZneg,                  
    v3dXposYpos, v3dXposZpos, v3dYposZpos, v3dXnegYneg, v3dXnegYpos, v3dXnegZneg,
    v3dXnegZpos, v3dYnegZneg, v3dYnegZpos, v3dXposYneg, v3dXposZneg, v3dYposZneg,
    v3dXposYposZpos, v3dXposYnegZpos, v3dXposYposZneg, v3dXnegYposZpos,
    v3dXposYnegZneg, v3dXnegYposZneg, v3dXnegYnegZpos, v3dXnegYnegZneg 

  HandleV3dPlane* = Handle[V3dPlane]





















  HandleV3dView* = Handle[V3dView]


















  V3dAmbientLight* {.importcpp: "V3d_AmbientLight", header: "V3d_AmbientLight.hxx",
                    bycopy.} = object of Graphic3dCLight 
                                                    



  V3dCircularGrid* {.importcpp: "V3d_CircularGrid", header: "V3d_CircularGrid.hxx",
                    bycopy.} = object of AspectCircularGrid 



  V3dDirectionalLight* {.importcpp: "V3d_DirectionalLight",
                        header: "V3d_DirectionalLight.hxx", bycopy.} = object of V3dPositionLight 
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           



  V3dPlane* {.importcpp: "V3d_Plane", header: "V3d_Plane.hxx", bycopy.} = object of StandardTransient 
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
    



  V3dPositionalLight* {.importcpp: "V3d_PositionalLight",
                       header: "V3d_PositionalLight.hxx", bycopy.} = object of V3dPositionLight 
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         



  V3dPositionLight* {.importcpp: "V3d_PositionLight",
                     header: "V3d_PositionLight.hxx", bycopy.} = object of Graphic3dCLight 
                                                                                    
                                                                                    
                                                                                    





  V3dRectangularGrid* {.importcpp: "V3d_RectangularGrid",
                       header: "V3d_RectangularGrid.hxx", bycopy.} = object of AspectRectangularGrid 
                                                                                              
                                                                                              
                                                                                              
                                                                                              



  V3dSpotLight* {.importcpp: "V3d_SpotLight", header: "V3d_SpotLight.hxx", bycopy.} = object of V3dPositionLight 
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       



  V3dTrihedron* {.importcpp: "V3d_Trihedron", header: "V3d_Trihedron.hxx", bycopy.} = object of StandardTransient 
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        



  V3dView* {.importcpp: "V3d_View", header: "V3d_View.hxx", bycopy.} = object of StandardTransient 
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         

                                                                                         



  V3dViewer* {.importcpp: "V3d_Viewer", header: "V3d_Viewer.hxx", byref, pure,inheritable.} = object of StandardTransient 
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               








