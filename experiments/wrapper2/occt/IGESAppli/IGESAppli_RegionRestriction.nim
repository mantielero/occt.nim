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

discard "forward decl of IGESAppli_RegionRestriction"
discard "forward decl of IGESAppli_RegionRestriction"
type
  HandleC1C1* = Handle[IGESAppliRegionRestriction]

## ! defines RegionRestriction, Type <406> Form <2>
## ! in package IGESAppli
## ! Defines regions to set an application's restriction
## ! over a region.

type
  IGESAppliRegionRestriction* {.importcpp: "IGESAppli_RegionRestriction",
                               header: "IGESAppli_RegionRestriction.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliRegionRestriction*(): IGESAppliRegionRestriction {.
    constructor, importcpp: "IGESAppli_RegionRestriction(@)",
    header: "IGESAppli_RegionRestriction.hxx".}
proc init*(this: var IGESAppliRegionRestriction; nbPropVal: cint; aViasRest: cint;
          aCompoRest: cint; aCktRest: cint) {.importcpp: "Init",
    header: "IGESAppli_RegionRestriction.hxx".}
proc nbPropertyValues*(this: IGESAppliRegionRestriction): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_RegionRestriction.hxx".}
proc electricalViasRestriction*(this: IGESAppliRegionRestriction): cint {.
    noSideEffect, importcpp: "ElectricalViasRestriction",
    header: "IGESAppli_RegionRestriction.hxx".}
proc electricalComponentRestriction*(this: IGESAppliRegionRestriction): cint {.
    noSideEffect, importcpp: "ElectricalComponentRestriction",
    header: "IGESAppli_RegionRestriction.hxx".}
proc electricalCktRestriction*(this: IGESAppliRegionRestriction): cint {.
    noSideEffect, importcpp: "ElectricalCktRestriction",
    header: "IGESAppli_RegionRestriction.hxx".}
type
  IGESAppliRegionRestrictionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_RegionRestriction::get_type_name(@)",
                            header: "IGESAppli_RegionRestriction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_RegionRestriction::get_type_descriptor(@)",
    header: "IGESAppli_RegionRestriction.hxx".}
proc dynamicType*(this: IGESAppliRegionRestriction): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_RegionRestriction.hxx".}

























