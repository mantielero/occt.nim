{.push header: "GC_MakeCircle.hxx".}


# Constructors and methods
proc constructor_GC_MakeCircle*(C: gp_Circ): GC_MakeCircle {.constructor,importcpp: "GC_MakeCircle(@)".}
  ## creates a circle from a non persistent circle C by its conversion.

proc constructor_GC_MakeCircle*(A2: gp_Ax2, Radius: Standard_Real): GC_MakeCircle {.constructor,importcpp: "GC_MakeCircle(@)".}
  ## A2 is the local coordinates system of the circle. It is not forbidden
  ## to create a circle with Radius = 0.0 Status is "NegativeRadius" if
  ## Radius < 0.

proc constructor_GC_MakeCircle*(Circ: gp_Circ, Dist: Standard_Real): GC_MakeCircle {.constructor,importcpp: "GC_MakeCircle(@)".}
  ## Make a Circle from Geom <TheCirc> parallel to another Circ <Circ> with
  ## a distance <Dist>. If Dist is greater than zero the result is
  ## enclosing the circle <Circ>, else the result is enclosed by the circle
  ## <Circ>.

proc constructor_GC_MakeCircle*(Circ: gp_Circ, Point: gp_Pnt): GC_MakeCircle {.constructor,importcpp: "GC_MakeCircle(@)".}
  ## Make a Circle from Geom <TheCirc> parallel to another Circ <Circ> and
  ## passing through a Pnt <Point>.

proc constructor_GC_MakeCircle*(P1: gp_Pnt, P2: gp_Pnt, P3: gp_Pnt): GC_MakeCircle {.constructor,importcpp: "GC_MakeCircle(@)".}
  ## Make a Circ from gp <TheCirc> passing through 3 Pnt2d <P1>,<P2>,<P3>.

proc constructor_GC_MakeCircle*(Center: gp_Pnt, Norm: gp_Dir, Radius: Standard_Real): GC_MakeCircle {.constructor,importcpp: "GC_MakeCircle(@)".}
  ## Make a Circle from Geom <TheCirc> with its center <Center> and the
  ## normal of its plane <Norm> and its radius <Radius>.

proc constructor_GC_MakeCircle*(Center: gp_Pnt, PtAxis: gp_Pnt, Radius: Standard_Real): GC_MakeCircle {.constructor,importcpp: "GC_MakeCircle(@)".}
  ## Make a Circle from Geom <TheCirc> with its center <Center> and the
  ## normal of its plane defined by the two points <Center> and <PtAxis>
  ## and its radius <Radius>.

proc constructor_GC_MakeCircle*(Axis: gp_Ax1, Radius: Standard_Real): GC_MakeCircle {.constructor,importcpp: "GC_MakeCircle(@)".}
  ## Make a Circle from Geom <TheCirc> with its center <Center> and its
  ## radius <Radius>.

proc ` new`*(this: var GC_MakeCircle, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeCircle, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeCircle, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeCircle, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeCircle, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeCircle, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeCircle): Handle[Geom_Circle]  {.importcpp: "Value".}
  ## Returns the constructed circle. Exceptions StdFail_NotDone if no
  ## circle is constructed.

{.pop.} # header: "GC_MakeCircle.hxx
