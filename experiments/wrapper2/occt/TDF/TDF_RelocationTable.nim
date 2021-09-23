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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  TDF_LabelDataMap, TDF_AttributeDataMap,
  ../TColStd/TColStd_IndexedDataMapOfTransientTransient,
  ../Standard/Standard_Transient, TDF_LabelMap, TDF_AttributeMap,
  ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of Standard_Transient"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_RelocationTable"
type
  Handle_TDF_RelocationTable* = handle[TDF_RelocationTable]

## ! This is a relocation dictionnary between source
## ! and target labels, attributes or any
## ! transient(useful for copy or paste actions).
## ! Note that one target value may be the
## ! relocation value of more than one source object.
## !
## ! Common behaviour: it returns true and the found
## ! relocation value as target object; false
## ! otherwise.
## !
## ! Look at SelfRelocate method for more explanation
## ! about self relocation behavior of this class.

type
  TDF_RelocationTable* {.importcpp: "TDF_RelocationTable",
                        header: "TDF_RelocationTable.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## relocation
                                                                                            ## table.
                                                                                            ## <selfRelocate>
                                                                                            ## says
                                                                                            ##
                                                                                            ## !
                                                                                            ## if
                                                                                            ## a
                                                                                            ## value
                                                                                            ## without
                                                                                            ## explicit
                                                                                            ## relocation
                                                                                            ## is
                                                                                            ## its
                                                                                            ## own
                                                                                            ##
                                                                                            ## !
                                                                                            ## relocation.


proc constructTDF_RelocationTable*(selfRelocate: Standard_Boolean = Standard_False): TDF_RelocationTable {.
    constructor, importcpp: "TDF_RelocationTable(@)",
    header: "TDF_RelocationTable.hxx".}
proc SelfRelocate*(this: var TDF_RelocationTable; selfRelocate: Standard_Boolean) {.
    importcpp: "SelfRelocate", header: "TDF_RelocationTable.hxx".}
proc SelfRelocate*(this: TDF_RelocationTable): Standard_Boolean {.noSideEffect,
    importcpp: "SelfRelocate", header: "TDF_RelocationTable.hxx".}
proc AfterRelocate*(this: var TDF_RelocationTable; afterRelocate: Standard_Boolean) {.
    importcpp: "AfterRelocate", header: "TDF_RelocationTable.hxx".}
proc AfterRelocate*(this: TDF_RelocationTable): Standard_Boolean {.noSideEffect,
    importcpp: "AfterRelocate", header: "TDF_RelocationTable.hxx".}
proc SetRelocation*(this: var TDF_RelocationTable; aSourceLabel: TDF_Label;
                   aTargetLabel: TDF_Label) {.importcpp: "SetRelocation",
    header: "TDF_RelocationTable.hxx".}
proc HasRelocation*(this: TDF_RelocationTable; aSourceLabel: TDF_Label;
                   aTargetLabel: var TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "HasRelocation", header: "TDF_RelocationTable.hxx".}
proc SetRelocation*(this: var TDF_RelocationTable;
                   aSourceAttribute: handle[TDF_Attribute];
                   aTargetAttribute: handle[TDF_Attribute]) {.
    importcpp: "SetRelocation", header: "TDF_RelocationTable.hxx".}
proc HasRelocation*(this: TDF_RelocationTable;
                   aSourceAttribute: handle[TDF_Attribute];
                   aTargetAttribute: var handle[TDF_Attribute]): Standard_Boolean {.
    noSideEffect, importcpp: "HasRelocation", header: "TDF_RelocationTable.hxx".}
proc HasRelocation*[T](this: TDF_RelocationTable; theSource: handle[TDF_Attribute];
                      theTarget: var handle[T]): Standard_Boolean {.noSideEffect,
    importcpp: "HasRelocation", header: "TDF_RelocationTable.hxx".}
proc SetTransientRelocation*(this: var TDF_RelocationTable;
                            aSourceTransient: handle[Standard_Transient];
                            aTargetTransient: handle[Standard_Transient]) {.
    importcpp: "SetTransientRelocation", header: "TDF_RelocationTable.hxx".}
proc HasTransientRelocation*(this: TDF_RelocationTable;
                            aSourceTransient: handle[Standard_Transient];
                            aTargetTransient: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "HasTransientRelocation",
    header: "TDF_RelocationTable.hxx".}
proc Clear*(this: var TDF_RelocationTable) {.importcpp: "Clear",
    header: "TDF_RelocationTable.hxx".}
proc TargetLabelMap*(this: TDF_RelocationTable; aLabelMap: var TDF_LabelMap) {.
    noSideEffect, importcpp: "TargetLabelMap", header: "TDF_RelocationTable.hxx".}
proc TargetAttributeMap*(this: TDF_RelocationTable;
                        anAttributeMap: var TDF_AttributeMap) {.noSideEffect,
    importcpp: "TargetAttributeMap", header: "TDF_RelocationTable.hxx".}
proc LabelTable*(this: var TDF_RelocationTable): var TDF_LabelDataMap {.
    importcpp: "LabelTable", header: "TDF_RelocationTable.hxx".}
proc AttributeTable*(this: var TDF_RelocationTable): var TDF_AttributeDataMap {.
    importcpp: "AttributeTable", header: "TDF_RelocationTable.hxx".}
proc TransientTable*(this: var TDF_RelocationTable): var TColStd_IndexedDataMapOfTransientTransient {.
    importcpp: "TransientTable", header: "TDF_RelocationTable.hxx".}
proc Dump*(this: TDF_RelocationTable; dumpLabels: Standard_Boolean;
          dumpAttributes: Standard_Boolean; dumpTransients: Standard_Boolean;
          anOS: var Standard_OStream): var Standard_OStream {.noSideEffect,
    importcpp: "Dump", header: "TDF_RelocationTable.hxx".}
type
  TDF_RelocationTablebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDF_RelocationTable::get_type_name(@)",
                              header: "TDF_RelocationTable.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_RelocationTable::get_type_descriptor(@)",
    header: "TDF_RelocationTable.hxx".}
proc DynamicType*(this: TDF_RelocationTable): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_RelocationTable.hxx".}