##  Created on: 1994-06-24
##  Created by: Frederic MAUPAS
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

discard "forward decl of StepShape_ShellBasedSurfaceModel"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  TopoDSToStepMakeShellBasedSurfaceModel* {.
      importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel",
      header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx", bycopy.} = object of TopoDSToStepRoot


proc `new`*(this: var TopoDSToStepMakeShellBasedSurfaceModel; theSize: csize_t): pointer {.
    importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel::operator new",
    header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}
proc `delete`*(this: var TopoDSToStepMakeShellBasedSurfaceModel; theAddress: pointer) {.
    importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel::operator delete",
    header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}
proc `new[]`*(this: var TopoDSToStepMakeShellBasedSurfaceModel; theSize: csize_t): pointer {.
    importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel::operator new[]",
    header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}
proc `delete[]`*(this: var TopoDSToStepMakeShellBasedSurfaceModel;
                theAddress: pointer) {.importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel::operator delete[]", header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}
proc `new`*(this: var TopoDSToStepMakeShellBasedSurfaceModel; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel::operator new", header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}
proc `delete`*(this: var TopoDSToStepMakeShellBasedSurfaceModel; a2: pointer;
              a3: pointer) {.importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel::operator delete", header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}
proc constructTopoDSToStepMakeShellBasedSurfaceModel*(f: TopoDS_Face;
    fp: Handle[TransferFinderProcess];
    theProgress: MessageProgressRange = messageProgressRange()): TopoDSToStepMakeShellBasedSurfaceModel {.
    constructor, importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel(@)",
    header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}
proc constructTopoDSToStepMakeShellBasedSurfaceModel*(s: TopoDS_Shell;
    fp: Handle[TransferFinderProcess];
    theProgress: MessageProgressRange = messageProgressRange()): TopoDSToStepMakeShellBasedSurfaceModel {.
    constructor, importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel(@)",
    header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}
proc constructTopoDSToStepMakeShellBasedSurfaceModel*(s: TopoDS_Solid;
    fp: Handle[TransferFinderProcess];
    theProgress: MessageProgressRange = messageProgressRange()): TopoDSToStepMakeShellBasedSurfaceModel {.
    constructor, importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel(@)",
    header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}
proc value*(this: TopoDSToStepMakeShellBasedSurfaceModel): Handle[
    StepShapeShellBasedSurfaceModel] {.noSideEffect, importcpp: "Value", header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}