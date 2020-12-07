{.push header: "NCollection_Vec3.hxx".}


# Constructors and methods
proc constructor_NCollection_Vec3<Element_t>*(): NCollection_Vec3 {.constructor,importcpp: "NCollection_Vec3<Element_t>".}
proc constructor_NCollection_Vec3<Element_t>*(theValue: Element_t): NCollection_Vec3 {.constructor,importcpp: "NCollection_Vec3<Element_t>".}
proc constructor_NCollection_Vec3<Element_t>*(theX: Element_t, theY: Element_t, theZ: Element_t): NCollection_Vec3 {.constructor,importcpp: "NCollection_Vec3<Element_t>".}
proc constructor_NCollection_Vec3<Element_t>*(theVec2: NCollection_Vec2<Element_t>, theZ: Element_t): NCollection_Vec3 {.constructor,importcpp: "NCollection_Vec3<Element_t>".}
proc Length*(this: NCollection_Vec3): int  {.importcpp: "Length".}
proc SetValues*(this: NCollection_Vec3, theX: Element_t, theY: Element_t, theZ: Element_t)  {.importcpp: "SetValues".}
proc SetValues*(this: NCollection_Vec3, theVec2: NCollection_Vec2<Element_t>, theZ: Element_t)  {.importcpp: "SetValues".}
proc x*(this: NCollection_Vec3): Element_t  {.importcpp: "x".}
proc r*(this: NCollection_Vec3): Element_t  {.importcpp: "r".}
proc y*(this: NCollection_Vec3): Element_t  {.importcpp: "y".}
proc g*(this: NCollection_Vec3): Element_t  {.importcpp: "g".}
proc z*(this: NCollection_Vec3): Element_t  {.importcpp: "z".}
proc b*(this: NCollection_Vec3): Element_t  {.importcpp: "b".}
proc xy*(this: NCollection_Vec3): const NCollection_Vec2<Element_t>  {.importcpp: "xy".}
proc yx*(this: NCollection_Vec3): const NCollection_Vec2<Element_t>  {.importcpp: "yx".}
proc xz*(this: NCollection_Vec3): const NCollection_Vec2<Element_t>  {.importcpp: "xz".}
proc zx*(this: NCollection_Vec3): const NCollection_Vec2<Element_t>  {.importcpp: "zx".}
proc yz*(this: NCollection_Vec3): const NCollection_Vec2<Element_t>  {.importcpp: "yz".}
proc zy*(this: NCollection_Vec3): const NCollection_Vec2<Element_t>  {.importcpp: "zy".}
proc xyz*(this: NCollection_Vec3): const NCollection_Vec3<Element_t>  {.importcpp: "xyz".}
proc xzy*(this: NCollection_Vec3): const NCollection_Vec3<Element_t>  {.importcpp: "xzy".}
proc yxz*(this: NCollection_Vec3): const NCollection_Vec3<Element_t>  {.importcpp: "yxz".}
proc yzx*(this: NCollection_Vec3): const NCollection_Vec3<Element_t>  {.importcpp: "yzx".}
proc zyx*(this: NCollection_Vec3): const NCollection_Vec3<Element_t>  {.importcpp: "zyx".}
proc zxy*(this: NCollection_Vec3): const NCollection_Vec3<Element_t>  {.importcpp: "zxy".}
proc x*(this: NCollection_Vec3): Element_t &  {.importcpp: "x".}
proc r*(this: NCollection_Vec3): Element_t &  {.importcpp: "r".}
proc y*(this: NCollection_Vec3): Element_t &  {.importcpp: "y".}
proc g*(this: NCollection_Vec3): Element_t &  {.importcpp: "g".}
proc z*(this: NCollection_Vec3): Element_t &  {.importcpp: "z".}
proc b*(this: NCollection_Vec3): Element_t &  {.importcpp: "b".}
proc IsEqual*(this: NCollection_Vec3, theOther: NCollection_Vec3<Element_t>): bool  {.importcpp: "IsEqual".}
proc operator==*(this: NCollection_Vec3, theOther: NCollection_Vec3<Element_t>): bool  {.importcpp: "operator==".}
proc operator==*(this: NCollection_Vec3, theOther: NCollection_Vec3<Element_t>): bool  {.importcpp: "operator==".}
proc operator!=*(this: NCollection_Vec3, theOther: NCollection_Vec3<Element_t>): bool  {.importcpp: "operator!=".}
proc operator!=*(this: NCollection_Vec3, theOther: NCollection_Vec3<Element_t>): bool  {.importcpp: "operator!=".}
proc GetData*(this: NCollection_Vec3): const Element_t *  {.importcpp: "GetData".}
proc ChangeData*(this: NCollection_Vec3): Element_t *  {.importcpp: "ChangeData".}
proc operator+=*(this: NCollection_Vec3, theAdd: NCollection_Vec3<Element_t>): NCollection_Vec3<Element_t> &  {.importcpp: "operator+=".}
proc operator-*(this: NCollection_Vec3): NCollection_Vec3<Element_t>  {.importcpp: "operator-".}
proc operator-=*(this: NCollection_Vec3, theDec: NCollection_Vec3<Element_t>): NCollection_Vec3<Element_t> &  {.importcpp: "operator-=".}
proc Multiply*(this: NCollection_Vec3, theFactor: Element_t)  {.importcpp: "Multiply".}
proc operator*=*(this: NCollection_Vec3, theRight: NCollection_Vec3<Element_t>): NCollection_Vec3<Element_t> &  {.importcpp: "operator*=".}
proc operator*=*(this: NCollection_Vec3, theFactor: Element_t): NCollection_Vec3<Element_t> &  {.importcpp: "operator*=".}
proc operator**(this: NCollection_Vec3, theFactor: Element_t): NCollection_Vec3<Element_t>  {.importcpp: "operator*".}
proc Multiplied*(this: NCollection_Vec3, theFactor: Element_t): NCollection_Vec3<Element_t>  {.importcpp: "Multiplied".}
proc cwiseMin*(this: NCollection_Vec3, theVec: NCollection_Vec3<Element_t>): NCollection_Vec3<Element_t>  {.importcpp: "cwiseMin".}
proc cwiseMax*(this: NCollection_Vec3, theVec: NCollection_Vec3<Element_t>): NCollection_Vec3<Element_t>  {.importcpp: "cwiseMax".}
proc cwiseAbs*(this: NCollection_Vec3): NCollection_Vec3<Element_t>  {.importcpp: "cwiseAbs".}
proc maxComp*(this: NCollection_Vec3): Element_t  {.importcpp: "maxComp".}
proc minComp*(this: NCollection_Vec3): Element_t  {.importcpp: "minComp".}
proc operator/=*(this: NCollection_Vec3, theInvFactor: Element_t): NCollection_Vec3<Element_t> &  {.importcpp: "operator/=".}
proc operator/=*(this: NCollection_Vec3, theRight: NCollection_Vec3<Element_t>): NCollection_Vec3<Element_t> &  {.importcpp: "operator/=".}
proc operator/*(this: NCollection_Vec3, theInvFactor: Element_t): NCollection_Vec3<Element_t>  {.importcpp: "operator/".}
proc Dot*(this: NCollection_Vec3, theOther: NCollection_Vec3<Element_t>): Element_t  {.importcpp: "Dot".}
proc Modulus*(this: NCollection_Vec3): Element_t  {.importcpp: "Modulus".}
proc SquareModulus*(this: NCollection_Vec3): Element_t  {.importcpp: "SquareModulus".}
proc Normalize*(this: NCollection_Vec3)  {.importcpp: "Normalize".}
proc Normalized*(this: NCollection_Vec3): NCollection_Vec3<Element_t>  {.importcpp: "Normalized".}
proc Cross*(this: NCollection_Vec3, theVec1: NCollection_Vec3<Element_t>, theVec2: NCollection_Vec3<Element_t>): NCollection_Vec3<Element_t>  {.importcpp: "Cross".}
proc GetLERP*(this: NCollection_Vec3, theFrom: NCollection_Vec3<Element_t>, theTo: NCollection_Vec3<Element_t>, theT: Element_t): NCollection_Vec3<Element_t>  {.importcpp: "GetLERP".}
proc DX*(this: NCollection_Vec3): NCollection_Vec3<Element_t>  {.importcpp: "DX".}
proc DY*(this: NCollection_Vec3): NCollection_Vec3<Element_t>  {.importcpp: "DY".}
proc DZ*(this: NCollection_Vec3): NCollection_Vec3<Element_t>  {.importcpp: "DZ".}
{.pop.} # header: "NCollection_Vec3.hxx
