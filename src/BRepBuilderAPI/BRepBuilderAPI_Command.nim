import brepbuilderapi_types
import Standard/standard

{.push header: "BRepBuilderAPI_Command.hxx".}

proc constructBRepBuilderAPI_Command*(): BRepBuilderAPI_Command {.constructor,importcpp: "BRepBuilderAPI_Command::BRepBuilderAPI_Command".}
    ## Set done to False.

proc ` new`*(this: var BRepBuilderAPI_Command, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_Command, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_Command, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_Command, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_Command, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_Command, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc isDone*(this: BRepBuilderAPI_Command): Standard_Boolean  {.importcpp: "IsDone".}

proc check*(this: BRepBuilderAPI_Command)  {.importcpp: "Check".}
    ## Raises NotDone if done is false.

proc done*(this: var BRepBuilderAPI_Command)  {.importcpp: "Done".}
    ## Set done to true.

proc notDone*(this: var BRepBuilderAPI_Command)  {.importcpp: "NotDone".}
    ## Set done to false.

{.pop.}  # header: "BRepBuilderAPI_Command.hxx"
