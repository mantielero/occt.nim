# /usr/include/opencascade/gp_TrsfNLerp.hxx --> occt/tkMath/gp/gp_TrsfNLerp.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGptrsfnlerp = "/usr/include/opencascade/gp_TrsfNLerp.hxx"
## !!!Ignored construct:  template < > [end of template] class NCollection_Lerp < gp_Trsf > { public : NCollection_Lerp ( ) { } NCollection_Lerp ( const gp_Trsf & theStart , const gp_Trsf & theEnd ) { Init ( theStart , theEnd ) ; } void Init ( const gp_Trsf & theStart , const gp_Trsf & theEnd ) { myTrsfStart = theStart ; myTrsfEnd = theEnd ; myLocLerp . Init ( theStart . TranslationPart ( ) , theEnd . TranslationPart ( ) ) ; myRotLerp . Init ( theStart . GetRotation ( ) , theEnd . GetRotation ( ) ) ; myScaleLerp . Init ( theStart . ScaleFactor ( ) , theEnd . ScaleFactor ( ) ) ; } void Interpolate ( double theT , gp_Trsf & theResult ) const { if ( Abs ( theT - 0.0 ) < Precision :: Confusion ( ) ) { theResult = myTrsfStart ; return ; } else if ( Abs ( theT - 1.0 ) < Precision :: Confusion ( ) ) { theResult = myTrsfEnd ; return ; } gp_XYZ aLoc ; gp_Quaternion aRot ; Standard_Real aScale = 1.0 ; myLocLerp . Interpolate ( theT , aLoc ) ; myRotLerp . Interpolate ( theT , aRot ) ; myScaleLerp . Interpolate ( theT , aScale ) ; theResult = gp_Trsf ( ) ; theResult . SetRotation ( aRot ) ; theResult . SetTranslationPart ( aLoc ) ; theResult . SetScaleFactor ( aScale ) ; } private : NCollection_Lerp < gp_XYZ > myLocLerp ; NCollection_Lerp < Standard_Real > myScaleLerp ; gp_QuaternionNLerp myRotLerp ; gp_Trsf myTrsfStart ; gp_Trsf myTrsfEnd ; } ;
## Error: token expected: ; but got: <!!!

type
  NCollectionLerpgpTrsfNLerp* = NCollectionLerp[GpTrsf]
