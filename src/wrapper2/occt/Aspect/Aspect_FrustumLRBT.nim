type
  AspectFrustumLRBT*[ElemT] {.importcpp: "Aspect_FrustumLRBT<\'0>",
                             header: "Aspect_FrustumLRBT.hxx", bycopy.} = object
    left* {.importc: "Left".}: ElemT
    right* {.importc: "Right".}: ElemT
    bottom* {.importc: "Bottom".}: ElemT
    top* {.importc: "Top".}: ElemT


proc constructAspectFrustumLRBT*[ElemT](): AspectFrustumLRBT[ElemT] {.constructor,
    importcpp: "Aspect_FrustumLRBT<\'*0>(@)", header: "Aspect_FrustumLRBT.hxx".}
proc constructAspectFrustumLRBT*[ElemT; OtherT](
    theOther: AspectFrustumLRBT[OtherT]): AspectFrustumLRBT[ElemT] {.constructor,
    importcpp: "Aspect_FrustumLRBT<\'*0>(@)", header: "Aspect_FrustumLRBT.hxx".}
proc multiply*[ElemT](this: var AspectFrustumLRBT[ElemT]; theScale: ElemT) {.
    importcpp: "Multiply", header: "Aspect_FrustumLRBT.hxx".}
proc multiplied*[ElemT](this: var AspectFrustumLRBT[ElemT]; theScale: ElemT): AspectFrustumLRBT[
    ElemT] {.importcpp: "Multiplied", header: "Aspect_FrustumLRBT.hxx".}