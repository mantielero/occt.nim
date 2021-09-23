##  Created on: 1992-06-22
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Time,
  Units_QuantitiesSequence, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Units_Dimensions"
discard "forward decl of Units_UnitsDictionary"
discard "forward decl of Units_UnitsDictionary"
type
  Handle_Units_UnitsDictionary* = handle[Units_UnitsDictionary]

## ! This class creates  a dictionary of all  the units
## ! you want to know.

type
  Units_UnitsDictionary* {.importcpp: "Units_UnitsDictionary",
                          header: "Units_UnitsDictionary.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## instance
                                                                                                ## of
                                                                                                ## UnitsDictionary.


proc constructUnits_UnitsDictionary*(): Units_UnitsDictionary {.constructor,
    importcpp: "Units_UnitsDictionary(@)", header: "Units_UnitsDictionary.hxx".}
proc Creates*(this: var Units_UnitsDictionary) {.importcpp: "Creates",
    header: "Units_UnitsDictionary.hxx".}
proc Sequence*(this: Units_UnitsDictionary): handle[Units_QuantitiesSequence] {.
    noSideEffect, importcpp: "Sequence", header: "Units_UnitsDictionary.hxx".}
proc ActiveUnit*(this: Units_UnitsDictionary; aquantity: Standard_CString): TCollection_AsciiString {.
    noSideEffect, importcpp: "ActiveUnit", header: "Units_UnitsDictionary.hxx".}
proc Dump*(this: Units_UnitsDictionary; alevel: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "Units_UnitsDictionary.hxx".}
proc Dump*(this: Units_UnitsDictionary; adimensions: handle[Units_Dimensions]) {.
    noSideEffect, importcpp: "Dump", header: "Units_UnitsDictionary.hxx".}
type
  Units_UnitsDictionarybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Units_UnitsDictionary::get_type_name(@)",
                              header: "Units_UnitsDictionary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_UnitsDictionary::get_type_descriptor(@)",
    header: "Units_UnitsDictionary.hxx".}
proc DynamicType*(this: Units_UnitsDictionary): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Units_UnitsDictionary.hxx".}