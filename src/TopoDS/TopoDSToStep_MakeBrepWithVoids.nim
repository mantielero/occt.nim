{.push header: "TopoDSToStep_MakeBrepWithVoids.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeBrepWithVoids*(S: TopoDS_Solid, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeBrepWithVoids {.constructor,importcpp: "TopoDSToStep_MakeBrepWithVoids(@)".}

proc ` new`*(this: var TopoDSToStep_MakeBrepWithVoids, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeBrepWithVoids, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeBrepWithVoids, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeBrepWithVoids, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeBrepWithVoids, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeBrepWithVoids, pointer, pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeBrepWithVoids): Handle[StepShape_BrepWithVoids]  {.importcpp: "Value".}

{.pop.} # header: "TopoDSToStep_MakeBrepWithVoids.hxx
