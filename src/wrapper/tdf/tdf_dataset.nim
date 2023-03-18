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





proc newTDF_DataSet*(): TDF_DataSet {.cdecl, constructor,
                                   importcpp: "TDF_DataSet(@)",
                                   header: "TDF_DataSet.hxx".}
proc clear*(this: var TDF_DataSet) {.cdecl, importcpp: "Clear",
                                 header: "TDF_DataSet.hxx".}
proc isEmpty*(this: TDF_DataSet): bool {.noSideEffect, cdecl, importcpp: "IsEmpty",
                                     header: "TDF_DataSet.hxx".}
proc addLabel*(this: var TDF_DataSet; aLabel: TDF_Label) {.cdecl,
    importcpp: "AddLabel", header: "TDF_DataSet.hxx".}
proc containsLabel*(this: TDF_DataSet; aLabel: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "ContainsLabel", header: "TDF_DataSet.hxx".}
proc labels*(this: var TDF_DataSet): var TDF_LabelMap {.cdecl, importcpp: "Labels",
    header: "TDF_DataSet.hxx".}
proc addAttribute*(this: var TDF_DataSet; anAttribute: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "AddAttribute", header: "TDF_DataSet.hxx".}
proc containsAttribute*(this: TDF_DataSet; anAttribute: Handle[TDF_Attribute]): bool {.
    noSideEffect, cdecl, importcpp: "ContainsAttribute", header: "TDF_DataSet.hxx".}
proc attributes*(this: var TDF_DataSet): var TDF_AttributeMap {.cdecl,
    importcpp: "Attributes", header: "TDF_DataSet.hxx".}
proc addRoot*(this: var TDF_DataSet; aLabel: TDF_Label) {.cdecl, importcpp: "AddRoot",
    header: "TDF_DataSet.hxx".}
proc roots*(this: var TDF_DataSet): var TDF_LabelList {.cdecl, importcpp: "Roots",
    header: "TDF_DataSet.hxx".}
proc dump*(this: TDF_DataSet; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDF_DataSet.hxx".}
proc `<<`*(this: TDF_DataSet; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "(# << #)", header: "TDF_DataSet.hxx".}

