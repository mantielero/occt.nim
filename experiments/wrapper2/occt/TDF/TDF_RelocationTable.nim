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

discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of Standard_Transient"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_RelocationTable"
type
  HandleTDF_RelocationTable* = Handle[TDF_RelocationTable]

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
                        header: "TDF_RelocationTable.hxx", bycopy.} = object of StandardTransient ##
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


proc constructTDF_RelocationTable*(selfRelocate: bool = false): TDF_RelocationTable {.
    constructor, importcpp: "TDF_RelocationTable(@)",
    header: "TDF_RelocationTable.hxx".}
proc selfRelocate*(this: var TDF_RelocationTable; selfRelocate: bool) {.
    importcpp: "SelfRelocate", header: "TDF_RelocationTable.hxx".}
proc selfRelocate*(this: TDF_RelocationTable): bool {.noSideEffect,
    importcpp: "SelfRelocate", header: "TDF_RelocationTable.hxx".}
proc afterRelocate*(this: var TDF_RelocationTable; afterRelocate: bool) {.
    importcpp: "AfterRelocate", header: "TDF_RelocationTable.hxx".}
proc afterRelocate*(this: TDF_RelocationTable): bool {.noSideEffect,
    importcpp: "AfterRelocate", header: "TDF_RelocationTable.hxx".}
proc setRelocation*(this: var TDF_RelocationTable; aSourceLabel: TDF_Label;
                   aTargetLabel: TDF_Label) {.importcpp: "SetRelocation",
    header: "TDF_RelocationTable.hxx".}
proc hasRelocation*(this: TDF_RelocationTable; aSourceLabel: TDF_Label;
                   aTargetLabel: var TDF_Label): bool {.noSideEffect,
    importcpp: "HasRelocation", header: "TDF_RelocationTable.hxx".}
proc setRelocation*(this: var TDF_RelocationTable;
                   aSourceAttribute: Handle[TDF_Attribute];
                   aTargetAttribute: Handle[TDF_Attribute]) {.
    importcpp: "SetRelocation", header: "TDF_RelocationTable.hxx".}
proc hasRelocation*(this: TDF_RelocationTable;
                   aSourceAttribute: Handle[TDF_Attribute];
                   aTargetAttribute: var Handle[TDF_Attribute]): bool {.
    noSideEffect, importcpp: "HasRelocation", header: "TDF_RelocationTable.hxx".}
proc hasRelocation*[T](this: TDF_RelocationTable; theSource: Handle[TDF_Attribute];
                      theTarget: var Handle[T]): bool {.noSideEffect,
    importcpp: "HasRelocation", header: "TDF_RelocationTable.hxx".}
proc setTransientRelocation*(this: var TDF_RelocationTable;
                            aSourceTransient: Handle[StandardTransient];
                            aTargetTransient: Handle[StandardTransient]) {.
    importcpp: "SetTransientRelocation", header: "TDF_RelocationTable.hxx".}
proc hasTransientRelocation*(this: TDF_RelocationTable;
                            aSourceTransient: Handle[StandardTransient];
                            aTargetTransient: var Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "HasTransientRelocation",
    header: "TDF_RelocationTable.hxx".}
proc clear*(this: var TDF_RelocationTable) {.importcpp: "Clear",
    header: "TDF_RelocationTable.hxx".}
proc targetLabelMap*(this: TDF_RelocationTable; aLabelMap: var TDF_LabelMap) {.
    noSideEffect, importcpp: "TargetLabelMap", header: "TDF_RelocationTable.hxx".}
proc targetAttributeMap*(this: TDF_RelocationTable;
                        anAttributeMap: var TDF_AttributeMap) {.noSideEffect,
    importcpp: "TargetAttributeMap", header: "TDF_RelocationTable.hxx".}
proc labelTable*(this: var TDF_RelocationTable): var TDF_LabelDataMap {.
    importcpp: "LabelTable", header: "TDF_RelocationTable.hxx".}
proc attributeTable*(this: var TDF_RelocationTable): var TDF_AttributeDataMap {.
    importcpp: "AttributeTable", header: "TDF_RelocationTable.hxx".}
proc transientTable*(this: var TDF_RelocationTable): var TColStdIndexedDataMapOfTransientTransient {.
    importcpp: "TransientTable", header: "TDF_RelocationTable.hxx".}
proc dump*(this: TDF_RelocationTable; dumpLabels: bool; dumpAttributes: bool;
          dumpTransients: bool; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_RelocationTable.hxx".}
type
  TDF_RelocationTablebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDF_RelocationTable::get_type_name(@)",
                            header: "TDF_RelocationTable.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_RelocationTable::get_type_descriptor(@)",
    header: "TDF_RelocationTable.hxx".}
proc dynamicType*(this: TDF_RelocationTable): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_RelocationTable.hxx".}
