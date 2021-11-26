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

discard "forward decl of Units_UnitsSystem"
discard "forward decl of Units_UnitsDictionary"
discard "forward decl of TCollection_AsciiString"
type
  UnitsExplorer* {.importcpp: "Units_Explorer", header: "Units_Explorer.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## contructor
                                                                                        ## of
                                                                                        ## the
                                                                                        ## class.


proc constructUnitsExplorer*(): UnitsExplorer {.constructor,
    importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc constructUnitsExplorer*(aunitssystem: Handle[UnitsUnitsSystem]): UnitsExplorer {.
    constructor, importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc constructUnitsExplorer*(aunitsdictionary: Handle[UnitsUnitsDictionary]): UnitsExplorer {.
    constructor, importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc constructUnitsExplorer*(aunitssystem: Handle[UnitsUnitsSystem];
                            aquantity: StandardCString): UnitsExplorer {.
    constructor, importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc constructUnitsExplorer*(aunitsdictionary: Handle[UnitsUnitsDictionary];
                            aquantity: StandardCString): UnitsExplorer {.
    constructor, importcpp: "Units_Explorer(@)", header: "Units_Explorer.hxx".}
proc init*(this: var UnitsExplorer; aunitssystem: Handle[UnitsUnitsSystem]) {.
    importcpp: "Init", header: "Units_Explorer.hxx".}
proc init*(this: var UnitsExplorer; aunitsdictionary: Handle[UnitsUnitsDictionary]) {.
    importcpp: "Init", header: "Units_Explorer.hxx".}
proc init*(this: var UnitsExplorer; aunitssystem: Handle[UnitsUnitsSystem];
          aquantity: StandardCString) {.importcpp: "Init",
                                      header: "Units_Explorer.hxx".}
proc init*(this: var UnitsExplorer; aunitsdictionary: Handle[UnitsUnitsDictionary];
          aquantity: StandardCString) {.importcpp: "Init",
                                      header: "Units_Explorer.hxx".}
proc moreQuantity*(this: UnitsExplorer): bool {.noSideEffect,
    importcpp: "MoreQuantity", header: "Units_Explorer.hxx".}
proc nextQuantity*(this: var UnitsExplorer) {.importcpp: "NextQuantity",
    header: "Units_Explorer.hxx".}
proc quantity*(this: UnitsExplorer): TCollectionAsciiString {.noSideEffect,
    importcpp: "Quantity", header: "Units_Explorer.hxx".}
proc moreUnit*(this: UnitsExplorer): bool {.noSideEffect, importcpp: "MoreUnit",
                                        header: "Units_Explorer.hxx".}
proc nextUnit*(this: var UnitsExplorer) {.importcpp: "NextUnit",
                                      header: "Units_Explorer.hxx".}
proc unit*(this: UnitsExplorer): TCollectionAsciiString {.noSideEffect,
    importcpp: "Unit", header: "Units_Explorer.hxx".}
proc isActive*(this: UnitsExplorer): bool {.noSideEffect, importcpp: "IsActive",
                                        header: "Units_Explorer.hxx".}

























