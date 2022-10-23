{.passL:"-lTKMath -ltbb".}
{.passC:"-I/usr/include/opencascade/" .}

type
  PntObj* {.importcpp: "gp_Pnt", header: "gp_Pnt.hxx", bycopy.} = object ## ! Creates a point with zero coordinates.

  Ax1Obj* {.importcpp: "gp_Ax1", header: "gp_Ax1.hxx", bycopy.} = object ## ! Creates an axis object representing Z axis of
                                                              ## ! the reference co-ordinate system.

  XyzObj* {.importcpp: "gp_XYZ", header: "gp_XYZ.hxx", bycopy, pure, inheritable.} = object ## ! Creates an XYZ object with zero co-ordinates (0,0,0)


  Ax2Obj* {.importcpp: "gp_Ax2", header: "gp_Ax2.hxx", bycopy.} = object ## ! Creates an object corresponding to the reference
                                                              ## ! coordinate system (OXYZ).


  TrsfObj* {.importcpp: "gp_Trsf", header: "gp_Trsf.hxx", bycopy.} = object ## ! Returns the identity transformation.
                                                                 ## ! Makes
                                                                 ## orthogonalization of "matrix"

  VecObj* {.importcpp: "gp_Vec", header: "gp_Vec.hxx", bycopy.} = object ## ! Creates a zero vector.


  DirObj* {.importcpp: "gp_Dir", header: "gp_Dir.hxx", bycopy.} = object ## ! Creates a direction corresponding to X axis.

  #FIXME
  Trsf2dObj* {.importcpp: "gp_Trsf2d", header: "gp_Trsf.hxx", bycopy.} = object ## ! Returns the identity transformation.
                                                                 ## ! Makes
                                                                 ## orthogonalization of "matrix"

  Quaternion* {.importcpp: "gp_Trsf2d", header: "gp_Trsf.hxx", bycopy.} = object ## ! Returns the identity transformation.
                                                                 ## ! Makes
                                                                 ## orthogonalization of "matrix"

  Ax3Obj* {.importcpp: "gp_Ax3", header: "gp_Ax3.hxx", bycopy.} = object ## ! Creates an object corresponding to the reference
                                                              ## ! coordinate system (OXYZ).

  TrsfForm*  =object

  Mat* = object

  NCollectionMat4*[T] = object

  #StandardOStream* = object
