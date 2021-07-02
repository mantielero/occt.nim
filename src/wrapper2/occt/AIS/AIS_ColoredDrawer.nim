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

type
  AIS_ColoredDrawer* {.importcpp: "AIS_ColoredDrawer",
                      header: "AIS_ColoredDrawer.hxx", bycopy.} = object of Prs3dDrawer ##
                                                                                 ## !
                                                                                 ## Default
                                                                                 ## constructor.
                                                                                 ##
                                                                                 ## !
                                                                                 ## @name
                                                                                 ## list
                                                                                 ## of
                                                                                 ## overridden
                                                                                 ## properties
    myIsHidden* {.importc: "myIsHidden".}: bool
    myHasOwnMaterial* {.importc: "myHasOwnMaterial".}: bool
    myHasOwnColor* {.importc: "myHasOwnColor".}: bool
    myHasOwnTransp* {.importc: "myHasOwnTransp".}: bool
    myHasOwnWidth* {.importc: "myHasOwnWidth".}: bool

  AIS_ColoredDrawerbaseType* = Prs3dDrawer

proc getTypeName*(): cstring {.importcpp: "AIS_ColoredDrawer::get_type_name(@)",
                            header: "AIS_ColoredDrawer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_ColoredDrawer::get_type_descriptor(@)",
    header: "AIS_ColoredDrawer.hxx".}
proc dynamicType*(this: AIS_ColoredDrawer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ColoredDrawer.hxx".}
proc constructAIS_ColoredDrawer*(theLink: Handle[Prs3dDrawer]): AIS_ColoredDrawer {.
    constructor, importcpp: "AIS_ColoredDrawer(@)", header: "AIS_ColoredDrawer.hxx".}
proc isHidden*(this: AIS_ColoredDrawer): bool {.noSideEffect, importcpp: "IsHidden",
    header: "AIS_ColoredDrawer.hxx".}
proc setHidden*(this: var AIS_ColoredDrawer; theToHide: bool) {.
    importcpp: "SetHidden", header: "AIS_ColoredDrawer.hxx".}
proc hasOwnMaterial*(this: AIS_ColoredDrawer): bool {.noSideEffect,
    importcpp: "HasOwnMaterial", header: "AIS_ColoredDrawer.hxx".}
proc unsetOwnMaterial*(this: var AIS_ColoredDrawer) {.importcpp: "UnsetOwnMaterial",
    header: "AIS_ColoredDrawer.hxx".}
proc setOwnMaterial*(this: var AIS_ColoredDrawer) {.importcpp: "SetOwnMaterial",
    header: "AIS_ColoredDrawer.hxx".}
proc hasOwnColor*(this: AIS_ColoredDrawer): bool {.noSideEffect,
    importcpp: "HasOwnColor", header: "AIS_ColoredDrawer.hxx".}
proc unsetOwnColor*(this: var AIS_ColoredDrawer) {.importcpp: "UnsetOwnColor",
    header: "AIS_ColoredDrawer.hxx".}
proc setOwnColor*(this: var AIS_ColoredDrawer; a2: QuantityColor) {.
    importcpp: "SetOwnColor", header: "AIS_ColoredDrawer.hxx".}
  ## theColor
proc hasOwnTransparency*(this: AIS_ColoredDrawer): bool {.noSideEffect,
    importcpp: "HasOwnTransparency", header: "AIS_ColoredDrawer.hxx".}
proc unsetOwnTransparency*(this: var AIS_ColoredDrawer) {.
    importcpp: "UnsetOwnTransparency", header: "AIS_ColoredDrawer.hxx".}
proc setOwnTransparency*(this: var AIS_ColoredDrawer; a2: StandardReal) {.
    importcpp: "SetOwnTransparency", header: "AIS_ColoredDrawer.hxx".}
  ## theTransp
proc hasOwnWidth*(this: AIS_ColoredDrawer): bool {.noSideEffect,
    importcpp: "HasOwnWidth", header: "AIS_ColoredDrawer.hxx".}
proc unsetOwnWidth*(this: var AIS_ColoredDrawer) {.importcpp: "UnsetOwnWidth",
    header: "AIS_ColoredDrawer.hxx".}
proc setOwnWidth*(this: var AIS_ColoredDrawer; a2: StandardReal) {.
    importcpp: "SetOwnWidth", header: "AIS_ColoredDrawer.hxx".}
  ## theWidth
discard "forward decl of AIS_ColoredDrawer"
type
  HandleAIS_ColoredDrawer* = Handle[AIS_ColoredDrawer]


