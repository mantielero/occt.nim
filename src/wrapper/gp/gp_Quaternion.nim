{.push header: "gp_Quaternion.hxx".}


# Constructors and methods
proc constructor_gp_Quaternion*(): gp_Quaternion {.constructor,importcpp: "gp_Quaternion".}
  ## Creates an identity quaternion

proc constructor_gp_Quaternion*(x: Standard_Real, y: Standard_Real, z: Standard_Real, w: Standard_Real): gp_Quaternion {.constructor,importcpp: "gp_Quaternion(@)".}
  ## Creates quaternion directly from component values

proc constructor_gp_Quaternion*(theToCopy: gp_Quaternion): gp_Quaternion {.constructor,importcpp: "gp_Quaternion(@)".}
  ## Creates copy of another quaternion

proc constructor_gp_Quaternion*(theVecFrom: gp_Vec, theVecTo: gp_Vec): gp_Quaternion {.constructor,importcpp: "gp_Quaternion(@)".}
  ## Creates quaternion representing shortest-arc rotation operator
  ## producing vector theVecTo from vector theVecFrom.

proc constructor_gp_Quaternion*(theVecFrom: gp_Vec, theVecTo: gp_Vec, theHelpCrossVec: gp_Vec): gp_Quaternion {.constructor,importcpp: "gp_Quaternion(@)".}
  ## Creates quaternion representing shortest-arc rotation operator
  ## producing vector theVecTo from vector theVecFrom. Additional vector
  ## theHelpCrossVec defines preferred direction for rotation and is used
  ## when theVecTo and theVecFrom are directed oppositely.

proc constructor_gp_Quaternion*(theAxis: gp_Vec, theAngle: Standard_Real): gp_Quaternion {.constructor,importcpp: "gp_Quaternion(@)".}
  ## Creates quaternion representing rotation on angle theAngle around
  ## vector theAxis

proc constructor_gp_Quaternion*(theMat: gp_Mat): gp_Quaternion {.constructor,importcpp: "gp_Quaternion(@)".}
  ## Creates quaternion from rotation matrix 3*3 (which should be
  ## orthonormal skew-symmetric matrix)

proc ` new`*(this: var gp_Quaternion, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Quaternion, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Quaternion, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Quaternion, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Quaternion, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Quaternion, pointer, pointer)  {.importcpp: "` delete`".}

proc IsEqual*(this: gp_Quaternion, theOther: gp_Quaternion): Standard_Boolean  {.importcpp: "IsEqual".}
  ## Simple equal test without precision

proc SetRotation*(this: var gp_Quaternion, theVecFrom: gp_Vec, theVecTo: gp_Vec)  {.importcpp: "SetRotation".}
  ## Sets quaternion to shortest-arc rotation producing vector theVecTo
  ## from vector theVecFrom. If vectors theVecFrom and theVecTo are
  ## opposite then rotation axis is computed as theVecFrom ^ (1,0,0) or
  ## theVecFrom ^ (0,0,1).

proc SetRotation*(this: var gp_Quaternion, theVecFrom: gp_Vec, theVecTo: gp_Vec, theHelpCrossVec: gp_Vec)  {.importcpp: "SetRotation".}
  ## Sets quaternion to shortest-arc rotation producing vector theVecTo
  ## from vector theVecFrom. If vectors theVecFrom and theVecTo are
  ## opposite then rotation axis is computed as theVecFrom ^
  ## theHelpCrossVec.

proc SetVectorAndAngle*(this: var gp_Quaternion, theAxis: gp_Vec, theAngle: Standard_Real)  {.importcpp: "SetVectorAndAngle".}
  ## Create a unit quaternion from Axis+Angle representation

proc GetVectorAndAngle*(this: gp_Quaternion, theAxis: var gp_Vec, theAngle: var Standard_Real)  {.importcpp: "GetVectorAndAngle".}
  ## Convert a quaternion to Axis+Angle representation, preserve the axis
  ## direction and angle from -PI to +PI

proc SetMatrix*(this: var gp_Quaternion, theMat: gp_Mat)  {.importcpp: "SetMatrix".}
  ## Create a unit quaternion by rotation matrix matrix must contain only
  ## rotation (not scale or shear)

proc GetMatrix*(this: gp_Quaternion): gp_Mat  {.importcpp: "GetMatrix".}
  ## Returns rotation operation as 3*3 matrix

proc SetEulerAngles*(this: var gp_Quaternion, theOrder: gp_EulerSequence, theAlpha: Standard_Real, theBeta: Standard_Real, theGamma: Standard_Real)  {.importcpp: "SetEulerAngles".}
  ## Create a unit quaternion representing rotation defined by generalized
  ## Euler angles

proc GetEulerAngles*(this: gp_Quaternion, theOrder: gp_EulerSequence, theAlpha: var Standard_Real, theBeta: var Standard_Real, theGamma: var Standard_Real)  {.importcpp: "GetEulerAngles".}
  ## Returns Euler angles describing current rotation

proc Set*(this: var gp_Quaternion, x: Standard_Real, y: Standard_Real, z: Standard_Real, w: Standard_Real)  {.importcpp: "Set".}

proc Set*(this: var gp_Quaternion, theQuaternion: gp_Quaternion)  {.importcpp: "Set".}

proc X*(this: gp_Quaternion): Standard_Real  {.importcpp: "X".}

proc Y*(this: gp_Quaternion): Standard_Real  {.importcpp: "Y".}

proc Z*(this: gp_Quaternion): Standard_Real  {.importcpp: "Z".}

proc W*(this: gp_Quaternion): Standard_Real  {.importcpp: "W".}

proc SetIdent*(this: var gp_Quaternion)  {.importcpp: "SetIdent".}
  ## Make identity quaternion (zero-rotation)

proc Reverse*(this: var gp_Quaternion)  {.importcpp: "Reverse".}
  ## Reverse direction of rotation (conjugate quaternion)

proc Reversed*(this: gp_Quaternion): gp_Quaternion  {.importcpp: "Reversed".}
  ## Return rotation with reversed direction (conjugated quaternion)

proc Invert*(this: var gp_Quaternion)  {.importcpp: "Invert".}
  ## Inverts quaternion (both rotation direction and norm)

proc Inverted*(this: gp_Quaternion): gp_Quaternion  {.importcpp: "Inverted".}
  ## Return inversed quaternion q^-1

proc SquareNorm*(this: gp_Quaternion): Standard_Real  {.importcpp: "SquareNorm".}
  ## Returns square norm of quaternion

proc Norm*(this: gp_Quaternion): Standard_Real  {.importcpp: "Norm".}
  ## Returns norm of quaternion

proc Scale*(this: var gp_Quaternion, theScale: Standard_Real)  {.importcpp: "Scale".}
  ## Scale all components by quaternion by theScale; note that rotation is
  ## not changed by this operation (except 0-scaling)

proc `*=`*(this: var gp_Quaternion, theScale: Standard_Real)  {.importcpp: "`*=`".}

proc Scaled*(this: gp_Quaternion, theScale: Standard_Real): gp_Quaternion  {.importcpp: "Scaled".}
  ## Returns scaled quaternion

proc `*`*(this: gp_Quaternion, theScale: Standard_Real): gp_Quaternion  {.importcpp: "`*`".}

proc StabilizeLength*(this: var gp_Quaternion)  {.importcpp: "StabilizeLength".}
  ## Stabilize quaternion length within 1 - 1/4. This operation is a lot
  ## faster than normalization and preserve length goes to 0 or infinity

proc Normalize*(this: var gp_Quaternion)  {.importcpp: "Normalize".}
  ## Scale quaternion that its norm goes to 1. The appearing of 0 magnitude
  ## or near is a error, so we can be sure that can divide by magnitude

proc Normalized*(this: gp_Quaternion): gp_Quaternion  {.importcpp: "Normalized".}
  ## Returns quaternion scaled so that its norm goes to 1.

proc Negated*(this: gp_Quaternion): gp_Quaternion  {.importcpp: "Negated".}
  ## Returns quaternion with all components negated. Note that this
  ## operation does not affect neither rotation operator defined by
  ## quaternion nor its norm.

proc `-`*(this: gp_Quaternion): gp_Quaternion  {.importcpp: "`-`".}

proc Added*(this: gp_Quaternion, theOther: gp_Quaternion): gp_Quaternion  {.importcpp: "Added".}
  ## Makes sum of quaternion components; result is "rotations mix"

proc `+`*(this: gp_Quaternion, theOther: gp_Quaternion): gp_Quaternion  {.importcpp: "`+`".}

proc Subtracted*(this: gp_Quaternion, theOther: gp_Quaternion): gp_Quaternion  {.importcpp: "Subtracted".}
  ## Makes difference of quaternion components; result is "rotations mix"

proc `-`*(this: gp_Quaternion, theOther: gp_Quaternion): gp_Quaternion  {.importcpp: "`-`".}

proc Multiplied*(this: gp_Quaternion, theOther: gp_Quaternion): gp_Quaternion  {.importcpp: "Multiplied".}
  ## Multiply function - work the same as Matrices multiplying. qq' =
  ## (cross(v,v') + wv' + w'v, ww' - dot(v,v')) Result is rotation
  ## combination: q' than q (here q=this, q'=theQ). Notices than: qq' !=
  ## q'q; qq^-1 = q;

proc `*`*(this: gp_Quaternion, theOther: gp_Quaternion): gp_Quaternion  {.importcpp: "`*`".}

proc Add*(this: var gp_Quaternion, theOther: gp_Quaternion)  {.importcpp: "Add".}
  ## Adds componnets of other quaternion; result is "rotations mix"

proc `+=`*(this: var gp_Quaternion, theOther: gp_Quaternion)  {.importcpp: "`+=`".}

proc Subtract*(this: var gp_Quaternion, theOther: gp_Quaternion)  {.importcpp: "Subtract".}
  ## Subtracts componnets of other quaternion; result is "rotations mix"

proc `-=`*(this: var gp_Quaternion, theOther: gp_Quaternion)  {.importcpp: "`-=`".}

proc Multiply*(this: var gp_Quaternion, theOther: gp_Quaternion)  {.importcpp: "Multiply".}
  ## Adds rotation by multiplication

proc `*=`*(this: var gp_Quaternion, theOther: gp_Quaternion)  {.importcpp: "`*=`".}

proc Dot*(this: gp_Quaternion, theOther: gp_Quaternion): Standard_Real  {.importcpp: "Dot".}
  ## Computes inner product / scalar product / Dot

proc GetRotationAngle*(this: gp_Quaternion): Standard_Real  {.importcpp: "GetRotationAngle".}
  ## Return rotation angle from -PI to PI

proc Multiply*(this: gp_Quaternion, theVec: gp_Vec): gp_Vec  {.importcpp: "Multiply".}
  ## Rotates vector by quaternion as rotation operator

proc `*`*(this: gp_Quaternion, theVec: gp_Vec): gp_Vec  {.importcpp: "`*`".}

{.pop.} # header: "gp_Quaternion.hxx
