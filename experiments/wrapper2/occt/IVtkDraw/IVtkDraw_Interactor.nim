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

import
  ../Standard/Standard, ../Standard/Standard_Macro, ../Standard/Standard_Transient
# 
# when defined(_WIN32):
  discard
else:
  discard
##  prevent disabling some MSVC warning messages by VTK headers

import
  ../Standard/Standard_WarningsDisable, ../Standard/Standard_WarningsRestore,
  ../IVtkTools/IVtkTools_ShapePicker, IVtkDraw_HighlightAndSelectionPipeline,
  ../Aspect/Aspect_Window

discard "forward decl of vtkWin32RenderWindowInteractor"
type
  PSelector* = vtkSmartPointer[IVtkTools_ShapePicker]
  IVtkDraw_Interactor* {.importcpp: "IVtkDraw_Interactor",
                        header: "IVtkDraw_Interactor.hxx", bycopy.} = object of vtkRenderWindowInteractor ##  copying is prohibited
    when defined(_WIN32):
      discard
    when defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard


proc New*(): ptr IVtkDraw_Interactor {.importcpp: "IVtkDraw_Interactor::New(@)",
                                   header: "IVtkDraw_Interactor.hxx".}
## !!!Ignored construct:  vtkTypeMacro ( IVtkDraw_Interactor , vtkRenderWindowInteractor ) virtual void Initialize ( ) ;
## Error: token expected: ) but got: ,!!!

proc Enable*(this: var IVtkDraw_Interactor) {.importcpp: "Enable",
    header: "IVtkDraw_Interactor.hxx".}
proc Start*(this: var IVtkDraw_Interactor) {.importcpp: "Start",
    header: "IVtkDraw_Interactor.hxx".}
proc Selector*(this: IVtkDraw_Interactor): PSelector {.noSideEffect,
    importcpp: "Selector", header: "IVtkDraw_Interactor.hxx".}
proc SetShapePicker*(this: var IVtkDraw_Interactor; theSelector: PSelector) {.
    importcpp: "SetShapePicker", header: "IVtkDraw_Interactor.hxx".}
proc SetPipelines*(this: var IVtkDraw_Interactor;
                  thePipelines: handle[ShapePipelineMap]) {.
    importcpp: "SetPipelines", header: "IVtkDraw_Interactor.hxx".}
proc SetOCCWindow*(this: var IVtkDraw_Interactor; theWindow: handle[Aspect_Window]) {.
    importcpp: "SetOCCWindow", header: "IVtkDraw_Interactor.hxx".}
proc GetOCCWindow*(this: IVtkDraw_Interactor): handle[Aspect_Window] {.noSideEffect,
    importcpp: "GetOCCWindow", header: "IVtkDraw_Interactor.hxx".}
proc MoveTo*(this: var IVtkDraw_Interactor; theX: Standard_Integer;
            theY: Standard_Integer) {.importcpp: "MoveTo",
                                    header: "IVtkDraw_Interactor.hxx".}
proc OnSelection*(this: var IVtkDraw_Interactor) {.importcpp: "OnSelection",
    header: "IVtkDraw_Interactor.hxx".}
proc IsEnabled*(this: IVtkDraw_Interactor): Standard_Boolean {.noSideEffect,
    importcpp: "IsEnabled", header: "IVtkDraw_Interactor.hxx".}
when not defined(_WIN32):
  proc GetDisplayId*(this: IVtkDraw_Interactor): ptr Display {.noSideEffect,
      importcpp: "GetDisplayId", header: "IVtkDraw_Interactor.hxx".}
when not defined(_WIN32):
  proc ViewerMainLoop*(this: var IVtkDraw_Interactor; theArgNum: Standard_Integer;
                      theArgs: cstringArray): Standard_Integer {.
      importcpp: "ViewerMainLoop", header: "IVtkDraw_Interactor.hxx".}
