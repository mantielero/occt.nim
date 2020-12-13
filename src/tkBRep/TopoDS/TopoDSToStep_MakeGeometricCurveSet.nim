{.push header: "TopoDSToStep_MakeGeometricCurveSet.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeGeometricCurveSet*(SH: TopoDS_Shape, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeGeometricCurveSet {.constructor,importcpp: "TopoDSToStep_MakeGeometricCurveSet(@)".}

proc ` new`*(this: var TopoDSToStep_MakeGeometricCurveSet, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeGeometricCurveSet, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeGeometricCurveSet, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeGeometricCurveSet, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeGeometricCurveSet, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeGeometricCurveSet, pointer, pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeGeometricCurveSet): Handle[StepShape_GeometricCurveSet]  {.importcpp: "Value".}

{.pop.} # header: "TopoDSToStep_MakeGeometricCurveSet.hxx
