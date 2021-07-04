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
  ../Standard/Standard, ../Standard/Standard_Type, TDF_LabelList, TDF_LabelMap,
  TDF_AttributeMap, ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_DataSet"
type
  Handle_TDF_DataSet* = handle[TDF_DataSet]

## ! This class is a set of TDF informations like
## ! labels and attributes.

type
  TDF_DataSet* {.importcpp: "TDF_DataSet", header: "TDF_DataSet.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## DataSet
                                                                                                    ## object.


proc constructTDF_DataSet*(): TDF_DataSet {.constructor,
    importcpp: "TDF_DataSet(@)", header: "TDF_DataSet.hxx".}
proc Clear*(this: var TDF_DataSet) {.importcpp: "Clear", header: "TDF_DataSet.hxx".}
proc IsEmpty*(this: TDF_DataSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDF_DataSet.hxx".}
proc AddLabel*(this: var TDF_DataSet; aLabel: TDF_Label) {.importcpp: "AddLabel",
    header: "TDF_DataSet.hxx".}
proc ContainsLabel*(this: TDF_DataSet; aLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "ContainsLabel", header: "TDF_DataSet.hxx".}
proc Labels*(this: var TDF_DataSet): var TDF_LabelMap {.importcpp: "Labels",
    header: "TDF_DataSet.hxx".}
proc AddAttribute*(this: var TDF_DataSet; anAttribute: handle[TDF_Attribute]) {.
    importcpp: "AddAttribute", header: "TDF_DataSet.hxx".}
proc ContainsAttribute*(this: TDF_DataSet; anAttribute: handle[TDF_Attribute]): Standard_Boolean {.
    noSideEffect, importcpp: "ContainsAttribute", header: "TDF_DataSet.hxx".}
proc Attributes*(this: var TDF_DataSet): var TDF_AttributeMap {.
    importcpp: "Attributes", header: "TDF_DataSet.hxx".}
proc AddRoot*(this: var TDF_DataSet; aLabel: TDF_Label) {.importcpp: "AddRoot",
    header: "TDF_DataSet.hxx".}
proc Roots*(this: var TDF_DataSet): var TDF_LabelList {.importcpp: "Roots",
    header: "TDF_DataSet.hxx".}
proc Dump*(this: TDF_DataSet; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_DataSet.hxx".}
proc `<<`*(this: TDF_DataSet; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "(# << #)", header: "TDF_DataSet.hxx".}
type
  TDF_DataSetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDF_DataSet::get_type_name(@)",
                              header: "TDF_DataSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_DataSet::get_type_descriptor(@)", header: "TDF_DataSet.hxx".}
proc DynamicType*(this: TDF_DataSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_DataSet.hxx".}