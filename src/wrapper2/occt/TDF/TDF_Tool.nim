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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, TDF_AttributeMap,
  ../TColStd/TColStd_ListOfInteger, ../Standard/Standard_CString, TDF_LabelList,
  TDF_LabelIntegerMap, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of TDF_IDFilter"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDF_Data"
type
  TDF_Tool* {.importcpp: "TDF_Tool", header: "TDF_Tool.hxx", bycopy.} = object ## ! Returns the number of labels of the tree,
                                                                       ## ! including <aLabel>. aLabel is also included in this figure.
                                                                       ## ! This
                                                                       ## information is useful in setting the size of an array.


proc NbLabels*(aLabel: TDF_Label): Standard_Integer {.
    importcpp: "TDF_Tool::NbLabels(@)", header: "TDF_Tool.hxx".}
proc NbAttributes*(aLabel: TDF_Label): Standard_Integer {.
    importcpp: "TDF_Tool::NbAttributes(@)", header: "TDF_Tool.hxx".}
proc NbAttributes*(aLabel: TDF_Label; aFilter: TDF_IDFilter): Standard_Integer {.
    importcpp: "TDF_Tool::NbAttributes(@)", header: "TDF_Tool.hxx".}
proc IsSelfContained*(aLabel: TDF_Label): Standard_Boolean {.
    importcpp: "TDF_Tool::IsSelfContained(@)", header: "TDF_Tool.hxx".}
proc IsSelfContained*(aLabel: TDF_Label; aFilter: TDF_IDFilter): Standard_Boolean {.
    importcpp: "TDF_Tool::IsSelfContained(@)", header: "TDF_Tool.hxx".}
proc OutReferers*(theLabel: TDF_Label; theAtts: var TDF_AttributeMap) {.
    importcpp: "TDF_Tool::OutReferers(@)", header: "TDF_Tool.hxx".}
proc OutReferers*(aLabel: TDF_Label; aFilterForReferers: TDF_IDFilter;
                 aFilterForReferences: TDF_IDFilter; atts: var TDF_AttributeMap) {.
    importcpp: "TDF_Tool::OutReferers(@)", header: "TDF_Tool.hxx".}
proc OutReferences*(aLabel: TDF_Label; atts: var TDF_AttributeMap) {.
    importcpp: "TDF_Tool::OutReferences(@)", header: "TDF_Tool.hxx".}
proc OutReferences*(aLabel: TDF_Label; aFilterForReferers: TDF_IDFilter;
                   aFilterForReferences: TDF_IDFilter; atts: var TDF_AttributeMap) {.
    importcpp: "TDF_Tool::OutReferences(@)", header: "TDF_Tool.hxx".}
proc RelocateLabel*(aSourceLabel: TDF_Label; fromRoot: TDF_Label; toRoot: TDF_Label;
                   aTargetLabel: var TDF_Label;
                   create: Standard_Boolean = Standard_False) {.
    importcpp: "TDF_Tool::RelocateLabel(@)", header: "TDF_Tool.hxx".}
proc Entry*(aLabel: TDF_Label; anEntry: var TCollection_AsciiString) {.
    importcpp: "TDF_Tool::Entry(@)", header: "TDF_Tool.hxx".}
proc TagList*(aLabel: TDF_Label; aTagList: var TColStd_ListOfInteger) {.
    importcpp: "TDF_Tool::TagList(@)", header: "TDF_Tool.hxx".}
proc TagList*(anEntry: TCollection_AsciiString; aTagList: var TColStd_ListOfInteger) {.
    importcpp: "TDF_Tool::TagList(@)", header: "TDF_Tool.hxx".}
proc Label*(aDF: handle[TDF_Data]; anEntry: TCollection_AsciiString;
           aLabel: var TDF_Label; create: Standard_Boolean = Standard_False) {.
    importcpp: "TDF_Tool::Label(@)", header: "TDF_Tool.hxx".}
proc Label*(aDF: handle[TDF_Data]; anEntry: Standard_CString; aLabel: var TDF_Label;
           create: Standard_Boolean = Standard_False) {.
    importcpp: "TDF_Tool::Label(@)", header: "TDF_Tool.hxx".}
proc Label*(aDF: handle[TDF_Data]; aTagList: TColStd_ListOfInteger;
           aLabel: var TDF_Label; create: Standard_Boolean = Standard_False) {.
    importcpp: "TDF_Tool::Label(@)", header: "TDF_Tool.hxx".}
proc CountLabels*(aLabelList: var TDF_LabelList; aLabelMap: var TDF_LabelIntegerMap) {.
    importcpp: "TDF_Tool::CountLabels(@)", header: "TDF_Tool.hxx".}
proc DeductLabels*(aLabelList: var TDF_LabelList; aLabelMap: var TDF_LabelIntegerMap) {.
    importcpp: "TDF_Tool::DeductLabels(@)", header: "TDF_Tool.hxx".}
proc DeepDump*(anOS: var Standard_OStream; aDF: handle[TDF_Data]) {.
    importcpp: "TDF_Tool::DeepDump(@)", header: "TDF_Tool.hxx".}
proc ExtendedDeepDump*(anOS: var Standard_OStream; aDF: handle[TDF_Data];
                      aFilter: TDF_IDFilter) {.
    importcpp: "TDF_Tool::ExtendedDeepDump(@)", header: "TDF_Tool.hxx".}
proc DeepDump*(anOS: var Standard_OStream; aLabel: TDF_Label) {.
    importcpp: "TDF_Tool::DeepDump(@)", header: "TDF_Tool.hxx".}
proc ExtendedDeepDump*(anOS: var Standard_OStream; aLabel: TDF_Label;
                      aFilter: TDF_IDFilter) {.
    importcpp: "TDF_Tool::ExtendedDeepDump(@)", header: "TDF_Tool.hxx".}