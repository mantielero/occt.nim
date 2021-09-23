##  Created on: 2015-06-30
##  Created by: Anton POLETAEV
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard_Transient, ../Standard/Standard_TypeDef

## ! Helper class for keeping reference on world-view-projection state.
## ! Helpful for synchronizing state of WVP dependent data structures.

type
  Graphic3d_WorldViewProjState* {.importcpp: "Graphic3d_WorldViewProjState",
                                 header: "Graphic3d_WorldViewProjState.hxx",
                                 bycopy.} = object ## ! Default constructor.
                                                ## ! Check state validity.
                                                ## ! @return true if state is set.
                                                ## ! @return projection state counter.
                                                ## ! Compare projection with other state.
                                                ## ! @return true when the projection of the given camera state differs from this one.
                                                ## ! Compare with other world view projection state.
                                                ## ! @return true if the other projection state is different to this one.


proc constructGraphic3d_WorldViewProjState*(): Graphic3d_WorldViewProjState {.
    constructor, importcpp: "Graphic3d_WorldViewProjState(@)",
    header: "Graphic3d_WorldViewProjState.hxx".}
proc constructGraphic3d_WorldViewProjState*(theProjectionState: Standard_Size;
    theWorldViewState: Standard_Size; theCamera: ptr Standard_Transient = nil): Graphic3d_WorldViewProjState {.
    constructor, importcpp: "Graphic3d_WorldViewProjState(@)",
    header: "Graphic3d_WorldViewProjState.hxx".}
proc IsValid*(this: var Graphic3d_WorldViewProjState): Standard_Boolean {.
    importcpp: "IsValid", header: "Graphic3d_WorldViewProjState.hxx".}
proc Reset*(this: var Graphic3d_WorldViewProjState) {.importcpp: "Reset",
    header: "Graphic3d_WorldViewProjState.hxx".}
proc Initialize*(this: var Graphic3d_WorldViewProjState;
                theProjectionState: Standard_Size;
                theWorldViewState: Standard_Size;
                theCamera: ptr Standard_Transient = nil) {.importcpp: "Initialize",
    header: "Graphic3d_WorldViewProjState.hxx".}
proc Initialize*(this: var Graphic3d_WorldViewProjState;
                theCamera: ptr Standard_Transient = nil) {.importcpp: "Initialize",
    header: "Graphic3d_WorldViewProjState.hxx".}
proc ProjectionState*(this: var Graphic3d_WorldViewProjState): var Standard_Size {.
    importcpp: "ProjectionState", header: "Graphic3d_WorldViewProjState.hxx".}
proc WorldViewState*(this: var Graphic3d_WorldViewProjState): var Standard_Size {.
    importcpp: "WorldViewState", header: "Graphic3d_WorldViewProjState.hxx".}
proc IsProjectionChanged*(this: var Graphic3d_WorldViewProjState;
                         theState: Graphic3d_WorldViewProjState): Standard_Boolean {.
    importcpp: "IsProjectionChanged", header: "Graphic3d_WorldViewProjState.hxx".}
proc IsWorldViewChanged*(this: var Graphic3d_WorldViewProjState;
                        theState: Graphic3d_WorldViewProjState): Standard_Boolean {.
    importcpp: "IsWorldViewChanged", header: "Graphic3d_WorldViewProjState.hxx".}
proc IsChanged*(this: var Graphic3d_WorldViewProjState;
               theState: Graphic3d_WorldViewProjState): Standard_Boolean {.
    importcpp: "IsChanged", header: "Graphic3d_WorldViewProjState.hxx".}
proc `==`*(this: Graphic3d_WorldViewProjState;
          theOther: Graphic3d_WorldViewProjState): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Graphic3d_WorldViewProjState.hxx".}
proc DumpJson*(this: Graphic3d_WorldViewProjState;
              theOStream: var Standard_OStream; a3: Standard_Integer) {.noSideEffect,
    importcpp: "DumpJson", header: "Graphic3d_WorldViewProjState.hxx".}