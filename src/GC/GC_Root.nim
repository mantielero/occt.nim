{.push header: "GC_Root.hxx".}


# Constructors and methods
proc ` new`*(this: var GC_Root, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_Root, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_Root, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_Root, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_Root, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_Root, pointer, pointer)  {.importcpp: "` delete`".}

proc IsDone*(this: GC_Root): bool  {.importcpp: "IsDone".}
  ## Returns true if the construction is successful.

proc Status*(this: GC_Root): gce_ErrorType  {.importcpp: "Status".}
  ## Returns the status of the construction: - gce_Done, if the
  ## construction is successful, or - another value of the gce_ErrorType
  ## enumeration indicating why the construction failed.

{.pop.} # header: "GC_Root.hxx
