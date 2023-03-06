# PROVIDES: Gp gp_Ax1 gp_Ax2 gp_Ax22d gp_Ax2d gp_Ax3 gp_Circ gp_Circ2d gp_Cone gp_Cylinder gp_Dir gp_Dir2d gp_Elips gp_Elips2d gp_EulerSequence GTrsf GTrsf2d gp_Hypr gp_Hypr2d gp_Lin gp_Lin2d gp_Mat gp_Mat2d gp_Parab gp_Parab2d gp_Pln gp_Pnt gp_Pnt2d gp_Quaternion QuaternionNLerp QuaternionSLerp gp_Sphere gp_Torus gp_Trsf gp_Trsf2d gp_TrsfForm gp_Vec gp_Xy gp_Xyz gp_Vec2d
# DEPENDS:

type
  Gp* {.importcpp: "gp", header: "gp.hxx", bycopy.} = object 

  gp_Ax1* {.importcpp: "gp_Ax1", header: "gp_Ax1.hxx", bycopy.} = object 

  gp_Ax2* {.importcpp: "gp_Ax2", header: "gp_Ax2.hxx", bycopy.} = object 

  gp_Ax22d* {.importcpp: "gp_Ax22d", header: "gp_Ax22d.hxx", bycopy.} = object 

  gp_Ax2d* {.importcpp: "gp_Ax2d", header: "gp_Ax2d.hxx", bycopy.} = object 

  gp_Ax3* {.importcpp: "gp_Ax3", header: "gp_Ax3.hxx", bycopy.} = object 

  gp_Circ* {.importcpp: "gp_Circ", header: "gp_Circ.hxx", bycopy.} = object 

  gp_Circ2d* {.importcpp: "gp_Circ2d", header: "gp_Circ2d.hxx", bycopy.} = object 

  gp_Cone* {.importcpp: "gp_Cone", header: "gp_Cone.hxx", bycopy.} = object 

  gp_Cylinder* {.importcpp: "gp_Cylinder", header: "gp_Cylinder.hxx", bycopy.} = object 

  gp_Dir* {.importcpp: "gp_Dir", header: "gp_Dir.hxx", bycopy.} = object 

  gp_Dir2d* {.importcpp: "gp_Dir2d", header: "gp_Dir2d.hxx", bycopy.} = object 

  gp_Elips* {.importcpp: "gp_Elips", header: "gp_Elips.hxx", bycopy.} = object 

  gp_Elips2d* {.importcpp: "gp_Elips2d", header: "gp_Elips2d.hxx", bycopy.} = object 

  gp_EulerSequence* {.size: sizeof(cint), importcpp: "gp_EulerSequence",
                  header: "gp_EulerSequence.hxx".} = enum 
    EulerAngles,              
    YawPitchRoll,             
    ExtrinsicXYZ, ExtrinsicXZY, ExtrinsicYZX, ExtrinsicYXZ, ExtrinsicZXY,
    ExtrinsicZYX, IntrinsicXYZ, IntrinsicXZY, IntrinsicYZX, IntrinsicYXZ,
    IntrinsicZXY, IntrinsicZYX, 
    ExtrinsicXYX, ExtrinsicXZX, ExtrinsicYZY, ExtrinsicYXY, ExtrinsicZYZ,
    ExtrinsicZXZ, IntrinsicXYX, IntrinsicXZX, IntrinsicYZY, IntrinsicYXY,
    IntrinsicZXZ, IntrinsicZYZ

  gp_GTrsf* {.importcpp: "gp_GTrsf", header: "gp_GTrsf.hxx", bycopy.} = object 

  gp_GTrsf2d* {.importcpp: "gp_GTrsf2d", header: "gp_GTrsf2d.hxx", bycopy.} = object 

  gp_Hypr* {.importcpp: "gp_Hypr", header: "gp_Hypr.hxx", bycopy.} = object 

  gp_Hypr2d* {.importcpp: "gp_Hypr2d", header: "gp_Hypr2d.hxx", bycopy.} = object 

  gp_Lin* {.importcpp: "gp_Lin", header: "gp_Lin.hxx", bycopy.} = object 

  gp_Lin2d* {.importcpp: "gp_Lin2d", header: "gp_Lin2d.hxx", bycopy.} = object 

  gp_Mat* {.importcpp: "gp_Mat", header: "gp_Mat.hxx", bycopy.} = object 

  gp_Mat2d* {.importcpp: "gp_Mat2d", header: "gp_Mat2d.hxx", bycopy.} = object 

  gp_Parab* {.importcpp: "gp_Parab", header: "gp_Parab.hxx", bycopy.} = object 

  gp_Parab2d* {.importcpp: "gp_Parab2d", header: "gp_Parab2d.hxx", bycopy.} = object 

  gp_Pln* {.importcpp: "gp_Pln", header: "gp_Pln.hxx", bycopy.} = object 

  gp_Pnt* {.importcpp: "gp_Pnt", header: "gp_Pnt.hxx", bycopy.} = object 

  gp_Pnt2d* {.importcpp: "gp_Pnt2d", header: "gp_Pnt2d.hxx", bycopy.} = object 

  gp_Quaternion* {.importcpp: "gp_Quaternion", header: "gp_Quaternion.hxx", bycopy.} = object 

  QuaternionNLerp* {.importcpp: "gp_QuaternionNLerp",
                    header: "gp_QuaternionNLerp.hxx", bycopy.} = object 

  QuaternionSLerp* {.importcpp: "gp_QuaternionSLerp",
                    header: "gp_QuaternionSLerp.hxx", bycopy.} = object 

  gp_Sphere* {.importcpp: "gp_Sphere", header: "gp_Sphere.hxx", bycopy.} = object 

  gp_Torus* {.importcpp: "gp_Torus", header: "gp_Torus.hxx", bycopy.} = object 

  gp_Trsf* {.importcpp: "gp_Trsf", header: "gp_Trsf.hxx", bycopy.} = object 

  gp_Trsf2d* {.importcpp: "gp_Trsf2d", header: "gp_Trsf2d.hxx", bycopy.} = object 

  gp_TrsfForm* {.size: sizeof(cint), importcpp: "gp_TrsfForm", header: "gp_TrsfForm.hxx".} = enum
    Identity,                 
    Rotation,                 
    Translation,              
    PntMirror,                
    Ax1Mirror,                
    Ax2Mirror,                
    Scale,                    
    CompoundTrsf,             
    Other                     

  gp_Vec* {.importcpp: "gp_Vec", header: "gp_Vec.hxx", bycopy.} = object 

  gp_Xy* {.importcpp: "gp_XY", header: "gp_XY.hxx", bycopy.} = object 

  gp_Xyz* {.importcpp: "gp_XYZ", header: "gp_XYZ.hxx", bycopy, pure, inheritable.} = object 

  #gp_Xyz* {.importcpp: "gp_XYZ", header: "gp_XYZ.hxx", bycopy, pure, inheritable.} = object 
  gp_Vec2d* {.importcpp: "gp_Vec2d", header: "gp_Vec2d.hxx", bycopy.} = object 

