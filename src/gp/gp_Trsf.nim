import gp_types

{.push header: "gp_Trsf.hxx".}


# Constructors and methods
proc Trsf*(): gp_Trsf {.constructor,importcpp: "gp_Trsf".}
  ## Returns the identity transformation.

proc Trsf*(T: gp_Trsf2d): gp_Trsf {.constructor,importcpp: "gp_Trsf(@)".}
  ## Creates a 3D transformation from the 2D transformation T. The
  ## resulting transformation has a homogeneous vectorial part, V3, and a
  ## translation part, T3, built from T: a11 a12 0 a13 V3 = a21 a22 0 T3 =
  ## a23 0 0 1. 0 It also has the same scale factor as T. This guarantees
  ## (by projection) that the transformation which would be performed by T
  ## in a plane (2D space) is performed by the resulting transformation in
  ## the xOy plane of the 3D space, (i.e. in the plane defined by the
  ## origin (0., 0., 0.) and the vectors DX (1., 0., 0.), and DY (0., 1.,
  ## 0.)). The scale factor is applied to the entire space.

#[
proc ` new`*(this: var gp_Trsf, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Trsf, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Trsf, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Trsf, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Trsf, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Trsf, pointer, pointer)  {.importcpp: "` delete`".}
]#

proc setMirror*(this: var gp_Trsf, P: gp_Pnt)  {.importcpp: "SetMirror".}
  ## Makes the transformation into a symmetrical transformation. P is the
  ## center of the symmetry.

proc setMirror*(this: var gp_Trsf, A1: gp_Ax1)  {.importcpp: "SetMirror".}
  ## Makes the transformation into a symmetrical transformation. A1 is the
  ## center of the axial symmetry.

proc setMirror*(this: var gp_Trsf, A2: gp_Ax2)  {.importcpp: "SetMirror".}
  ## Makes the transformation into a symmetrical transformation. A2 is the
  ## center of the planar symmetry and defines the plane of symmetry by its
  ## origin, "X Direction" and "Y Direction".

proc setRotation*(this: var gp_Trsf, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "SetRotation".}
  ## Changes the transformation into a rotation. A1 is the rotation axis
  ## and Ang is the angular value of the rotation in radians.

proc setRotation*(this: var gp_Trsf, R: gp_Quaternion)  {.importcpp: "SetRotation".}
  ## Changes the transformation into a rotation defined by quaternion. Note
  ## that rotation is performed around origin, i.e. no translation is
  ## involved.

proc setScale*(this: var gp_Trsf, P: gp_Pnt, S: cdouble)  {.importcpp: "SetScale".}
  ## Changes the transformation into a scale. P is the center of the scale
  ## and S is the scaling value. Raises ConstructionError If <S> is null.

proc setDisplacement*(this: var gp_Trsf, FromSystem1: gp_Ax3, ToSystem2: gp_Ax3)  {.importcpp: "SetDisplacement".}
  ## Modifies this transformation so that it transforms the coordinate
  ## system defined by FromSystem1 into the one defined by ToSystem2. After
  ## this modification, this transformation transforms: - the origin of
  ## FromSystem1 into the origin of ToSystem2, - the "X Direction" of
  ## FromSystem1 into the "X Direction" of ToSystem2, - the "Y Direction"
  ## of FromSystem1 into the "Y Direction" of ToSystem2, and - the "main
  ## Direction" of FromSystem1 into the "main Direction" of ToSystem2.
  ## Warning When you know the coordinates of a point in one coordinate
  ## system and you want to express these coordinates in another one, do
  ## not use the transformation resulting from this function. Use the
  ## transformation that results from SetTransformation instead.
  ## SetDisplacement and SetTransformation create related transformations:
  ## the vectorial part of one is the inverse of the vectorial part of the
  ## other.

proc SsetTransformation*(this: var gp_Trsf, FromSystem1: gp_Ax3, ToSystem2: gp_Ax3)  {.importcpp: "SetTransformation".}
  ## Modifies this transformation so that it transforms the coordinates of
  ## any point, (x, y, z), relative to a source coordinate system into the
  ## coordinates (x', y', z') which are relative to a target coordinate
  ## system, but which represent the same point The transformation is from
  ## the coordinate system "FromSystem1" to the coordinate system
  ## "ToSystem2". Example : In a C++ implementation : Real x1, y1, z1; //
  ## are the coordinates of a point in the // local system FromSystem1 Real
  ## x2, y2, z2; // are the coordinates of a point in the // local system
  ## ToSystem2 gp_Pnt P1 (x1, y1, z1) Trsf T; T.SetTransformation
  ## (FromSystem1, ToSystem2); gp_Pnt P2 = P1.Transformed (T); P2.Coord
  ## (x2, y2, z2);

proc setTransformation*(this: var gp_Trsf, ToSystem: gp_Ax3)  {.importcpp: "SetTransformation".}
  ## Modifies this transformation so that it transforms the coordinates of
  ## any point, (x, y, z), relative to a source coordinate system into the
  ## coordinates (x', y', z') which are relative to a target coordinate
  ## system, but which represent the same point The transformation is from
  ## the default coordinate system {P(0.,0.,0.), VX (1.,0.,0.), VY
  ## (0.,1.,0.), VZ (0., 0. ,1.) } to the local coordinate system defined
  ## with the Ax3 ToSystem. Use in the same way as the previous method.
  ## FromSystem1 is defaulted to the absolute coordinate system.

proc setTransformation*(this: var gp_Trsf, R: gp_Quaternion, T: gp_Vec)  {.importcpp: "SetTransformation".}
  ## Sets transformation by directly specified rotation and translation.

proc setTranslation*(this: var gp_Trsf, V: gp_Vec)  {.importcpp: "SetTranslation".}
  ## Changes the transformation into a translation. V is the vector of the
  ## translation.

proc setTranslation*(this: var gp_Trsf, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "SetTranslation".}
  ## Makes the transformation into a translation where the translation
  ## vector is the vector (P1, P2) defined from point P1 to point P2.

proc setTranslationPart*(this: var gp_Trsf, V: gp_Vec)  {.importcpp: "SetTranslationPart".}
  ## Replaces the translation vector with the vector V.

proc setScaleFactor*(this: var gp_Trsf, S: cdouble)  {.importcpp: "SetScaleFactor".}
  ## Modifies the scale factor. Raises ConstructionError If S is null.

proc setForm*(this: var gp_Trsf, P: gp_TrsfForm)  {.importcpp: "SetForm".}

proc setValues*(this: var gp_Trsf, a11: cdouble, a12: cdouble, a13: cdouble, a14: cdouble, a21: cdouble, a22: cdouble, a23: cdouble, a24: cdouble, a31: cdouble, a32: cdouble, a33: cdouble, a34: cdouble)  {.importcpp: "SetValues".}
  ## Sets the coefficients of the transformation. The transformation of the
  ## point x,y,z is the point x',y',z' with :

proc isNegative*(this: gp_Trsf): bool  {.importcpp: "IsNegative".}
  ## Returns true if the determinant of the vectorial part of this
  ## transformation is negative.

proc form*(this: gp_Trsf): gp_TrsfForm  {.importcpp: "Form".}
  ## Returns the nature of the transformation. It can be: an identity
  ## transformation, a rotation, a translation, a mirror transformation
  ## (relative to a point, an axis or a plane), a scaling transformation,
  ## or a compound transformation.

proc scaleFactor*(this: gp_Trsf): cdouble  {.importcpp: "ScaleFactor".}
  ## Returns the scale factor.

proc translationPart*(this: gp_Trsf): gp_XYZ  {.importcpp: "TranslationPart".}
  ## Returns the translation part of the transformation's matrix

proc getRotation*(this: gp_Trsf, theAxis: var gp_XYZ, theAngle: var cdouble): bool  {.importcpp: "GetRotation".}
  ## Returns the boolean True if there is non-zero rotation. In the
  ## presence of rotation, the output parameters store the axis and the
  ## angle of rotation. The method always returns positive value
  ## "theAngle", i.e., 0. < theAngle <= PI. Note that this rotation is
  ## defined only by the vectorial part of the transformation; generally
  ## you would need to check also the translational part to obtain the axis
  ## (gp_Ax1) of rotation.

proc getRotation*(this: gp_Trsf): gp_Quaternion  {.importcpp: "GetRotation".}
  ## Returns quaternion representing rotational part of the transformation.

proc vectorialPart*(this: gp_Trsf): gp_Mat  {.importcpp: "VectorialPart".}
  ## Returns the vectorial part of the transformation. It is a 3*3 matrix
  ## which includes the scale factor.

proc hVectorialPart*(this: gp_Trsf): gp_Mat  {.importcpp: "HVectorialPart".}
  ## Computes the homogeneous vectorial part of the transformation. It is a
  ## 3*3 matrix which doesn't include the scale factor. In other words, the
  ## vectorial part of this transformation is equal to its homogeneous
  ## vectorial part, multiplied by the scale factor. The coefficients of
  ## this matrix must be multiplied by the scale factor to obtain the
  ## coefficients of the transformation.

proc value*(this: gp_Trsf, Row: cint, Col: cint): cdouble  {.importcpp: "Value".}
  ## Returns the coefficients of the transformation's matrix. It is a 3
  ## rows * 4 columns matrix. This coefficient includes the scale factor.
  ## Raises OutOfRanged if Row < 1 or Row > 3 or Col < 1 or Col > 4

proc invert*(this: var gp_Trsf)  {.importcpp: "Invert".}

proc inverted*(this: gp_Trsf): gp_Trsf  {.importcpp: "Inverted".}
  ## Computes the reverse transformation Raises an exception if the matrix
  ## of the transformation is not inversible, it means that the scale
  ## factor is lower or equal to Resolution from package gp. Computes the
  ## transformation composed with T and <me>. In a C++ implementation you
  ## can also write Tcomposed = <me> * T. Example : Trsf T1, T2, Tcomp;
  ## ............... Tcomp = T2.Multiplied(T1); // or (Tcomp = T2 * T1) Pnt
  ## P1(10.,3.,4.); Pnt P2 = P1.Transformed(Tcomp); //using Tcomp Pnt P3 =
  ## P1.Transformed(T1); //using T1 then T2 P3.Transform(T2); // P3 = P2
  ## !!!

proc multiplied*(this: gp_Trsf, T: gp_Trsf): gp_Trsf  {.importcpp: "Multiplied".}

proc `*`*(this: gp_Trsf, T: gp_Trsf): gp_Trsf  {.importcpp: "# * #".}

proc multiply*(this: var gp_Trsf, T: gp_Trsf)  {.importcpp: "Multiply".}
  ## Computes the transformation composed with <me> and T. <me> = <me> * T

proc `*=`*(this: var gp_Trsf, T: gp_Trsf)  {.importcpp: "# *= #".}

proc preMultiply*(this: var gp_Trsf, T: gp_Trsf)  {.importcpp: "PreMultiply".}
  ## Computes the transformation composed with <me> and T. <me> = T * <me>

proc power*(this: var gp_Trsf, N: cint)  {.importcpp: "Power".}

proc powered*(this: gp_Trsf, N: cint): gp_Trsf  {.importcpp: "Powered".}
  ## Computes the following composition of transformations <me> * <me> *
  ## .......* <me>, N time. if N = 0 <me> = Identity if N < 0 <me> =
  ## <me>.Inverse() *...........* <me>.Inverse().

proc transforms*(this: gp_Trsf, X: var cdouble, Y: var cdouble, Z: var cdouble)  {.importcpp: "Transforms".}

proc transforms*(this: gp_Trsf, Coord: var gp_XYZ)  {.importcpp: "Transforms".}
  ## Transformation of a triplet XYZ with a Trsf

#[
proc dumpJson*(this: gp_Trsf, theOStream: var Standard_OStream, theDepth: cint)  {.importcpp: "DumpJson".}
  ## Dumps the content of me into the stream
]#

proc orthogonalize*(this: var gp_Trsf)  {.importcpp: "Orthogonalize".}
  ## Makes orthogonalization of "matrix"

{.pop.} # header: "gp_Trsf.hxx
