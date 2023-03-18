import tdf_types
import ../standard/standard_types



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





proc newTDF_RelocationTable*(selfRelocate: bool = false): TDF_RelocationTable {.cdecl,
    constructor, importcpp: "TDF_RelocationTable(@)",
    header: "TDF_RelocationTable.hxx".}
proc selfRelocate*(this: var TDF_RelocationTable; selfRelocate: bool) {.cdecl,
    importcpp: "SelfRelocate", header: "TDF_RelocationTable.hxx".}
proc selfRelocate*(this: TDF_RelocationTable): bool {.noSideEffect, cdecl,
    importcpp: "SelfRelocate", header: "TDF_RelocationTable.hxx".}
proc afterRelocate*(this: var TDF_RelocationTable; afterRelocate: bool) {.cdecl,
    importcpp: "AfterRelocate", header: "TDF_RelocationTable.hxx".}
proc afterRelocate*(this: TDF_RelocationTable): bool {.noSideEffect, cdecl,
    importcpp: "AfterRelocate", header: "TDF_RelocationTable.hxx".}
proc setRelocation*(this: var TDF_RelocationTable; aSourceLabel: TDF_Label;
                   aTargetLabel: TDF_Label) {.cdecl, importcpp: "SetRelocation",
    header: "TDF_RelocationTable.hxx".}
proc hasRelocation*(this: TDF_RelocationTable; aSourceLabel: TDF_Label;
                   aTargetLabel: var TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "HasRelocation", header: "TDF_RelocationTable.hxx".}
proc setRelocation*(this: var TDF_RelocationTable;
                   aSourceAttribute: Handle[TDF_Attribute];
                   aTargetAttribute: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "SetRelocation", header: "TDF_RelocationTable.hxx".}
proc hasRelocation*(this: TDF_RelocationTable;
                   aSourceAttribute: Handle[TDF_Attribute];
                   aTargetAttribute: var Handle[TDF_Attribute]): bool {.
    noSideEffect, cdecl, importcpp: "HasRelocation",
    header: "TDF_RelocationTable.hxx".}
proc hasRelocation*[T](this: TDF_RelocationTable; theSource: Handle[TDF_Attribute];
                      theTarget: var Handle[T]): bool {.noSideEffect, cdecl,
    importcpp: "HasRelocation", header: "TDF_RelocationTable.hxx".}
proc setTransientRelocation*(this: var TDF_RelocationTable;
                            aSourceTransient: Handle[StandardTransient];
                            aTargetTransient: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetTransientRelocation", header: "TDF_RelocationTable.hxx".}
proc hasTransientRelocation*(this: TDF_RelocationTable;
                            aSourceTransient: Handle[StandardTransient];
                            aTargetTransient: var Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "HasTransientRelocation",
    header: "TDF_RelocationTable.hxx".}
proc clear*(this: var TDF_RelocationTable) {.cdecl, importcpp: "Clear",
    header: "TDF_RelocationTable.hxx".}
proc targetLabelMap*(this: TDF_RelocationTable; aLabelMap: var TDF_LabelMap) {.
    noSideEffect, cdecl, importcpp: "TargetLabelMap",
    header: "TDF_RelocationTable.hxx".}
proc targetAttributeMap*(this: TDF_RelocationTable;
                        anAttributeMap: var TDF_AttributeMap) {.noSideEffect, cdecl,
    importcpp: "TargetAttributeMap", header: "TDF_RelocationTable.hxx".}
proc labelTable*(this: var TDF_RelocationTable): var TDF_LabelDataMap {.cdecl,
    importcpp: "LabelTable", header: "TDF_RelocationTable.hxx".}
proc attributeTable*(this: var TDF_RelocationTable): var TDF_AttributeDataMap {.cdecl,
    importcpp: "AttributeTable", header: "TDF_RelocationTable.hxx".}
proc transientTable*(this: var TDF_RelocationTable): var TColStdIndexedDataMapOfTransientTransient {.
    cdecl, importcpp: "TransientTable", header: "TDF_RelocationTable.hxx".}
proc dump*(this: TDF_RelocationTable; dumpLabels: bool; dumpAttributes: bool;
          dumpTransients: bool; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDF_RelocationTable.hxx".}

