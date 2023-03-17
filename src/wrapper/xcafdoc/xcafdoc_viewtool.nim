import xcafdoc_types

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

discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_DimTolTool"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of XCAFDoc_ViewTool"

proc newXCAFDoc_ViewTool*(): XCAFDoc_ViewTool {.cdecl, constructor,
    importcpp: "XCAFDoc_ViewTool(@)", header: "XCAFDoc_ViewTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_ViewTool] {.cdecl,
    importcpp: "XCAFDoc_ViewTool::Set(@)", header: "XCAFDoc_ViewTool.hxx".}
proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_ViewTool::GetID(@)",
                            header: "XCAFDoc_ViewTool.hxx".}
proc BaseLabel*(this: XCAFDoc_ViewTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_ViewTool.hxx".}
proc IsView*(this: XCAFDoc_ViewTool; theLabel: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsView", header: "XCAFDoc_ViewTool.hxx".}
proc GetViewLabels*(this: XCAFDoc_ViewTool; theLabels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetViewLabels", header: "XCAFDoc_ViewTool.hxx".}
proc SetView*(this: XCAFDoc_ViewTool; theShapes: TDF_LabelSequence;
             theGDTs: TDF_LabelSequence; theClippingPlanes: TDF_LabelSequence;
             theNotes: TDF_LabelSequence; theAnnotations: TDF_LabelSequence;
             theViewL: TDF_Label) {.noSideEffect, cdecl, importcpp: "SetView",
                                  header: "XCAFDoc_ViewTool.hxx".}
proc SetView*(this: XCAFDoc_ViewTool; theShapes: TDF_LabelSequence;
             theGDTs: TDF_LabelSequence; theClippingPlanes: TDF_LabelSequence;
             theViewL: TDF_Label) {.noSideEffect, cdecl, importcpp: "SetView",
                                  header: "XCAFDoc_ViewTool.hxx".}
proc SetView*(this: XCAFDoc_ViewTool; theShapes: TDF_LabelSequence;
             theGDTs: TDF_LabelSequence; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetView", header: "XCAFDoc_ViewTool.hxx".}
proc SetClippingPlanes*(this: XCAFDoc_ViewTool;
                       theClippingPlaneLabels: TDF_LabelSequence;
                       theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetClippingPlanes", header: "XCAFDoc_ViewTool.hxx".}
proc RemoveView*(this: var XCAFDoc_ViewTool; theViewL: TDF_Label) {.cdecl,
    importcpp: "RemoveView", header: "XCAFDoc_ViewTool.hxx".}
proc GetViewLabelsForShape*(this: XCAFDoc_ViewTool; theShapeL: TDF_Label;
                           theViews: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetViewLabelsForShape", header: "XCAFDoc_ViewTool.hxx".}
proc GetViewLabelsForGDT*(this: XCAFDoc_ViewTool; theGDTL: TDF_Label;
                         theViews: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetViewLabelsForGDT", header: "XCAFDoc_ViewTool.hxx".}
proc GetViewLabelsForClippingPlane*(this: XCAFDoc_ViewTool;
                                   theClippingPlaneL: TDF_Label;
                                   theViews: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetViewLabelsForClippingPlane",
    header: "XCAFDoc_ViewTool.hxx".}
proc GetViewLabelsForNote*(this: XCAFDoc_ViewTool; theNoteL: TDF_Label;
                          theViews: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetViewLabelsForNote", header: "XCAFDoc_ViewTool.hxx".}
proc GetViewLabelsForAnnotation*(this: XCAFDoc_ViewTool; theAnnotationL: TDF_Label;
                                theViews: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetViewLabelsForAnnotation",
    header: "XCAFDoc_ViewTool.hxx".}
proc AddView*(this: var XCAFDoc_ViewTool): TDF_Label {.cdecl, importcpp: "AddView",
    header: "XCAFDoc_ViewTool.hxx".}
proc GetRefShapeLabel*(this: XCAFDoc_ViewTool; theViewL: TDF_Label;
                      theShapeLabels: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetRefShapeLabel", header: "XCAFDoc_ViewTool.hxx".}
proc GetRefGDTLabel*(this: XCAFDoc_ViewTool; theViewL: TDF_Label;
                    theGDTLabels: var TDF_LabelSequence): bool {.noSideEffect, cdecl,
    importcpp: "GetRefGDTLabel", header: "XCAFDoc_ViewTool.hxx".}
proc GetRefClippingPlaneLabel*(this: XCAFDoc_ViewTool; theViewL: TDF_Label;
                              theClippingPlaneLabels: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetRefClippingPlaneLabel",
    header: "XCAFDoc_ViewTool.hxx".}
proc GetRefNoteLabel*(this: XCAFDoc_ViewTool; theViewL: TDF_Label;
                     theNoteLabels: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetRefNoteLabel", header: "XCAFDoc_ViewTool.hxx".}
proc GetRefAnnotationLabel*(this: XCAFDoc_ViewTool; theViewL: TDF_Label;
                           theAnnotationLabels: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetRefAnnotationLabel",
    header: "XCAFDoc_ViewTool.hxx".}
proc IsLocked*(this: XCAFDoc_ViewTool; theViewL: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "IsLocked", header: "XCAFDoc_ViewTool.hxx".}
proc Lock*(this: XCAFDoc_ViewTool; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "Lock", header: "XCAFDoc_ViewTool.hxx".}
proc Unlock*(this: XCAFDoc_ViewTool; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "Unlock", header: "XCAFDoc_ViewTool.hxx".}
proc ID*(this: XCAFDoc_ViewTool): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_ViewTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_ViewTool , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!
