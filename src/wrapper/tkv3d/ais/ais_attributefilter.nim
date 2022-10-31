import ../selectmgr/selectmgr_types
import ../../tkernel/standard/standard_types
import ais_types
import ../../tkernel/quantity/quantity_types





##  Created on: 1997-03-04
##  Created by: Robert COUBLANC
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





proc newAIS_AttributeFilter*(): AIS_AttributeFilter {.cdecl, constructor,
    importcpp: "AIS_AttributeFilter(@)", header: "AIS_AttributeFilter.hxx".}
proc newAIS_AttributeFilter*(aCol: QuantityNameOfColor): AIS_AttributeFilter {.
    cdecl, constructor, importcpp: "AIS_AttributeFilter(@)", header: "AIS_AttributeFilter.hxx".}
proc newAIS_AttributeFilter*(aWidth: cfloat): AIS_AttributeFilter {.cdecl,
    constructor, importcpp: "AIS_AttributeFilter(@)", header: "AIS_AttributeFilter.hxx".}
proc hasColor*(this: AIS_AttributeFilter): bool {.noSideEffect, cdecl,
    importcpp: "HasColor", header: "AIS_AttributeFilter.hxx".}
proc hasWidth*(this: AIS_AttributeFilter): bool {.noSideEffect, cdecl,
    importcpp: "HasWidth", header: "AIS_AttributeFilter.hxx".}
proc setColor*(this: var AIS_AttributeFilter; aCol: QuantityNameOfColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_AttributeFilter.hxx".}
proc setWidth*(this: var AIS_AttributeFilter; aWidth: cfloat) {.cdecl,
    importcpp: "SetWidth", header: "AIS_AttributeFilter.hxx".}
proc unsetColor*(this: var AIS_AttributeFilter) {.cdecl, importcpp: "UnsetColor",
    header: "AIS_AttributeFilter.hxx".}
proc unsetWidth*(this: var AIS_AttributeFilter) {.cdecl, importcpp: "UnsetWidth",
    header: "AIS_AttributeFilter.hxx".}
proc isOk*(this: AIS_AttributeFilter; anObj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, cdecl, importcpp: "IsOk", header: "AIS_AttributeFilter.hxx".}


