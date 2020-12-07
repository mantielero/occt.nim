{.push header: "NCollection_Vec2.hxx".}


# Constructors and methods
#proc constructor_NCollection_Vec2<Element_t>*(): NCollection_Vec2 {.constructor,importcpp: "NCollection_Vec2<Element_t>".}
#proc constructor_NCollection_Vec2<Element_t>*(theXY: Element_t): NCollection_Vec2 {.constructor,importcpp: "NCollection_Vec2<Element_t>".}
#proc constructor_NCollection_Vec2<Element_t>*(theX: Element_t, theY: Element_t): NCollection_Vec2 {.constructor,importcpp: "NCollection_Vec2<Element_t>".}
proc Length*(this: NCollection_Vec2): cint  {.importcpp: "Length".}
#proc SetValues*(this: NCollection_Vec2, theX: Element_t, theY: Element_t)  {.importcpp: "SetValues".}
#proc x*(this: NCollection_Vec2): Element_t  {.importcpp: "x".}
#proc y*(this: NCollection_Vec2): Element_t  {.importcpp: "y".}
#proc xy*(this: NCollection_Vec2): const NCollection_Vec2<Element_t>  {.importcpp: "xy".}
#proc yx*(this: NCollection_Vec2): const NCollection_Vec2<Element_t>  {.importcpp: "yx".}
#proc x*(this: NCollection_Vec2): Element_t &  {.importcpp: "x".}
#proc y*(this: NCollection_Vec2): Element_t &  {.importcpp: "y".}
# proc IsEqual*(this: NCollection_Vec2, theOther: NCollection_Vec2<Element_t>): bool  {.importcpp: "IsEqual".}
# proc operator==*(this: NCollection_Vec2, theOther: NCollection_Vec2<Element_t>): bool  {.importcpp: "operator==".}
# proc operator==*(this: NCollection_Vec2, theOther: NCollection_Vec2<Element_t>): bool  {.importcpp: "operator==".}
# proc operator!=*(this: NCollection_Vec2, theOther: NCollection_Vec2<Element_t>): bool  {.importcpp: "operator!=".}
# proc operator!=*(this: NCollection_Vec2, theOther: NCollection_Vec2<Element_t>): bool  {.importcpp: "operator!=".}
# proc GetData*(this: NCollection_Vec2): const Element_t *  {.importcpp: "GetData".}
#proc ChangeData*(this: NCollection_Vec2): Element_t *  {.importcpp: "ChangeData".}
# proc operator+=*(this: NCollection_Vec2, theAdd: NCollection_Vec2<Element_t>): NCollection_Vec2<Element_t> &  {.importcpp: "operator+=".}
# proc operator-=*(this: NCollection_Vec2, theDec: NCollection_Vec2<Element_t>): NCollection_Vec2<Element_t> &  {.importcpp: "operator-=".}
# proc operator-*(this: NCollection_Vec2): NCollection_Vec2<Element_t>  {.importcpp: "operator-".}
# proc operator*=*(this: NCollection_Vec2, theRight: NCollection_Vec2<Element_t>): NCollection_Vec2<Element_t> &  {.importcpp: "operator*=".}
#proc Multiply*(this: NCollection_Vec2, theFactor: Element_t)  {.importcpp: "Multiply".}
# proc Multiplied*(this: NCollection_Vec2, theFactor: Element_t): NCollection_Vec2<Element_t>  {.importcpp: "Multiplied".}
# proc cwiseMin*(this: NCollection_Vec2, theVec: NCollection_Vec2<Element_t>): NCollection_Vec2<Element_t>  {.importcpp: "cwiseMin".}
# proc cwiseMax*(this: NCollection_Vec2, theVec: NCollection_Vec2<Element_t>): NCollection_Vec2<Element_t>  {.importcpp: "cwiseMax".}
# proc cwiseAbs*(this: NCollection_Vec2): NCollection_Vec2<Element_t>  {.importcpp: "cwiseAbs".}
#proc maxComp*(this: NCollection_Vec2): Element_t  {.importcpp: "maxComp".}
#proc minComp*(this: NCollection_Vec2): Element_t  {.importcpp: "minComp".}
# proc operator*=*(this: NCollection_Vec2, theFactor: Element_t): NCollection_Vec2<Element_t> &  {.importcpp: "operator*=".}
# proc operator/=*(this: NCollection_Vec2, theInvFactor: Element_t): NCollection_Vec2<Element_t> &  {.importcpp: "operator/=".}
# proc operator/=*(this: NCollection_Vec2, theRight: NCollection_Vec2<Element_t>): NCollection_Vec2<Element_t> &  {.importcpp: "operator/=".}
# proc operator**(this: NCollection_Vec2, theFactor: Element_t): NCollection_Vec2<Element_t>  {.importcpp: "operator*".}
# proc operator/*(this: NCollection_Vec2, theInvFactor: Element_t): NCollection_Vec2<Element_t>  {.importcpp: "operator/".}
#proc Dot*(this: NCollection_Vec2, theOther: NCollection_Vec2<Element_t>): Element_t  {.importcpp: "Dot".}
#proc Modulus*(this: NCollection_Vec2): Element_t  {.importcpp: "Modulus".}
#proc SquareModulus*(this: NCollection_Vec2): Element_t  {.importcpp: "SquareModulus".}
#proc DX*(this: NCollection_Vec2): NCollection_Vec2<Element_t>  {.importcpp: "DX".}
#proc DY*(this: NCollection_Vec2): NCollection_Vec2<Element_t>  {.importcpp: "DY".}
{.pop.} # header: "NCollection_Vec2.hxx
