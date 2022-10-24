import ais_types

##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Customizable properties.



proc newAIS_ColoredDrawer*(theLink: Handle[Prs3dDrawer]): AIS_ColoredDrawer {.cdecl,
    constructor, importcpp: "AIS_ColoredDrawer(@)", header: "AIS_ColoredDrawer.hxx".}
proc isHidden*(this: AIS_ColoredDrawer): bool {.noSideEffect, cdecl,
    importcpp: "IsHidden", header: "AIS_ColoredDrawer.hxx".}
proc setHidden*(this: var AIS_ColoredDrawer; theToHide: bool) {.cdecl,
    importcpp: "SetHidden", header: "AIS_ColoredDrawer.hxx".}
proc hasOwnMaterial*(this: AIS_ColoredDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnMaterial", header: "AIS_ColoredDrawer.hxx".}
proc unsetOwnMaterial*(this: var AIS_ColoredDrawer) {.cdecl,
    importcpp: "UnsetOwnMaterial", header: "AIS_ColoredDrawer.hxx".}
proc setOwnMaterial*(this: var AIS_ColoredDrawer) {.cdecl,
    importcpp: "SetOwnMaterial", header: "AIS_ColoredDrawer.hxx".}
proc hasOwnColor*(this: AIS_ColoredDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnColor", header: "AIS_ColoredDrawer.hxx".}
proc unsetOwnColor*(this: var AIS_ColoredDrawer) {.cdecl, importcpp: "UnsetOwnColor",
    header: "AIS_ColoredDrawer.hxx".}
proc setOwnColor*(this: var AIS_ColoredDrawer; a2: QuantityColor) {.cdecl,
    importcpp: "SetOwnColor", header: "AIS_ColoredDrawer.hxx".}
  ## theColor
proc hasOwnTransparency*(this: AIS_ColoredDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnTransparency", header: "AIS_ColoredDrawer.hxx".}
proc unsetOwnTransparency*(this: var AIS_ColoredDrawer) {.cdecl,
    importcpp: "UnsetOwnTransparency", header: "AIS_ColoredDrawer.hxx".}
proc setOwnTransparency*(this: var AIS_ColoredDrawer; a2: cfloat) {.cdecl,
    importcpp: "SetOwnTransparency", header: "AIS_ColoredDrawer.hxx".}
proc hasOwnWidth*(this: AIS_ColoredDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnWidth", header: "AIS_ColoredDrawer.hxx".}
proc unsetOwnWidth*(this: var AIS_ColoredDrawer) {.cdecl, importcpp: "UnsetOwnWidth",
    header: "AIS_ColoredDrawer.hxx".}
proc setOwnWidth*(this: var AIS_ColoredDrawer; a2: cfloat) {.cdecl,
    importcpp: "SetOwnWidth", header: "AIS_ColoredDrawer.hxx".}

