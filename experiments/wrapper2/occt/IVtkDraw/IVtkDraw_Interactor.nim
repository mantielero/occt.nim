##  Created on: 2012-05-28
##
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

# when defined windows:
#   discard
# else:
#   discard
##  prevent disabling some MSVC warning messages by VTK headers

discard "forward decl of vtkWin32RenderWindowInteractor"
type
  PSelector* = VtkSmartPointer[IVtkToolsShapePicker]
  IVtkDrawInteractor* {.importcpp: "IVtkDraw_Interactor",
                       header: "IVtkDraw_Interactor.hxx", bycopy.} = object of VtkRenderWindowInteractor ##  copying is prohibited
#     when defined windows:
#       discard
#     when defined windows:
#       discard
#     when not defined windows:
#       discard
#     when not defined windows:
#       discard
#     when not defined windows:
#       discard


proc new*(): ptr IVtkDrawInteractor {.importcpp: "IVtkDraw_Interactor::New(@)",
                                  header: "IVtkDraw_Interactor.hxx".}
## !!!Ignored construct:  vtkTypeMacro ( IVtkDraw_Interactor , vtkRenderWindowInteractor ) virtual void Initialize ( ) ;
## Error: token expected: ) but got: ,!!!

proc enable*(this: var IVtkDrawInteractor) {.importcpp: "Enable",
    header: "IVtkDraw_Interactor.hxx".}
proc start*(this: var IVtkDrawInteractor) {.importcpp: "Start",
                                        header: "IVtkDraw_Interactor.hxx".}
proc selector*(this: IVtkDrawInteractor): PSelector {.noSideEffect,
    importcpp: "Selector", header: "IVtkDraw_Interactor.hxx".}
proc setShapePicker*(this: var IVtkDrawInteractor; theSelector: PSelector) {.
    importcpp: "SetShapePicker", header: "IVtkDraw_Interactor.hxx".}
proc setPipelines*(this: var IVtkDrawInteractor;
                  thePipelines: Handle[ShapePipelineMap]) {.
    importcpp: "SetPipelines", header: "IVtkDraw_Interactor.hxx".}
proc setOCCWindow*(this: var IVtkDrawInteractor; theWindow: Handle[AspectWindow]) {.
    importcpp: "SetOCCWindow", header: "IVtkDraw_Interactor.hxx".}
proc getOCCWindow*(this: IVtkDrawInteractor): Handle[AspectWindow] {.noSideEffect,
    importcpp: "GetOCCWindow", header: "IVtkDraw_Interactor.hxx".}
proc moveTo*(this: var IVtkDrawInteractor; theX: int; theY: int) {.importcpp: "MoveTo",
    header: "IVtkDraw_Interactor.hxx".}
proc onSelection*(this: var IVtkDrawInteractor) {.importcpp: "OnSelection",
    header: "IVtkDraw_Interactor.hxx".}
proc isEnabled*(this: IVtkDrawInteractor): bool {.noSideEffect,
    importcpp: "IsEnabled", header: "IVtkDraw_Interactor.hxx".}
when not defined windows:
  proc getDisplayId*(this: IVtkDrawInteractor): ptr Display {.noSideEffect,
      importcpp: "GetDisplayId", header: "IVtkDraw_Interactor.hxx".}
when not defined windows:
  proc viewerMainLoop*(this: var IVtkDrawInteractor; theArgNum: int;
                      theArgs: cstringArray): int {.importcpp: "ViewerMainLoop",
      header: "IVtkDraw_Interactor.hxx".}

