##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESAppli_RegionRestriction"
discard "forward decl of IGESAppli_RegionRestriction"
type
  Handle_IGESAppli_RegionRestriction* = handle[IGESAppli_RegionRestriction]

## ! defines RegionRestriction, Type <406> Form <2>
## ! in package IGESAppli
## ! Defines regions to set an application's restriction
## ! over a region.

type
  IGESAppli_RegionRestriction* {.importcpp: "IGESAppli_RegionRestriction",
                                header: "IGESAppli_RegionRestriction.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_RegionRestriction*(): IGESAppli_RegionRestriction {.
    constructor, importcpp: "IGESAppli_RegionRestriction(@)",
    header: "IGESAppli_RegionRestriction.hxx".}
proc Init*(this: var IGESAppli_RegionRestriction; nbPropVal: Standard_Integer;
          aViasRest: Standard_Integer; aCompoRest: Standard_Integer;
          aCktRest: Standard_Integer) {.importcpp: "Init",
                                      header: "IGESAppli_RegionRestriction.hxx".}
proc NbPropertyValues*(this: IGESAppli_RegionRestriction): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_RegionRestriction.hxx".}
proc ElectricalViasRestriction*(this: IGESAppli_RegionRestriction): Standard_Integer {.
    noSideEffect, importcpp: "ElectricalViasRestriction",
    header: "IGESAppli_RegionRestriction.hxx".}
proc ElectricalComponentRestriction*(this: IGESAppli_RegionRestriction): Standard_Integer {.
    noSideEffect, importcpp: "ElectricalComponentRestriction",
    header: "IGESAppli_RegionRestriction.hxx".}
proc ElectricalCktRestriction*(this: IGESAppli_RegionRestriction): Standard_Integer {.
    noSideEffect, importcpp: "ElectricalCktRestriction",
    header: "IGESAppli_RegionRestriction.hxx".}
type
  IGESAppli_RegionRestrictionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_RegionRestriction::get_type_name(@)",
                              header: "IGESAppli_RegionRestriction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_RegionRestriction::get_type_descriptor(@)",
    header: "IGESAppli_RegionRestriction.hxx".}
proc DynamicType*(this: IGESAppli_RegionRestriction): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_RegionRestriction.hxx".}