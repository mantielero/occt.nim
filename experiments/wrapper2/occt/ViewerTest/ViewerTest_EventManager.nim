##  Created on: 1998-08-27
##  Created by: Robert COUBLANC
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of AIS_InteractiveContext"
discard "forward decl of V3d_View"
discard "forward decl of ViewerTest_EventManager"
type
  HandleViewerTestEventManager* = Handle[ViewerTestEventManager]

## ! used to manage mouse event (move,select,shiftselect)
## ! By default the events are transmitted to interactive context.

type
  ViewerTestEventManager* {.importcpp: "ViewerTest_EventManager",
                           header: "ViewerTest_EventManager.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Return
                                                                                                  ## TRUE
                                                                                                  ## if
                                                                                                  ## View
                                                                                                  ## should
                                                                                                  ## be
                                                                                                  ## closed
                                                                                                  ## on
                                                                                                  ## escape.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Main
                                                                                                  ## constructor.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Register
                                                                                                  ## hot-keys
                                                                                                  ## for
                                                                                                  ## specified
                                                                                                  ## Action.
    ## !< map of Hot-Key (key+modifiers) to Action

  ViewerTestEventManagerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ViewerTest_EventManager::get_type_name(@)",
                            header: "ViewerTest_EventManager.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ViewerTest_EventManager::get_type_descriptor(@)",
    header: "ViewerTest_EventManager.hxx".}
proc dynamicType*(this: ViewerTestEventManager): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ViewerTest_EventManager.hxx".}
proc toCloseViewOnEscape*(): var bool {.importcpp: "ViewerTest_EventManager::ToCloseViewOnEscape(@)",
                                    header: "ViewerTest_EventManager.hxx".}
proc toExitOnCloseView*(): var bool {.importcpp: "ViewerTest_EventManager::ToExitOnCloseView(@)",
                                  header: "ViewerTest_EventManager.hxx".}
proc globalViewAnimation*(): Handle[AIS_AnimationCamera] {.
    importcpp: "ViewerTest_EventManager::GlobalViewAnimation(@)",
    header: "ViewerTest_EventManager.hxx".}
proc constructViewerTestEventManager*(aView: Handle[V3dView];
                                     aCtx: Handle[AIS_InteractiveContext]): ViewerTestEventManager {.
    constructor, importcpp: "ViewerTest_EventManager(@)",
    header: "ViewerTest_EventManager.hxx".}
proc destroyViewerTestEventManager*(this: var ViewerTestEventManager) {.
    importcpp: "#.~ViewerTest_EventManager()",
    header: "ViewerTest_EventManager.hxx".}
proc context*(this: ViewerTestEventManager): Handle[AIS_InteractiveContext] {.
    noSideEffect, importcpp: "Context", header: "ViewerTest_EventManager.hxx".}
proc toPickPoint*(this: ViewerTestEventManager): bool {.noSideEffect,
    importcpp: "ToPickPoint", header: "ViewerTest_EventManager.hxx".}
proc startPickPoint*(this: var ViewerTestEventManager; theArgX: cstring;
                    theArgY: cstring; theArgZ: cstring) {.
    importcpp: "StartPickPoint", header: "ViewerTest_EventManager.hxx".}
proc updateMouseButtons*(this: var ViewerTestEventManager; thePoint: Graphic3dVec2i;
                        theButtons: AspectVKeyMouse;
                        theModifiers: AspectVKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "UpdateMouseButtons", header: "ViewerTest_EventManager.hxx".}
proc keyDown*(this: var ViewerTestEventManager; theKey: AspectVKey; theTime: cdouble;
             thePressure: cdouble = 1.0) {.importcpp: "KeyDown",
                                       header: "ViewerTest_EventManager.hxx".}
proc keyUp*(this: var ViewerTestEventManager; theKey: AspectVKey; theTime: cdouble) {.
    importcpp: "KeyUp", header: "ViewerTest_EventManager.hxx".}
proc processExpose*(this: var ViewerTestEventManager) {.importcpp: "ProcessExpose",
    header: "ViewerTest_EventManager.hxx".}
proc handleViewRedraw*(this: var ViewerTestEventManager;
                      theCtx: Handle[AIS_InteractiveContext];
                      theView: Handle[V3dView]) {.importcpp: "handleViewRedraw",
    header: "ViewerTest_EventManager.hxx".}
proc processConfigure*(this: var ViewerTestEventManager) {.
    importcpp: "ProcessConfigure", header: "ViewerTest_EventManager.hxx".}
proc processKeyPress*(this: var ViewerTestEventManager; theKey: AspectVKey) {.
    importcpp: "ProcessKeyPress", header: "ViewerTest_EventManager.hxx".}
