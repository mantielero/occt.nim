{.push header: "TopoDSToStep_Root.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_Root*(): TopoDSToStep_Root {.constructor,importcpp: "TopoDSToStep_Root".}

proc ` new`*(this: var TopoDSToStep_Root, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Root, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_Root, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_Root, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_Root, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Root, pointer, pointer)  {.importcpp: "#  delete #".}

proc tolerance*(this: var TopoDSToStep_Root): cdouble  {.importcpp: "Tolerance".}
  ## Returns (modifiable) the tolerance to be used for writing If not set,
  ## starts at 0.0001

proc isDone*(this: TopoDSToStep_Root): bool  {.importcpp: "IsDone".}

{.pop.} # header: "TopoDSToStep_Root.hxx
