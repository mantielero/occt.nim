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

import
  ../AIS/AIS_ViewController, ../TColgp/TColgp_Array1OfPnt2d,
  ../TCollection/TCollection_AsciiString

discard "forward decl of AIS_InteractiveContext"
discard "forward decl of V3d_View"
discard "forward decl of ViewerTest_EventManager"
type
  Handle_ViewerTest_EventManager* = handle[ViewerTest_EventManager]

## ! used to manage mouse event (move,select,shiftselect)
## ! By default the events are transmitted to interactive context.

type
  ViewerTest_EventManager* {.importcpp: "ViewerTest_EventManager",
                            header: "ViewerTest_EventManager.hxx", bycopy.} = object of Standard_Transient ##
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

  ViewerTest_EventManagerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ViewerTest_EventManager::get_type_name(@)",
                              header: "ViewerTest_EventManager.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ViewerTest_EventManager::get_type_descriptor(@)",
    header: "ViewerTest_EventManager.hxx".}
proc DynamicType*(this: ViewerTest_EventManager): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ViewerTest_EventManager.hxx".}
proc ToCloseViewOnEscape*(): var Standard_Boolean {.
    importcpp: "ViewerTest_EventManager::ToCloseViewOnEscape(@)",
    header: "ViewerTest_EventManager.hxx".}
proc ToExitOnCloseView*(): var Standard_Boolean {.
    importcpp: "ViewerTest_EventManager::ToExitOnCloseView(@)",
    header: "ViewerTest_EventManager.hxx".}
proc GlobalViewAnimation*(): handle[AIS_AnimationCamera] {.
    importcpp: "ViewerTest_EventManager::GlobalViewAnimation(@)",
    header: "ViewerTest_EventManager.hxx".}
proc constructViewerTest_EventManager*(aView: handle[V3d_View];
                                      aCtx: handle[AIS_InteractiveContext]): ViewerTest_EventManager {.
    constructor, importcpp: "ViewerTest_EventManager(@)",
    header: "ViewerTest_EventManager.hxx".}
proc destroyViewerTest_EventManager*(this: var ViewerTest_EventManager) {.
    importcpp: "#.~ViewerTest_EventManager()",
    header: "ViewerTest_EventManager.hxx".}
proc Context*(this: ViewerTest_EventManager): handle[AIS_InteractiveContext] {.
    noSideEffect, importcpp: "Context", header: "ViewerTest_EventManager.hxx".}
proc ToPickPoint*(this: ViewerTest_EventManager): Standard_Boolean {.noSideEffect,
    importcpp: "ToPickPoint", header: "ViewerTest_EventManager.hxx".}
proc StartPickPoint*(this: var ViewerTest_EventManager; theArgX: cstring;
                    theArgY: cstring; theArgZ: cstring) {.
    importcpp: "StartPickPoint", header: "ViewerTest_EventManager.hxx".}
proc UpdateMouseButtons*(this: var ViewerTest_EventManager;
                        thePoint: Graphic3d_Vec2i; theButtons: Aspect_VKeyMouse;
                        theModifiers: Aspect_VKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "UpdateMouseButtons", header: "ViewerTest_EventManager.hxx".}
proc KeyDown*(this: var ViewerTest_EventManager; theKey: Aspect_VKey;
             theTime: cdouble; thePressure: cdouble = 1.0) {.importcpp: "KeyDown",
    header: "ViewerTest_EventManager.hxx".}
proc KeyUp*(this: var ViewerTest_EventManager; theKey: Aspect_VKey; theTime: cdouble) {.
    importcpp: "KeyUp", header: "ViewerTest_EventManager.hxx".}
proc ProcessExpose*(this: var ViewerTest_EventManager) {.importcpp: "ProcessExpose",
    header: "ViewerTest_EventManager.hxx".}
proc handleViewRedraw*(this: var ViewerTest_EventManager;
                      theCtx: handle[AIS_InteractiveContext];
                      theView: handle[V3d_View]) {.importcpp: "handleViewRedraw",
    header: "ViewerTest_EventManager.hxx".}
proc ProcessConfigure*(this: var ViewerTest_EventManager) {.
    importcpp: "ProcessConfigure", header: "ViewerTest_EventManager.hxx".}
proc ProcessKeyPress*(this: var ViewerTest_EventManager; theKey: Aspect_VKey) {.
    importcpp: "ProcessKeyPress", header: "ViewerTest_EventManager.hxx".}