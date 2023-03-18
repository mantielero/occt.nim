import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types



##  Created on: 2016-10-19
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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





proc newXCAFDocViewTool*(): XCAFDocViewTool {.cdecl, constructor,
    importcpp: "XCAFDoc_ViewTool(@)", header: "XCAFDoc_ViewTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocViewTool] {.cdecl,
    importcpp: "XCAFDoc_ViewTool::Set(@)", header: "XCAFDoc_ViewTool.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_ViewTool::GetID(@)",
                           header: "XCAFDoc_ViewTool.hxx".}
proc baseLabel*(this: XCAFDocViewTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_ViewTool.hxx".}
proc isView*(this: XCAFDocViewTool; theLabel: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsView", header: "XCAFDoc_ViewTool.hxx".}
proc getViewLabels*(this: XCAFDocViewTool; theLabels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetViewLabels", header: "XCAFDoc_ViewTool.hxx".}
proc setView*(this: XCAFDocViewTool; theShapes: TDF_LabelSequence;
             theGDTs: TDF_LabelSequence; theClippingPlanes: TDF_LabelSequence;
             theNotes: TDF_LabelSequence; theAnnotations: TDF_LabelSequence;
             theViewL: TDF_Label) {.noSideEffect, cdecl, importcpp: "SetView",
                                  header: "XCAFDoc_ViewTool.hxx".}
proc setView*(this: XCAFDocViewTool; theShapes: TDF_LabelSequence;
             theGDTs: TDF_LabelSequence; theClippingPlanes: TDF_LabelSequence;
             theViewL: TDF_Label) {.noSideEffect, cdecl, importcpp: "SetView",
                                  header: "XCAFDoc_ViewTool.hxx".}
proc setView*(this: XCAFDocViewTool; theShapes: TDF_LabelSequence;
             theGDTs: TDF_LabelSequence; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetView", header: "XCAFDoc_ViewTool.hxx".}
proc setClippingPlanes*(this: XCAFDocViewTool;
                       theClippingPlaneLabels: TDF_LabelSequence;
                       theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetClippingPlanes", header: "XCAFDoc_ViewTool.hxx".}
proc removeView*(this: var XCAFDocViewTool; theViewL: TDF_Label) {.cdecl,
    importcpp: "RemoveView", header: "XCAFDoc_ViewTool.hxx".}
proc getViewLabelsForShape*(this: XCAFDocViewTool; theShapeL: TDF_Label;
                           theViews: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetViewLabelsForShape", header: "XCAFDoc_ViewTool.hxx".}
proc getViewLabelsForGDT*(this: XCAFDocViewTool; theGDTL: TDF_Label;
                         theViews: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetViewLabelsForGDT", header: "XCAFDoc_ViewTool.hxx".}
proc getViewLabelsForClippingPlane*(this: XCAFDocViewTool;
                                   theClippingPlaneL: TDF_Label;
                                   theViews: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetViewLabelsForClippingPlane",
    header: "XCAFDoc_ViewTool.hxx".}
proc getViewLabelsForNote*(this: XCAFDocViewTool; theNoteL: TDF_Label;
                          theViews: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetViewLabelsForNote", header: "XCAFDoc_ViewTool.hxx".}
proc getViewLabelsForAnnotation*(this: XCAFDocViewTool; theAnnotationL: TDF_Label;
                                theViews: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetViewLabelsForAnnotation",
    header: "XCAFDoc_ViewTool.hxx".}
proc addView*(this: var XCAFDocViewTool): TDF_Label {.cdecl, importcpp: "AddView",
    header: "XCAFDoc_ViewTool.hxx".}
proc getRefShapeLabel*(this: XCAFDocViewTool; theViewL: TDF_Label;
                      theShapeLabels: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetRefShapeLabel", header: "XCAFDoc_ViewTool.hxx".}
proc getRefGDTLabel*(this: XCAFDocViewTool; theViewL: TDF_Label;
                    theGDTLabels: var TDF_LabelSequence): bool {.noSideEffect, cdecl,
    importcpp: "GetRefGDTLabel", header: "XCAFDoc_ViewTool.hxx".}
proc getRefClippingPlaneLabel*(this: XCAFDocViewTool; theViewL: TDF_Label;
                              theClippingPlaneLabels: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetRefClippingPlaneLabel",
    header: "XCAFDoc_ViewTool.hxx".}
proc getRefNoteLabel*(this: XCAFDocViewTool; theViewL: TDF_Label;
                     theNoteLabels: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetRefNoteLabel", header: "XCAFDoc_ViewTool.hxx".}
proc getRefAnnotationLabel*(this: XCAFDocViewTool; theViewL: TDF_Label;
                           theAnnotationLabels: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetRefAnnotationLabel",
    header: "XCAFDoc_ViewTool.hxx".}
proc isLocked*(this: XCAFDocViewTool; theViewL: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsLocked", header: "XCAFDoc_ViewTool.hxx".}
proc lock*(this: XCAFDocViewTool; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "Lock", header: "XCAFDoc_ViewTool.hxx".}
proc unlock*(this: XCAFDocViewTool; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "Unlock", header: "XCAFDoc_ViewTool.hxx".}
proc id*(this: XCAFDocViewTool): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_ViewTool.hxx".}

