import topods_types


type
  TopoDSToStep_MakeGeometricCurveSet* {.header: "TopoDSToStep_MakeGeometricCurveSet.hxx", importcpp: "TopoDSToStep_MakeGeometricCurveSet", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between a Shape from TopoDS and a
    ## GeometricCurveSet from StepShape in order to create a
    ## GeometricallyBoundedWireframeRepresentation.



{.push header: "TopoDSToStep_MakeGeometricCurveSet.hxx".}

proc constructTopoDSToStep_MakeGeometricCurveSet*(SH: TopoDS_Shape, FP: handle[Transfer_FinderProcess]): TopoDSToStep_MakeGeometricCurveSet {.constructor,importcpp: "TopoDSToStep_MakeGeometricCurveSet::TopoDSToStep_MakeGeometricCurveSet(@)".}

proc ` new`*(this: var TopoDSToStep_MakeGeometricCurveSet, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeGeometricCurveSet, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeGeometricCurveSet, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeGeometricCurveSet, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeGeometricCurveSet, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeGeometricCurveSet, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeGeometricCurveSet): handle[StepShape_GeometricCurveSet]  {.importcpp: "Value".}

{.pop.}  # header: "TopoDSToStep_MakeGeometricCurveSet.hxx"
