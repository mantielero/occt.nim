type
  Gp* {.importcpp: "gp", header: "gp.hxx", bycopy.} = object ## ! Method of package gp
                                                     ## !
                                                     ## ! In geometric computations, defines the tolerance criterion
                                                     ## ! used to determine when two numbers can be considered equal.
                                                     ## ! Many class functions use this tolerance criterion, for
                                                     ## ! example, to avoid division by zero in geometric
                                                     ## ! computations. In the documentation, tolerance criterion is
                                                     ## ! always referred to as gp::Resolution().
type
  Ax1Obj* {.importcpp: "gp_Ax1", header: "gp_Ax1.hxx", bycopy.} = object ## ! Creates an axis object representing Z axis of
                                                              ## ! the reference co-ordinate system.
type
  Ax2Obj* {.importcpp: "gp_Ax2", header: "gp_Ax2.hxx", bycopy.} = object ## ! Creates an object corresponding to the reference
                                                              ## ! coordinate system (OXYZ).
type
  Ax22dObj* {.importcpp: "gp_Ax22d", header: "gp_Ax22d.hxx", bycopy.} = object ## ! Creates an object representing the reference
                                                                    ## ! co-ordinate system (OXY).
type
  Ax2dObj* {.importcpp: "gp_Ax2d", header: "gp_Ax2d.hxx", bycopy.} = object ## ! Creates an axis object representing X axis of
                                                                 ## ! the reference co-ordinate system.
type
  Ax3Obj* {.importcpp: "gp_Ax3", header: "gp_Ax3.hxx", bycopy.} = object ## ! Creates an object corresponding to the reference
                                                              ## ! coordinate system (OXYZ).
type
  CircObj* {.importcpp: "gp_Circ", header: "gp_Circ.hxx", bycopy.} = object ## ! Creates an indefinite circle.
type
  Circ2dObj* {.importcpp: "gp_Circ2d", header: "gp_Circ2d.hxx", bycopy.} = object ## ! creates an
                                                                       ## indefinite circle.
type
  ConeObj* {.importcpp: "gp_Cone", header: "gp_Cone.hxx", bycopy.} = object ## ! Creates an indefinite Cone.
type
  CylinderObj* {.importcpp: "gp_Cylinder", header: "gp_Cylinder.hxx", bycopy.} = object ## !
                                                                             ## Creates a
                                                                             ## indefinite
                                                                             ## cylinder.
type
  DirObj* {.importcpp: "gp_Dir", header: "gp_Dir.hxx", bycopy.} = object ## ! Creates a direction corresponding to X axis.
type
  Dir2dObj* {.importcpp: "gp_Dir2d", header: "gp_Dir2d.hxx", bycopy.} = object ## ! Creates a direction
                                                                    ## corresponding to X axis.
type
  ElipsObj* {.importcpp: "gp_Elips", header: "gp_Elips.hxx", bycopy.} = object ## ! Creates an indefinite ellipse.
type
  Elips2dObj* {.importcpp: "gp_Elips2d", header: "gp_Elips2d.hxx", bycopy.} = object ## !
                                                                          ## Creates an
                                                                          ## indefinite
                                                                          ## ellipse.
type
  EulerSequenceObj* {.size: sizeof(cint), importcpp: "gp_EulerSequence",
                  header: "gp_EulerSequence.hxx".} = enum ## ! Classic Euler angles, alias to Intrinsic_ZXZ
    EulerAngles,              ## ! Yaw Pitch Roll (or nautical) angles, alias to Intrinsic_ZYX
    YawPitchRoll,             ##  Tait-Bryan angles (using three different axes)
    ExtrinsicXYZ, ExtrinsicXZY, ExtrinsicYZX, ExtrinsicYXZ, ExtrinsicZXY,
    ExtrinsicZYX, IntrinsicXYZ, IntrinsicXZY, IntrinsicYZX, IntrinsicYXZ,
    IntrinsicZXY, IntrinsicZYX, ##  Proper Euler angles (using two different axes, first and third the same)
    ExtrinsicXYX, ExtrinsicXZX, ExtrinsicYZY, ExtrinsicYXY, ExtrinsicZYZ,
    ExtrinsicZXZ, IntrinsicXYX, IntrinsicXZX, IntrinsicYZY, IntrinsicYXY,
    IntrinsicZXZ, IntrinsicZYZ
type
  GTrsf* {.importcpp: "gp_GTrsf", header: "gp_GTrsf.hxx", bycopy.} = object ## ! Returns the Identity
                                                                    ## transformation.
type
  GTrsf2d* {.importcpp: "gp_GTrsf2d", header: "gp_GTrsf2d.hxx", bycopy.} = object ## !
                                                                          ## returns
                                                                          ## identity
                                                                          ## transformation.
type
  HyprObj* {.importcpp: "gp_Hypr", header: "gp_Hypr.hxx", bycopy.} = object ## ! Creates of an indefinite hyperbola.
type
  Hypr2dObj* {.importcpp: "gp_Hypr2d", header: "gp_Hypr2d.hxx", bycopy.} = object ## ! Creates of an
                                                                       ## indefinite
                                                                       ## hyperbola.
type
  LinObj* {.importcpp: "gp_Lin", header: "gp_Lin.hxx", bycopy.} = object ## ! Creates a Line corresponding to Z axis of the
                                                              ## ! reference coordinate system.
type
  Lin2dObj* {.importcpp: "gp_Lin2d", header: "gp_Lin2d.hxx", bycopy.} = object ## ! Creates a Line
                                                                    ## corresponding to X axis of the
                                                                    ## ! reference coordinate system.
type
  MatObj* {.importcpp: "gp_Mat", header: "gp_Mat.hxx", bycopy.} = object ## ! creates  a matrix with null coefficients.
type
  Mat2dObj* {.importcpp: "gp_Mat2d", header: "gp_Mat2d.hxx", bycopy.} = object ## ! Creates  a matrix with null
                                                                    ## coefficients.
type
  ParabObj* {.importcpp: "gp_Parab", header: "gp_Parab.hxx", bycopy.} = object ## ! Creates an indefinite Parabola.
type
  Parab2dObj* {.importcpp: "gp_Parab2d", header: "gp_Parab2d.hxx", bycopy.} = object ## !
                                                                          ## Creates an
                                                                          ## indefinite
                                                                          ## parabola.
type
  PlnObj* {.importcpp: "gp_Pln", header: "gp_Pln.hxx", bycopy.} = object ## ! Creates a plane coincident with OXY plane of the
                                                              ## ! reference coordinate system.
{.push header: "gp_Pnt.hxx".}
type
  PntObj* {.importcpp: "gp_Pnt", bycopy.} = object ## ! Creates a point with zero coordinates.
{.pop.}
type
  Pnt2dObj* {.importcpp: "gp_Pnt2d", header: "gp_Pnt2d.hxx", bycopy.} = object ## ! Creates a point with zero coordinates.
type
  QuaternionObj* {.importcpp: "gp_Quaternion", header: "gp_Quaternion.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## identity
                                                                                   ## quaternion
type
  QuaternionNLerp* {.importcpp: "gp_QuaternionNLerp",
                    header: "gp_QuaternionNLerp.hxx", bycopy.} = object ## ! Compute interpolated quaternion between two quaternions.
                                                                   ## ! @param theStart first  quaternion
                                                                   ## ! @param theEnd   second quaternion
                                                                   ## ! @param theT normalized interpolation coefficient within 0..1 range,
                                                                   ## !             with 0 pointing to theStart and 1 to theEnd.
                                                                   ## ! Empty constructor,
type
  QuaternionSLerp* {.importcpp: "gp_QuaternionSLerp",
                    header: "gp_QuaternionSLerp.hxx", bycopy.} = object ## ! Compute interpolated quaternion between two quaternions.
                                                                   ## ! @param theStart first  quaternion
                                                                   ## ! @param theEnd   second quaternion
                                                                   ## ! @param theT normalized interpolation coefficient within 0..1 range,
                                                                   ## !             with 0 pointing to theStart and 1 to theEnd.
                                                                   ## ! Empty constructor,
type
  SphereObj* {.importcpp: "gp_Sphere", header: "gp_Sphere.hxx", bycopy.} = object ## ! Creates an
                                                                       ## indefinite sphere.
type
  TorusObj* {.importcpp: "gp_Torus", header: "gp_Torus.hxx", bycopy.} = object ## ! creates an indefinite Torus.
type
  TrsfObj* {.importcpp: "gp_Trsf", header: "gp_Trsf.hxx", bycopy.} = object ## ! Returns the identity transformation.
                                                                 ## ! Makes
                                                                 ## orthogonalization of "matrix"
type
  Trsf2dObj* {.importcpp: "gp_Trsf2d", header: "gp_Trsf2d.hxx", bycopy.} = object ## ! Returns identity
                                                                       ## transformation.
                                                                       ## ! Makes
                                                                       ## orthogonalization of "matrix"
type
  TrsfFormObj* {.size: sizeof(cint), importcpp: "gp_TrsfForm", header: "gp_TrsfForm.hxx".} = enum
    Identity,                 ## !< No transformation (matrix is identity)
    Rotation,                 ## !< Rotation
    Translation,              ## !< Translation
    PntMirror,                ## !< Central symmetry
    Ax1Mirror,                ## !< Rotational symmetry
    Ax2Mirror,                ## !< Bilateral symmetry
    Scale,                    ## !< Scale
    CompoundTrsf,             ## !< Combination of the above transformations
    Other                     ## !< Transformation with not-orthogonal matrix
type
  VecObj* {.importcpp: "gp_Vec", header: "gp_Vec.hxx", bycopy.} = object ## ! Creates a zero vector.
type
  Vec2dObj* {.importcpp: "gp_Vec2d", header: "gp_Vec2d.hxx", bycopy.} = object ## ! Creates a zero vector.
#type
#  HandleGpVectorWithNullMagnitude* = Handle[VectorWithNullMagnitude]
type
  XyObj* {.importcpp: "gp_XY", header: "gp_XY.hxx", bycopy.} = object ## ! Creates XY object with zero coordinates (0,0).
