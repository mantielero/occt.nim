##  Copyright (c) 2019 OPEN CASCADE SAS
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
  ../V3d/V3d_View

## ! Setting additional flag to store 2D mode of the View to avoid scene rotation by mouse/key events

type
  ViewerTest_V3dView* {.importcpp: "ViewerTest_V3dView",
                       header: "ViewerTest_V3dView.hxx", bycopy.} = object of V3d_View ##
                                                                                ## !
                                                                                ## Initializes
                                                                                ## the
                                                                                ## view.
                                                                                ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## true
                                                                                ## if
                                                                                ## active
                                                                                ## view
                                                                                ## in
                                                                                ## 2D
                                                                                ## mode.
    ## !< 2D mode flag

  ViewerTest_V3dViewbase_type* = V3d_View

proc get_type_name*(): cstring {.importcpp: "ViewerTest_V3dView::get_type_name(@)",
                              header: "ViewerTest_V3dView.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ViewerTest_V3dView::get_type_descriptor(@)",
    header: "ViewerTest_V3dView.hxx".}
proc DynamicType*(this: ViewerTest_V3dView): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ViewerTest_V3dView.hxx".}
proc constructViewerTest_V3dView*(theViewer: handle[V3d_Viewer];
                                 theType: V3d_TypeOfView = V3d_ORTHOGRAPHIC;
                                 theIs2dMode: bool = false): ViewerTest_V3dView {.
    constructor, importcpp: "ViewerTest_V3dView(@)",
    header: "ViewerTest_V3dView.hxx".}
proc constructViewerTest_V3dView*(theViewer: handle[V3d_Viewer];
                                 theView: handle[V3d_View]): ViewerTest_V3dView {.
    constructor, importcpp: "ViewerTest_V3dView(@)",
    header: "ViewerTest_V3dView.hxx".}
proc IsViewIn2DMode*(this: ViewerTest_V3dView): bool {.noSideEffect,
    importcpp: "IsViewIn2DMode", header: "ViewerTest_V3dView.hxx".}
proc SetView2DMode*(this: var ViewerTest_V3dView; the2dMode: bool) {.
    importcpp: "SetView2DMode", header: "ViewerTest_V3dView.hxx".}
proc IsCurrentViewIn2DMode*(): bool {.importcpp: "ViewerTest_V3dView::IsCurrentViewIn2DMode(@)",
                                   header: "ViewerTest_V3dView.hxx".}
proc SetCurrentView2DMode*(theIs2d: bool) {.
    importcpp: "ViewerTest_V3dView::SetCurrentView2DMode(@)",
    header: "ViewerTest_V3dView.hxx".}