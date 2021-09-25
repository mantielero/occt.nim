{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}
# TODO: what would be better
type
  StandardOStream* = object
  StandardSStream* = object
  NCollectionMat4*[T] = object
  TColStdArray1OfReal* = object
  NCollectionLerp*[T] = object    
  
{.experimental: "callOperator".}

include gp
include gp_Ax1
include gp_Ax2
include gp_Ax22d
include gp_Ax2d
include gp_Ax3
include gp_Circ
include gp_Circ2d
include gp_Cone
include gp_Cylinder
include gp_Dir
include gp_Dir2d
include gp_Elips
include gp_Elips2d
include gp_EulerSequence
include gp_GTrsf
include gp_GTrsf2d
include gp_Hypr
include gp_Hypr2d
include gp_Lin
include gp_Lin2d
include gp_Mat
include gp_Mat2d
include gp_Parab
include gp_Parab2d
include gp_Pln
include gp_Pnt
include gp_Pnt2d
include gp_Quaternion
include gp_QuaternionNLerp
include gp_QuaternionSLerp
include gp_Sphere
include gp_Torus
include gp_Trsf
include gp_Trsf2d
include gp_TrsfForm
include gp_TrsfNLerp
include gp_Vec
include gp_Vec2d
include gp_VectorWithNullMagnitude
include gp_XY
include gp_XYZ


