import geom_types


type
  Geom_Transformation* {.header: "Geom_Transformation.hxx", importcpp: "Geom_Transformation", byref.} = object #of class Standard_Transient
    ## Describes how to construct the following elementary transformations -
    ## translations, - rotations, - symmetries, - scales. The Transformation
    ## class can also be used to construct complex transformations by
    ## combining these elementary transformations. However, these
    ## transformations can never change the type of an object. For example,
    ## the projection transformation can change a circle into an ellipse, and
    ## therefore change the real type of the object. Such a transformation is
    ## forbidden in this environment and cannot be a Geom_Transformation. The
    ## transformation can be represented as follow :

  Handle_Geom_Transformation* {.header: "Geom_Transformation.hxx", importcpp: "Handle_Geom_Transformation".} = handle[Geom_Transformation]
  Base_type* {.header: "Geom_Transformation.hxx", importcpp: "Geom_Transformation::base_type".} = Standard_Transient


{.push header: "Geom_Transformation.hxx".}

proc constructGeom_Transformation*(): Geom_Transformation {.constructor,importcpp: "Geom_Transformation::Geom_Transformation".}
    ## Creates an identity transformation.

proc constructGeom_Transformation*(T: gp_Trsf): Geom_Transformation {.constructor,importcpp: "Geom_Transformation::Geom_Transformation(@)".}
    ## Creates a transient copy of T.

proc get_type_name*(this: var Geom_Transformation): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Transformation): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Transformation): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc setMirror*(this: var Geom_Transformation, thePnt: gp_Pnt)  {.importcpp: "SetMirror".}
    ## Makes the transformation into a symmetrical transformation with
    ## respect to a point P. P is the center of the symmetry.

proc setMirror*(this: var Geom_Transformation, theA1: gp_Ax1)  {.importcpp: "SetMirror".}
    ## Makes the transformation into a symmetrical transformation with
    ## respect to an axis A1. A1 is the center of the axial symmetry.

proc setMirror*(this: var Geom_Transformation, theA2: gp_Ax2)  {.importcpp: "SetMirror".}
    ## Makes the transformation into a symmetrical transformation with
    ## respect to a plane. The plane of the symmetry is defined with the axis
    ## placement A2. It is the plane (Location, XDirection, YDirection).

proc setRotation*(this: var Geom_Transformation, theA1: gp_Ax1, theAng: cdouble)  {.importcpp: "SetRotation".}
    ## Makes the transformation into a rotation. A1 is the axis rotation and
    ## Ang is the angular value of the rotation in radians.

proc setScale*(this: var Geom_Transformation, thePnt: gp_Pnt, theScale: cdouble)  {.importcpp: "SetScale".}
    ## Makes the transformation into a scale. P is the center of the scale
    ## and S is the scaling value.

proc setTransformation*(this: var Geom_Transformation, theFromSystem1: gp_Ax3, theToSystem2: gp_Ax3)  {.importcpp: "SetTransformation".}
    ## Makes a transformation allowing passage from the coordinate system
    ## "FromSystem1" to the coordinate system "ToSystem2". Example : In a C++
    ## implementation : Real x1, y1, z1; // are the coordinates of a point in
    ## the // local system FromSystem1 Real x2, y2, z2; // are the
    ## coordinates of a point in the // local system ToSystem2 gp_Pnt P1 (x1,
    ## y1, z1) Geom_Transformation T; T.SetTransformation (FromSystem1,
    ## ToSystem2); gp_Pnt P2 = P1.Transformed (T); P2.Coord (x2, y2, z2);

proc setTransformation*(this: var Geom_Transformation, theToSystem: gp_Ax3)  {.importcpp: "SetTransformation".}
    ## Makes the transformation allowing passage from the basic coordinate
    ## system {P(0.,0.,0.), VX (1.,0.,0.), VY (0.,1.,0.), VZ (0., 0. ,1.) }
    ## to the local coordinate system defined with the Ax2 ToSystem. Same
    ## utilisation as the previous method. FromSystem1 is defaulted to the
    ## absolute coordinate system.

proc setTranslation*(this: var Geom_Transformation, theVec: gp_Vec)  {.importcpp: "SetTranslation".}
    ## Makes the transformation into a translation. V is the vector of the
    ## translation.

proc setTranslation*(this: var Geom_Transformation, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "SetTranslation".}
    ## Makes the transformation into a translation from the point P1 to the
    ## point P2.

proc setTrsf*(this: var Geom_Transformation, theTrsf: gp_Trsf)  {.importcpp: "SetTrsf".}
    ## Converts the gp_Trsf transformation T into this transformation.

proc isNegative*(this: Geom_Transformation): bool  {.importcpp: "IsNegative".}
    ## Checks whether this transformation is an indirect transformation:
    ## returns true if the determinant of the matrix of the vectorial part of
    ## the transformation is less than 0.

proc form*(this: Geom_Transformation): gp_TrsfForm  {.importcpp: "Form".}
    ## Returns the nature of this transformation as a value of the
    ## gp_TrsfForm enumeration.

proc scaleFactor*(this: Geom_Transformation): cdouble  {.importcpp: "ScaleFactor".}
    ## Returns the scale value of the transformation.

proc trsf*(this: Geom_Transformation): gp_Trsf  {.importcpp: "Trsf".}
    ## Returns a non transient copy of <me>.

proc value*(this: Geom_Transformation, theRow: cint, theCol: cint): cdouble  {.importcpp: "Value".}
    ## Returns the coefficients of the global matrix of transformation. It is
    ## a 3 rows X 4 columns matrix.

proc invert*(this: var Geom_Transformation)  {.importcpp: "Invert".}
    ## Raised if the the transformation is singular. This means that the
    ## ScaleFactor is lower or equal to Resolution from package gp.

proc inverted*(this: Geom_Transformation): handle[Geom_Transformation]  {.importcpp: "Inverted".}
    ## Raised if the the transformation is singular. This means that the
    ## ScaleFactor is lower or equal to Resolution from package gp.

proc multiplied*(this: Geom_Transformation, Other: handle[Geom_Transformation]): handle[Geom_Transformation]  {.importcpp: "Multiplied".}
    ## Computes the transformation composed with Other and <me>. <me> *
    ## Other. Returns a new transformation

proc multiply*(this: var Geom_Transformation, theOther: handle[Geom_Transformation])  {.importcpp: "Multiply".}
    ## Computes the transformation composed with Other and <me> . <me> = <me>
    ## * Other.

proc power*(this: var Geom_Transformation, N: cint)  {.importcpp: "Power".}
    ## Computes the following composition of transformations if N > 0 <me> *
    ## <me> * .......* <me>. if N = 0 Identity if N < 0 <me>.Invert() *
    ## .........* <me>.Invert()

proc powered*(this: Geom_Transformation, N: cint): handle[Geom_Transformation]  {.importcpp: "Powered".}
    ## Raised if N < 0 and if the transformation is not inversible

proc preMultiply*(this: var Geom_Transformation, Other: handle[Geom_Transformation])  {.importcpp: "PreMultiply".}
    ## Computes the matrix of the transformation composed with <me> and
    ## Other. <me> = Other * <me>

proc transforms*(this: Geom_Transformation, theX: var cdouble, theY: var cdouble, theZ: var cdouble)  {.importcpp: "Transforms".}
    ## Applies the transformation <me> to the triplet {X, Y, Z}.

proc copy*(this: Geom_Transformation): handle[Geom_Transformation]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this transformation.

proc dumpJson*(this: Geom_Transformation, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

{.pop.}  # header: "Geom_Transformation.hxx"
