# PROVIDES: Gp Ax1Obj Ax2Obj Ax22dObj Ax2dObj Ax3Obj CircObj Circ2dObj ConeObj CylinderObj DirObj Dir2dObj ElipsObj Elips2dObj EulerSequenceObj GTrsf GTrsf2d HyprObj Hypr2dObj LinObj Lin2dObj MatObj Mat2dObj ParabObj Parab2dObj PlnObj PntObj Pnt2dObj QuaternionObj QuaternionNLerp QuaternionSLerp SphereObj TorusObj TrsfObj Trsf2dObj TrsfFormObj VecObj XyObj
# DEPENDS:  Handle[VectorWithNullMagnitude]

type
  Gp* {.importcpp: "gp", header: "gp.hxx", bycopy.} = object 
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     

  Ax1Obj* {.importcpp: "gp_Ax1", header: "gp_Ax1.hxx", bycopy.} = object 
                                                              

  Ax2Obj* {.importcpp: "gp_Ax2", header: "gp_Ax2.hxx", bycopy.} = object 
                                                              

  Ax22dObj* {.importcpp: "gp_Ax22d", header: "gp_Ax22d.hxx", bycopy.} = object 
                                                                    

  Ax2dObj* {.importcpp: "gp_Ax2d", header: "gp_Ax2d.hxx", bycopy.} = object 
                                                                 

  Ax3Obj* {.importcpp: "gp_Ax3", header: "gp_Ax3.hxx", bycopy.} = object 
                                                              

  CircObj* {.importcpp: "gp_Circ", header: "gp_Circ.hxx", bycopy.} = object 

  Circ2dObj* {.importcpp: "gp_Circ2d", header: "gp_Circ2d.hxx", bycopy.} = object 
                                                                       

  ConeObj* {.importcpp: "gp_Cone", header: "gp_Cone.hxx", bycopy.} = object 

  CylinderObj* {.importcpp: "gp_Cylinder", header: "gp_Cylinder.hxx", bycopy.} = object 
                                                                             
                                                                             
                                                                             

  DirObj* {.importcpp: "gp_Dir", header: "gp_Dir.hxx", bycopy.} = object 

  Dir2dObj* {.importcpp: "gp_Dir2d", header: "gp_Dir2d.hxx", bycopy.} = object 
                                                                    

  ElipsObj* {.importcpp: "gp_Elips", header: "gp_Elips.hxx", bycopy.} = object 

  Elips2dObj* {.importcpp: "gp_Elips2d", header: "gp_Elips2d.hxx", bycopy.} = object 
                                                                          
                                                                          
                                                                          

  EulerSequenceObj* {.size: sizeof(cint), importcpp: "gp_EulerSequence",
                  header: "gp_EulerSequence.hxx".} = enum 
    EulerAngles,              
    YawPitchRoll,             
    ExtrinsicXYZ, ExtrinsicXZY, ExtrinsicYZX, ExtrinsicYXZ, ExtrinsicZXY,
    ExtrinsicZYX, IntrinsicXYZ, IntrinsicXZY, IntrinsicYZX, IntrinsicYXZ,
    IntrinsicZXY, IntrinsicZYX, 
    ExtrinsicXYX, ExtrinsicXZX, ExtrinsicYZY, ExtrinsicYXY, ExtrinsicZYZ,
    ExtrinsicZXZ, IntrinsicXYX, IntrinsicXZX, IntrinsicYZY, IntrinsicYXY,
    IntrinsicZXZ, IntrinsicZYZ

  GTrsf* {.importcpp: "gp_GTrsf", header: "gp_GTrsf.hxx", bycopy.} = object 
                                                                    

  GTrsf2d* {.importcpp: "gp_GTrsf2d", header: "gp_GTrsf2d.hxx", bycopy.} = object 
                                                                          
                                                                          
                                                                          

  HyprObj* {.importcpp: "gp_Hypr", header: "gp_Hypr.hxx", bycopy.} = object 

  Hypr2dObj* {.importcpp: "gp_Hypr2d", header: "gp_Hypr2d.hxx", bycopy.} = object 
                                                                       
                                                                       

  LinObj* {.importcpp: "gp_Lin", header: "gp_Lin.hxx", bycopy.} = object 
                                                              

  Lin2dObj* {.importcpp: "gp_Lin2d", header: "gp_Lin2d.hxx", bycopy.} = object 
                                                                    
                                                                    

  MatObj* {.importcpp: "gp_Mat", header: "gp_Mat.hxx", bycopy.} = object 

  Mat2dObj* {.importcpp: "gp_Mat2d", header: "gp_Mat2d.hxx", bycopy.} = object 
                                                                    

  ParabObj* {.importcpp: "gp_Parab", header: "gp_Parab.hxx", bycopy.} = object 

  Parab2dObj* {.importcpp: "gp_Parab2d", header: "gp_Parab2d.hxx", bycopy.} = object 
                                                                          
                                                                          
                                                                          

  PlnObj* {.importcpp: "gp_Pln", header: "gp_Pln.hxx", bycopy.} = object 
                                                              
{.push header: "gp_Pnt.hxx".}

  PntObj* {.importcpp: "gp_Pnt", bycopy.} = object 
{.pop.}

  Pnt2dObj* {.importcpp: "gp_Pnt2d", header: "gp_Pnt2d.hxx", bycopy.} = object 

  QuaternionObj* {.importcpp: "gp_Quaternion", header: "gp_Quaternion.hxx", bycopy.} = object 
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   

  QuaternionNLerp* {.importcpp: "gp_QuaternionNLerp",
                    header: "gp_QuaternionNLerp.hxx", bycopy.} = object 
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   

  QuaternionSLerp* {.importcpp: "gp_QuaternionSLerp",
                    header: "gp_QuaternionSLerp.hxx", bycopy.} = object 
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   

  SphereObj* {.importcpp: "gp_Sphere", header: "gp_Sphere.hxx", bycopy.} = object 
                                                                       

  TorusObj* {.importcpp: "gp_Torus", header: "gp_Torus.hxx", bycopy.} = object 

  TrsfObj* {.importcpp: "gp_Trsf", header: "gp_Trsf.hxx", bycopy.} = object 
                                                                 
                                                                 

  Trsf2dObj* {.importcpp: "gp_Trsf2d", header: "gp_Trsf2d.hxx", bycopy.} = object 
                                                                       
                                                                       
                                                                       

  TrsfFormObj* {.size: sizeof(cint), importcpp: "gp_TrsfForm", header: "gp_TrsfForm.hxx".} = enum
    Identity,                 
    Rotation,                 
    Translation,              
    PntMirror,                
    Ax1Mirror,                
    Ax2Mirror,                
    Scale,                    
    CompoundTrsf,             
    Other                     

  VecObj* {.importcpp: "gp_Vec", header: "gp_Vec.hxx", bycopy.} = object 

  XyObj* {.importcpp: "gp_XY", header: "gp_XY.hxx", bycopy.} = object 


  Vec2dObj* {.importcpp: "gp_Vec2d", header: "gp_Vec2d.hxx", bycopy.} = object 







