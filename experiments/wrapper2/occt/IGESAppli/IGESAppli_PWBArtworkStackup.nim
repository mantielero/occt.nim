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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfInteger, ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESAppli_PWBArtworkStackup"
discard "forward decl of IGESAppli_PWBArtworkStackup"
type
  Handle_IGESAppli_PWBArtworkStackup* = handle[IGESAppli_PWBArtworkStackup]

## ! defines PWBArtworkStackup, Type <406> Form <25>
## ! in package IGESAppli
## ! Used to communicate which exchange file levels are to
## ! be combined in order to create the artwork for a
## ! printed wire board (PWB). This property should be
## ! attached to the entity defining the printed wire
## ! assembly (PWA) or if no such entity exists, then the
## ! property should stand alone in the file.

type
  IGESAppli_PWBArtworkStackup* {.importcpp: "IGESAppli_PWBArtworkStackup",
                                header: "IGESAppli_PWBArtworkStackup.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_PWBArtworkStackup*(): IGESAppli_PWBArtworkStackup {.
    constructor, importcpp: "IGESAppli_PWBArtworkStackup(@)",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc Init*(this: var IGESAppli_PWBArtworkStackup; nbPropVal: Standard_Integer;
          anArtIdent: handle[TCollection_HAsciiString];
          allLevelNums: handle[TColStd_HArray1OfInteger]) {.importcpp: "Init",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc NbPropertyValues*(this: IGESAppli_PWBArtworkStackup): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc Identification*(this: IGESAppli_PWBArtworkStackup): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Identification",
                               header: "IGESAppli_PWBArtworkStackup.hxx".}
proc NbLevelNumbers*(this: IGESAppli_PWBArtworkStackup): Standard_Integer {.
    noSideEffect, importcpp: "NbLevelNumbers",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc LevelNumber*(this: IGESAppli_PWBArtworkStackup; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "LevelNumber",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
type
  IGESAppli_PWBArtworkStackupbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_PWBArtworkStackup::get_type_name(@)",
                              header: "IGESAppli_PWBArtworkStackup.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_PWBArtworkStackup::get_type_descriptor(@)",
    header: "IGESAppli_PWBArtworkStackup.hxx".}
proc DynamicType*(this: IGESAppli_PWBArtworkStackup): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_PWBArtworkStackup.hxx".}