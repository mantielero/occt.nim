##  Created on: 1993-07-23
##  Created by: Martine LANGLOIS
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of StepShape_ManifoldSolidBrep"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shell"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Solid"
type
  TopoDSToStepMakeManifoldSolidBrep* {.importcpp: "TopoDSToStep_MakeManifoldSolidBrep", header: "TopoDSToStep_MakeManifoldSolidBrep.hxx",
                                      bycopy.} = object of TopoDSToStepRoot


proc `new`*(this: var TopoDSToStepMakeManifoldSolidBrep; theSize: csize_t): pointer {.
    importcpp: "TopoDSToStep_MakeManifoldSolidBrep::operator new",
    header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc `delete`*(this: var TopoDSToStepMakeManifoldSolidBrep; theAddress: pointer) {.
    importcpp: "TopoDSToStep_MakeManifoldSolidBrep::operator delete",
    header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc `new[]`*(this: var TopoDSToStepMakeManifoldSolidBrep; theSize: csize_t): pointer {.
    importcpp: "TopoDSToStep_MakeManifoldSolidBrep::operator new[]",
    header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc `delete[]`*(this: var TopoDSToStepMakeManifoldSolidBrep; theAddress: pointer) {.
    importcpp: "TopoDSToStep_MakeManifoldSolidBrep::operator delete[]",
    header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc `new`*(this: var TopoDSToStepMakeManifoldSolidBrep; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "TopoDSToStep_MakeManifoldSolidBrep::operator new", header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc `delete`*(this: var TopoDSToStepMakeManifoldSolidBrep; a2: pointer; a3: pointer) {.
    importcpp: "TopoDSToStep_MakeManifoldSolidBrep::operator delete",
    header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc constructTopoDSToStepMakeManifoldSolidBrep*(s: TopoDS_Shell;
    fp: Handle[TransferFinderProcess];
    theProgress: MessageProgressRange = messageProgressRange()): TopoDSToStepMakeManifoldSolidBrep {.
    constructor, importcpp: "TopoDSToStep_MakeManifoldSolidBrep(@)",
    header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc constructTopoDSToStepMakeManifoldSolidBrep*(s: TopoDS_Solid;
    fp: Handle[TransferFinderProcess];
    theProgress: MessageProgressRange = messageProgressRange()): TopoDSToStepMakeManifoldSolidBrep {.
    constructor, importcpp: "TopoDSToStep_MakeManifoldSolidBrep(@)",
    header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc value*(this: TopoDSToStepMakeManifoldSolidBrep): Handle[
    StepShapeManifoldSolidBrep] {.noSideEffect, importcpp: "Value", header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}