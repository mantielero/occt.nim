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

## ! Setting additional flag to store 2D mode of the View to avoid scene rotation by mouse/key events

type
  ViewerTestV3dView* {.importcpp: "ViewerTest_V3dView",
                      header: "ViewerTest_V3dView.hxx", bycopy.} = object of V3dView ## !
                                                                              ## Initializes
                                                                              ## the
                                                                              ## view.
                                                                              ## !
                                                                              ## Returns
                                                                              ## true if
                                                                              ## active
                                                                              ## view in 2D
                                                                              ## mode.
    ## !< 2D mode flag

  ViewerTestV3dViewbaseType* = V3dView

proc getTypeName*(): cstring {.importcpp: "ViewerTest_V3dView::get_type_name(@)",
                            header: "ViewerTest_V3dView.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ViewerTest_V3dView::get_type_descriptor(@)",
    header: "ViewerTest_V3dView.hxx".}
proc dynamicType*(this: ViewerTestV3dView): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ViewerTest_V3dView.hxx".}
proc constructViewerTestV3dView*(theViewer: Handle[V3dViewer];
                                theType: V3dTypeOfView = v3dORTHOGRAPHIC;
                                theIs2dMode: bool = false): ViewerTestV3dView {.
    constructor, importcpp: "ViewerTest_V3dView(@)",
    header: "ViewerTest_V3dView.hxx".}
proc constructViewerTestV3dView*(theViewer: Handle[V3dViewer];
                                theView: Handle[V3dView]): ViewerTestV3dView {.
    constructor, importcpp: "ViewerTest_V3dView(@)",
    header: "ViewerTest_V3dView.hxx".}
proc isViewIn2DMode*(this: ViewerTestV3dView): bool {.noSideEffect,
    importcpp: "IsViewIn2DMode", header: "ViewerTest_V3dView.hxx".}
proc setView2DMode*(this: var ViewerTestV3dView; the2dMode: bool) {.
    importcpp: "SetView2DMode", header: "ViewerTest_V3dView.hxx".}
proc isCurrentViewIn2DMode*(): bool {.importcpp: "ViewerTest_V3dView::IsCurrentViewIn2DMode(@)",
                                   header: "ViewerTest_V3dView.hxx".}
proc setCurrentView2DMode*(theIs2d: bool) {.
    importcpp: "ViewerTest_V3dView::SetCurrentView2DMode(@)",
    header: "ViewerTest_V3dView.hxx".}
