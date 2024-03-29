import ../standard/standard_types
import graphic3d_types





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

## ! Helper class for keeping reference on world-view-projection state.
## ! Helpful for synchronizing state of WVP dependent data structures.



proc newGraphic3dWorldViewProjState*(): Graphic3dWorldViewProjState {.cdecl,
    constructor, importcpp: "Graphic3d_WorldViewProjState(@)", header: "Graphic3d_WorldViewProjState.hxx".}
proc newGraphic3dWorldViewProjState*(theProjectionState: csize_t;
                                    theWorldViewState: csize_t;
                                    theCamera: ptr StandardTransient = nil): Graphic3dWorldViewProjState {.
    cdecl, constructor, importcpp: "Graphic3d_WorldViewProjState(@)", header: "Graphic3d_WorldViewProjState.hxx".}
proc isValid*(this: var Graphic3dWorldViewProjState): bool {.cdecl,
    importcpp: "IsValid", header: "Graphic3d_WorldViewProjState.hxx".}
proc reset*(this: var Graphic3dWorldViewProjState) {.cdecl, importcpp: "Reset",
    header: "Graphic3d_WorldViewProjState.hxx".}
proc initialize*(this: var Graphic3dWorldViewProjState; theProjectionState: csize_t;
                theWorldViewState: csize_t; theCamera: ptr StandardTransient = nil) {.
    cdecl, importcpp: "Initialize", header: "Graphic3d_WorldViewProjState.hxx".}
proc initialize*(this: var Graphic3dWorldViewProjState;
                theCamera: ptr StandardTransient = nil) {.cdecl,
    importcpp: "Initialize", header: "Graphic3d_WorldViewProjState.hxx".}
proc projectionState*(this: var Graphic3dWorldViewProjState): var csize_t {.cdecl,
    importcpp: "ProjectionState", header: "Graphic3d_WorldViewProjState.hxx".}
proc worldViewState*(this: var Graphic3dWorldViewProjState): var csize_t {.cdecl,
    importcpp: "WorldViewState", header: "Graphic3d_WorldViewProjState.hxx".}
proc isProjectionChanged*(this: var Graphic3dWorldViewProjState;
                         theState: Graphic3dWorldViewProjState): bool {.cdecl,
    importcpp: "IsProjectionChanged", header: "Graphic3d_WorldViewProjState.hxx".}
proc isWorldViewChanged*(this: var Graphic3dWorldViewProjState;
                        theState: Graphic3dWorldViewProjState): bool {.cdecl,
    importcpp: "IsWorldViewChanged", header: "Graphic3d_WorldViewProjState.hxx".}
proc isChanged*(this: var Graphic3dWorldViewProjState;
               theState: Graphic3dWorldViewProjState): bool {.cdecl,
    importcpp: "IsChanged", header: "Graphic3d_WorldViewProjState.hxx".}
proc `==`*(this: Graphic3dWorldViewProjState; theOther: Graphic3dWorldViewProjState): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "Graphic3d_WorldViewProjState.hxx".}
proc dumpJson*(this: Graphic3dWorldViewProjState; theOStream: var StandardOStream;
              a3: cint) {.noSideEffect, cdecl, importcpp: "DumpJson", header: "Graphic3d_WorldViewProjState.hxx".}


