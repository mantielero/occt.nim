import topods_types


type
  TopoDSToStep_Root* {.header: "TopoDSToStep_Root.hxx", importcpp: "TopoDSToStep_Root", byref.} = object
    ## This class implements the common services for all classes of
    ## TopoDSToStep which report error.



{.push header: "TopoDSToStep_Root.hxx".}

proc constructTopoDSToStep_Root*(): TopoDSToStep_Root {.constructor,importcpp: "TopoDSToStep_Root::TopoDSToStep_Root".}

proc ` new`*(this: var TopoDSToStep_Root, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Root, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_Root, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_Root, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_Root, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Root, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc tolerance*(this: var TopoDSToStep_Root): Standard_Real  {.importcpp: "Tolerance".}
    ## Returns (modifiable) the tolerance to be used for writing If not set,
    ## starts at 0.0001

proc isDone*(this: TopoDSToStep_Root): Standard_Boolean  {.importcpp: "IsDone".}

{.pop.}  # header: "TopoDSToStep_Root.hxx"
