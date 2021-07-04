##  Created on: 1994-05-09
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1994-1999 Matra Datavision
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
  Units_QuantitiesSequence, Units_UnitsSequence,
  ../TColStd/TColStd_HSequenceOfInteger, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean

discard "forward decl of Units_UnitsSystem"
discard "forward decl of Units_UnitsDictionary"
discard "forward decl of TCollection_AsciiString"
type
  Units_Explorer* {.importcpp: "Units_Explorer", header: "Units_Explorer.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## contructor
                                                                                         ## of
                                                                                         ## the
                                                                                         ## class.


proc constructUnits_Explorer*(): Units_Explorer {.constructor,
    importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc constructUnits_Explorer*(aunitssystem: handle[Units_UnitsSystem]): Units_Explorer {.
    constructor, importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc constructUnits_Explorer*(aunitsdictionary: handle[Units_UnitsDictionary]): Units_Explorer {.
    constructor, importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc constructUnits_Explorer*(aunitssystem: handle[Units_UnitsSystem];
                             aquantity: Standard_CString): Units_Explorer {.
    constructor, importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc constructUnits_Explorer*(aunitsdictionary: handle[Units_UnitsDictionary];
                             aquantity: Standard_CString): Units_Explorer {.
    constructor, importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc Init*(this: var Units_Explorer; aunitssystem: handle[Units_UnitsSystem]) {.
    importcpp: "Init", header: "Units_Explorer.hxx".}
proc Init*(this: var Units_Explorer; aunitsdictionary: handle[Units_UnitsDictionary]) {.
    importcpp: "Init", header: "Units_Explorer.hxx".}
proc Init*(this: var Units_Explorer; aunitssystem: handle[Units_UnitsSystem];
          aquantity: Standard_CString) {.importcpp: "Init",
                                       header: "Units_Explorer.hxx".}
proc Init*(this: var Units_Explorer;
          aunitsdictionary: handle[Units_UnitsDictionary];
          aquantity: Standard_CString) {.importcpp: "Init",
                                       header: "Units_Explorer.hxx".}
proc MoreQuantity*(this: Units_Explorer): Standard_Boolean {.noSideEffect,
    importcpp: "MoreQuantity", header: "Units_Explorer.hxx".}
proc NextQuantity*(this: var Units_Explorer) {.importcpp: "NextQuantity",
    header: "Units_Explorer.hxx".}
proc Quantity*(this: Units_Explorer): TCollection_AsciiString {.noSideEffect,
    importcpp: "Quantity", header: "Units_Explorer.hxx".}
proc MoreUnit*(this: Units_Explorer): Standard_Boolean {.noSideEffect,
    importcpp: "MoreUnit", header: "Units_Explorer.hxx".}
proc NextUnit*(this: var Units_Explorer) {.importcpp: "NextUnit",
                                       header: "Units_Explorer.hxx".}
proc Unit*(this: Units_Explorer): TCollection_AsciiString {.noSideEffect,
    importcpp: "Unit", header: "Units_Explorer.hxx".}
proc IsActive*(this: Units_Explorer): Standard_Boolean {.noSideEffect,
    importcpp: "IsActive", header: "Units_Explorer.hxx".}