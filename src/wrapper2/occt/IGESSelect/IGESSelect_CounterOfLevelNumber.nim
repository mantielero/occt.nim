##  Created on: 1994-05-31
##  Created by: Modelistation
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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESSelect_CounterOfLevelNumber"
discard "forward decl of IGESSelect_CounterOfLevelNumber"
type
  HandleIGESSelectCounterOfLevelNumber* = Handle[IGESSelectCounterOfLevelNumber]

## ! This class gives information about Level Number. It counts
## ! entities according level number, considering also the
## ! multiple level (see the class LevelList) for which an entity
## ! is attached to each of the listed levels.
## !
## ! Data are available, as level number, or as their alphanumeric
## ! counterparts ("LEVEL nnnnnnn", " NO LEVEL", " LEVEL LIST")

type
  IGESSelectCounterOfLevelNumber* {.importcpp: "IGESSelect_CounterOfLevelNumber", header: "IGESSelect_CounterOfLevelNumber.hxx",
                                   bycopy.} = object of IFSelectSignCounter ## ! Creates a
                                                                       ## CounterOfLevelNumber, clear, ready to work
                                                                       ## ! <withmap> and
                                                                       ## <withlist> are
                                                                       ## transmitted to
                                                                       ## SignCounter


proc constructIGESSelectCounterOfLevelNumber*(
    withmap: StandardBoolean = standardTrue;
    withlist: StandardBoolean = standardFalse): IGESSelectCounterOfLevelNumber {.
    constructor, importcpp: "IGESSelect_CounterOfLevelNumber(@)",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc clear*(this: var IGESSelectCounterOfLevelNumber) {.importcpp: "Clear",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc addSign*(this: var IGESSelectCounterOfLevelNumber;
             ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]) {.importcpp: "AddSign",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc addLevel*(this: var IGESSelectCounterOfLevelNumber;
              ent: Handle[StandardTransient]; level: StandardInteger) {.
    importcpp: "AddLevel", header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc highestLevel*(this: IGESSelectCounterOfLevelNumber): StandardInteger {.
    noSideEffect, importcpp: "HighestLevel",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc nbTimesLevel*(this: IGESSelectCounterOfLevelNumber; level: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbTimesLevel",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc levels*(this: IGESSelectCounterOfLevelNumber): Handle[
    TColStdHSequenceOfInteger] {.noSideEffect, importcpp: "Levels",
                                header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc sign*(this: IGESSelectCounterOfLevelNumber; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Sign", header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc printCount*(this: IGESSelectCounterOfLevelNumber; s: var StandardOStream) {.
    noSideEffect, importcpp: "PrintCount",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
type
  IGESSelectCounterOfLevelNumberbaseType* = IFSelectSignCounter

proc getTypeName*(): cstring {.importcpp: "IGESSelect_CounterOfLevelNumber::get_type_name(@)",
                            header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_CounterOfLevelNumber::get_type_descriptor(@)",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc dynamicType*(this: IGESSelectCounterOfLevelNumber): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}

