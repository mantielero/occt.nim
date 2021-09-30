##  Created on: 1994-09-01
##  Created by: Marie Jose MARTZ
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of IGESData_IGESModel"
discard "forward decl of IGESToBRep_Actor"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of TopoDS_Shape"
type
  IGESToBRepReader* {.importcpp: "IGESToBRep_Reader",
                     header: "IGESToBRep_Reader.hxx", bycopy.} = object ## ! Creates a Reader


proc constructIGESToBRepReader*(): IGESToBRepReader {.constructor,
    importcpp: "IGESToBRep_Reader(@)", header: "IGESToBRep_Reader.hxx".}
proc loadFile*(this: var IGESToBRepReader; filename: StandardCString): cint {.
    importcpp: "LoadFile", header: "IGESToBRep_Reader.hxx".}
proc setModel*(this: var IGESToBRepReader; model: Handle[IGESDataIGESModel]) {.
    importcpp: "SetModel", header: "IGESToBRep_Reader.hxx".}
proc model*(this: IGESToBRepReader): Handle[IGESDataIGESModel] {.noSideEffect,
    importcpp: "Model", header: "IGESToBRep_Reader.hxx".}
proc setTransientProcess*(this: var IGESToBRepReader;
                         tp: Handle[TransferTransientProcess]) {.
    importcpp: "SetTransientProcess", header: "IGESToBRep_Reader.hxx".}
proc transientProcess*(this: IGESToBRepReader): Handle[TransferTransientProcess] {.
    noSideEffect, importcpp: "TransientProcess", header: "IGESToBRep_Reader.hxx".}
proc actor*(this: IGESToBRepReader): Handle[IGESToBRepActor] {.noSideEffect,
    importcpp: "Actor", header: "IGESToBRep_Reader.hxx".}
proc clear*(this: var IGESToBRepReader) {.importcpp: "Clear",
                                      header: "IGESToBRep_Reader.hxx".}
proc check*(this: IGESToBRepReader; withprint: bool): bool {.noSideEffect,
    importcpp: "Check", header: "IGESToBRep_Reader.hxx".}
proc transferRoots*(this: var IGESToBRepReader; onlyvisible: bool = true;
                   theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "TransferRoots", header: "IGESToBRep_Reader.hxx".}
proc transfer*(this: var IGESToBRepReader; num: cint;
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Transfer", header: "IGESToBRep_Reader.hxx".}
proc isDone*(this: IGESToBRepReader): bool {.noSideEffect, importcpp: "IsDone",
    header: "IGESToBRep_Reader.hxx".}
proc usedTolerance*(this: IGESToBRepReader): cfloat {.noSideEffect,
    importcpp: "UsedTolerance", header: "IGESToBRep_Reader.hxx".}
proc nbShapes*(this: IGESToBRepReader): cint {.noSideEffect, importcpp: "NbShapes",
    header: "IGESToBRep_Reader.hxx".}
proc shape*(this: IGESToBRepReader; num: cint = 1): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "IGESToBRep_Reader.hxx".}
proc oneShape*(this: IGESToBRepReader): TopoDS_Shape {.noSideEffect,
    importcpp: "OneShape", header: "IGESToBRep_Reader.hxx".}

























