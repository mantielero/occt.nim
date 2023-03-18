import ../tcolstd/tcolstd_types
import tdf_types
import ../standard/standard_types
import ../tcollection/tcollection_types



##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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



proc nbLabels*(aLabel: TDF_Label): cint {.cdecl, importcpp: "TDF_Tool::NbLabels(@)",
                                      header: "TDF_Tool.hxx".}
proc nbAttributes*(aLabel: TDF_Label): cint {.cdecl,
    importcpp: "TDF_Tool::NbAttributes(@)", header: "TDF_Tool.hxx".}
proc nbAttributes*(aLabel: TDF_Label; aFilter: TDF_IDFilter): cint {.cdecl,
    importcpp: "TDF_Tool::NbAttributes(@)", header: "TDF_Tool.hxx".}
proc isSelfContained*(aLabel: TDF_Label): bool {.cdecl,
    importcpp: "TDF_Tool::IsSelfContained(@)", header: "TDF_Tool.hxx".}
proc isSelfContained*(aLabel: TDF_Label; aFilter: TDF_IDFilter): bool {.cdecl,
    importcpp: "TDF_Tool::IsSelfContained(@)", header: "TDF_Tool.hxx".}
proc outReferers*(theLabel: TDF_Label; theAtts: var TDF_AttributeMap) {.cdecl,
    importcpp: "TDF_Tool::OutReferers(@)", header: "TDF_Tool.hxx".}
proc outReferers*(aLabel: TDF_Label; aFilterForReferers: TDF_IDFilter;
                 aFilterForReferences: TDF_IDFilter; atts: var TDF_AttributeMap) {.
    cdecl, importcpp: "TDF_Tool::OutReferers(@)", header: "TDF_Tool.hxx".}
proc outReferences*(aLabel: TDF_Label; atts: var TDF_AttributeMap) {.cdecl,
    importcpp: "TDF_Tool::OutReferences(@)", header: "TDF_Tool.hxx".}
proc outReferences*(aLabel: TDF_Label; aFilterForReferers: TDF_IDFilter;
                   aFilterForReferences: TDF_IDFilter; atts: var TDF_AttributeMap) {.
    cdecl, importcpp: "TDF_Tool::OutReferences(@)", header: "TDF_Tool.hxx".}
proc relocateLabel*(aSourceLabel: TDF_Label; fromRoot: TDF_Label; toRoot: TDF_Label;
                   aTargetLabel: var TDF_Label; create: bool = false) {.cdecl,
    importcpp: "TDF_Tool::RelocateLabel(@)", header: "TDF_Tool.hxx".}
proc entry*(aLabel: TDF_Label; anEntry: var TCollectionAsciiString) {.cdecl,
    importcpp: "TDF_Tool::Entry(@)", header: "TDF_Tool.hxx".}
proc tagList*(aLabel: TDF_Label; aTagList: var TColStdListOfInteger) {.cdecl,
    importcpp: "TDF_Tool::TagList(@)", header: "TDF_Tool.hxx".}
proc tagList*(anEntry: TCollectionAsciiString; aTagList: var TColStdListOfInteger) {.
    cdecl, importcpp: "TDF_Tool::TagList(@)", header: "TDF_Tool.hxx".}
proc label*(aDF: Handle[TDF_Data]; anEntry: TCollectionAsciiString;
           aLabel: var TDF_Label; create: bool = false) {.cdecl,
    importcpp: "TDF_Tool::Label(@)", header: "TDF_Tool.hxx".}
proc label*(aDF: Handle[TDF_Data]; anEntry: cstring; aLabel: var TDF_Label;
           create: bool = false) {.cdecl, importcpp: "TDF_Tool::Label(@)",
                               header: "TDF_Tool.hxx".}
proc label*(aDF: Handle[TDF_Data]; aTagList: TColStdListOfInteger;
           aLabel: var TDF_Label; create: bool = false) {.cdecl,
    importcpp: "TDF_Tool::Label(@)", header: "TDF_Tool.hxx".}
proc countLabels*(aLabelList: var TDF_LabelList; aLabelMap: var TDF_LabelIntegerMap) {.
    cdecl, importcpp: "TDF_Tool::CountLabels(@)", header: "TDF_Tool.hxx".}
proc deductLabels*(aLabelList: var TDF_LabelList; aLabelMap: var TDF_LabelIntegerMap) {.
    cdecl, importcpp: "TDF_Tool::DeductLabels(@)", header: "TDF_Tool.hxx".}
proc deepDump*(anOS: var StandardOStream; aDF: Handle[TDF_Data]) {.cdecl,
    importcpp: "TDF_Tool::DeepDump(@)", header: "TDF_Tool.hxx".}
proc extendedDeepDump*(anOS: var StandardOStream; aDF: Handle[TDF_Data];
                      aFilter: TDF_IDFilter) {.cdecl,
    importcpp: "TDF_Tool::ExtendedDeepDump(@)", header: "TDF_Tool.hxx".}
proc deepDump*(anOS: var StandardOStream; aLabel: TDF_Label) {.cdecl,
    importcpp: "TDF_Tool::DeepDump(@)", header: "TDF_Tool.hxx".}
proc extendedDeepDump*(anOS: var StandardOStream; aLabel: TDF_Label;
                      aFilter: TDF_IDFilter) {.cdecl,
    importcpp: "TDF_Tool::ExtendedDeepDump(@)", header: "TDF_Tool.hxx".}

