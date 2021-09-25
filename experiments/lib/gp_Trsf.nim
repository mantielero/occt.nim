import cinterop, gp_Pnt, gp_Dir, gp_Ax1

csource "gp_Trsf.hxx":
  type 
    gp_Trsf* = object of CClass
    
type
  Trsf* = gp_Trsf

#proc newAx1*():Ax1 =
#  Ax1.init()

#proc newAx1*(x:Pnt,y:Dir):Ax1 = 
#  Ax1.init(x, y)


#proc setMirror*(this: var gp_Trsf; P: gp_Pnt)  = #{.importcpp: "SetMirror",
    #header: "gp_Trsf.hxx".}

proc setMirror*(this: var gp_Trsf; d: gp_Ax1) = #{.importcpp: "SetMirror",
    #header: "gp_Trsf.hxx".}
    cexpr^this.SetMirror(d)

#proc setMirror*(this: var gp_Trsf; A2: gp_Ax2) = #{.importcpp: "SetMirror",
    #header: "gp_Trsf.hxx".}

#[


proc constructgp_Trsf*(): gp_Trsf {.constructor, importcpp: "gp_Trsf(@)",
                                 header: "gp_Trsf.hxx".}
proc constructgp_Trsf*(T: gp_Trsf2d): gp_Trsf {.constructor, importcpp: "gp_Trsf(@)",
    header: "gp_Trsf.hxx".}

proc SetRotation*(this: var gp_Trsf; A1: gp_Ax1; Ang: Standard_Real) {.
    importcpp: "SetRotation", header: "gp_Trsf.hxx".}
proc SetRotation*(this: var gp_Trsf; R: gp_Quaternion) {.importcpp: "SetRotation",
    header: "gp_Trsf.hxx".}
proc SetRotationPart*(this: var gp_Trsf; R: gp_Quaternion) {.
    importcpp: "SetRotationPart", header: "gp_Trsf.hxx".}
proc SetScale*(this: var gp_Trsf; P: gp_Pnt; S: Standard_Real) {.importcpp: "SetScale",
    header: "gp_Trsf.hxx".}
proc SetDisplacement*(this: var gp_Trsf; FromSystem1: gp_Ax3; ToSystem2: gp_Ax3) {.
    importcpp: "SetDisplacement", header: "gp_Trsf.hxx".}
proc SetTransformation*(this: var gp_Trsf; FromSystem1: gp_Ax3; ToSystem2: gp_Ax3) {.
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc SetTransformation*(this: var gp_Trsf; ToSystem: gp_Ax3) {.
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc SetTransformation*(this: var gp_Trsf; R: gp_Quaternion; T: gp_Vec) {.
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc SetTranslation*(this: var gp_Trsf; V: gp_Vec) {.importcpp: "SetTranslation",
    header: "gp_Trsf.hxx".}
proc SetTranslation*(this: var gp_Trsf; P1: gp_Pnt; P2: gp_Pnt) {.
    importcpp: "SetTranslation", header: "gp_Trsf.hxx".}
proc SetTranslationPart*(this: var gp_Trsf; V: gp_Vec) {.
    importcpp: "SetTranslationPart", header: "gp_Trsf.hxx".}
proc SetScaleFactor*(this: var gp_Trsf; S: Standard_Real) {.
    importcpp: "SetScaleFactor", header: "gp_Trsf.hxx".}
proc SetForm*(this: var gp_Trsf; P: gp_TrsfForm) {.importcpp: "SetForm",
    header: "gp_Trsf.hxx".}
proc SetValues*(this: var gp_Trsf; a11: Standard_Real; a12: Standard_Real;
               a13: Standard_Real; a14: Standard_Real; a21: Standard_Real;
               a22: Standard_Real; a23: Standard_Real; a24: Standard_Real;
               a31: Standard_Real; a32: Standard_Real; a33: Standard_Real;
               a34: Standard_Real) {.importcpp: "SetValues", header: "gp_Trsf.hxx".}
proc IsNegative*(this: gp_Trsf): Standard_Boolean {.noSideEffect,
    importcpp: "IsNegative", header: "gp_Trsf.hxx".}
proc Form*(this: gp_Trsf): gp_TrsfForm {.noSideEffect, importcpp: "Form",
                                     header: "gp_Trsf.hxx".}
proc ScaleFactor*(this: gp_Trsf): Standard_Real {.noSideEffect,
    importcpp: "ScaleFactor", header: "gp_Trsf.hxx".}
proc TranslationPart*(this: gp_Trsf): gp_XYZ {.noSideEffect,
    importcpp: "TranslationPart", header: "gp_Trsf.hxx".}
proc GetRotation*(this: gp_Trsf; theAxis: var gp_XYZ; theAngle: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "GetRotation", header: "gp_Trsf.hxx".}
proc GetRotation*(this: gp_Trsf): gp_Quaternion {.noSideEffect,
    importcpp: "GetRotation", header: "gp_Trsf.hxx".}
proc VectorialPart*(this: gp_Trsf): gp_Mat {.noSideEffect,
    importcpp: "VectorialPart", header: "gp_Trsf.hxx".}
proc HVectorialPart*(this: gp_Trsf): gp_Mat {.noSideEffect,
    importcpp: "HVectorialPart", header: "gp_Trsf.hxx".}
proc Value*(this: gp_Trsf; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "gp_Trsf.hxx".}
proc Invert*(this: var gp_Trsf) {.importcpp: "Invert", header: "gp_Trsf.hxx".}
## !!!Ignored construct:  Inverted ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  Multiplied ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const gp_Trsf & T ) const { return Multiplied ( T ) ; } ! Computes the transformation composed with <me> and T.
## ! <me> = <me> * T void Multiply ( const gp_Trsf & T ) ;
## Error: identifier expected, but got: *!!!

proc `*=`*(this: var gp_Trsf; T: gp_Trsf) {.importcpp: "(# *= #)", header: "gp_Trsf.hxx".}
proc PreMultiply*(this: var gp_Trsf; T: gp_Trsf) {.importcpp: "PreMultiply",
    header: "gp_Trsf.hxx".}
proc Power*(this: var gp_Trsf; N: Standard_Integer) {.importcpp: "Power",
    header: "gp_Trsf.hxx".}
## !!!Ignored construct:  Powered ( const Standard_Integer N ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transforms*(this: gp_Trsf; X: var Standard_Real; Y: var Standard_Real;
                Z: var Standard_Real) {.noSideEffect, importcpp: "Transforms",
                                     header: "gp_Trsf.hxx".}
proc Transforms*(this: gp_Trsf; Coord: var gp_XYZ) {.noSideEffect,
    importcpp: "Transforms", header: "gp_Trsf.hxx".}
proc GetMat4*[T](this: gp_Trsf; theMat: var NCollection_Mat4[T]) {.noSideEffect,
    importcpp: "GetMat4", header: "gp_Trsf.hxx".}
proc DumpJson*(this: gp_Trsf; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Trsf.hxx".}
proc InitFromJson*(this: var gp_Trsf; theSStream: Standard_SStream;
                  theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "InitFromJson", header: "gp_Trsf.hxx".}

]#