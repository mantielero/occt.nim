
type
  ElCLib* {.importcpp: "ElCLib", header: "ElCLib.hxx", bycopy.} = object ## ! Return a value in   the  range <UFirst, ULast>  by
                                                                 ## ! adding or removing the period <ULast -  UFirst> to
                                                                 ## ! <U>.
                                                                 ## ! ATTENTION!!!
                                                                 ## !   It is expected but not checked that (ULast > UFirst)

