##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESAppli_PWBArtworkStackup"
discard "forward decl of IGESAppli_PWBArtworkStackup"
type
  HandleIGESAppliPWBArtworkStackup* = Handle[IGESAppliPWBArtworkStackup]

## ! defines PWBArtworkStackup, Type <406> Form <25>
## ! in package IGESAppli
## ! Used to communicate which exchange file levels are to
## ! be combined in order to create the artwork for a
## ! printed wire board (PWB). This property should be
## ! attached to the entity defining the printed wire
## ! assembly (PWA) or if no such entity exists, then the
## ! property should stand alone in the file.

type
  IGESAppliPWBArtworkStackup* {.importcpp: "IGESAppli_PWBArtworkStackup",
                               header: "IGESAppli_PWBArtworkStackup.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliPWBArtworkStackup*(): IGESAppliPWBArtworkStackup {.
    constructor, importcpp: "IGESAppli_PWBArtworkStackup(@)",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc init*(this: var IGESAppliPWBArtworkStackup; nbPropVal: StandardInteger;
          anArtIdent: Handle[TCollectionHAsciiString];
          allLevelNums: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc nbPropertyValues*(this: IGESAppliPWBArtworkStackup): StandardInteger {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc identification*(this: IGESAppliPWBArtworkStackup): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Identification",
                              header: "IGESAppli_PWBArtworkStackup.hxx".}
proc nbLevelNumbers*(this: IGESAppliPWBArtworkStackup): StandardInteger {.
    noSideEffect, importcpp: "NbLevelNumbers",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc levelNumber*(this: IGESAppliPWBArtworkStackup; index: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "LevelNumber",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
type
  IGESAppliPWBArtworkStackupbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_PWBArtworkStackup::get_type_name(@)",
                            header: "IGESAppli_PWBArtworkStackup.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_PWBArtworkStackup::get_type_descriptor(@)",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc dynamicType*(this: IGESAppliPWBArtworkStackup): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_PWBArtworkStackup.hxx".}

