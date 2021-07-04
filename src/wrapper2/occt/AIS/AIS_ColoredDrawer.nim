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

import
  ../Prs3d/Prs3d_Drawer, ../Quantity/Quantity_Color

## ! Customizable properties.

type
  AIS_ColoredDrawer* {.importcpp: "AIS_ColoredDrawer",
                      header: "AIS_ColoredDrawer.hxx", bycopy.} = object of Prs3d_Drawer ##
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

  AIS_ColoredDrawerbase_type* = Prs3d_Drawer

proc get_type_name*(): cstring {.importcpp: "AIS_ColoredDrawer::get_type_name(@)",
                              header: "AIS_ColoredDrawer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_ColoredDrawer::get_type_descriptor(@)",
    header: "AIS_ColoredDrawer.hxx".}
proc DynamicType*(this: AIS_ColoredDrawer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ColoredDrawer.hxx".}
proc constructAIS_ColoredDrawer*(theLink: handle[Prs3d_Drawer]): AIS_ColoredDrawer {.
    constructor, importcpp: "AIS_ColoredDrawer(@)", header: "AIS_ColoredDrawer.hxx".}
proc IsHidden*(this: AIS_ColoredDrawer): bool {.noSideEffect, importcpp: "IsHidden",
    header: "AIS_ColoredDrawer.hxx".}
proc SetHidden*(this: var AIS_ColoredDrawer; theToHide: bool) {.
    importcpp: "SetHidden", header: "AIS_ColoredDrawer.hxx".}
proc HasOwnMaterial*(this: AIS_ColoredDrawer): bool {.noSideEffect,
    importcpp: "HasOwnMaterial", header: "AIS_ColoredDrawer.hxx".}
proc UnsetOwnMaterial*(this: var AIS_ColoredDrawer) {.importcpp: "UnsetOwnMaterial",
    header: "AIS_ColoredDrawer.hxx".}
proc SetOwnMaterial*(this: var AIS_ColoredDrawer) {.importcpp: "SetOwnMaterial",
    header: "AIS_ColoredDrawer.hxx".}
proc HasOwnColor*(this: AIS_ColoredDrawer): bool {.noSideEffect,
    importcpp: "HasOwnColor", header: "AIS_ColoredDrawer.hxx".}
proc UnsetOwnColor*(this: var AIS_ColoredDrawer) {.importcpp: "UnsetOwnColor",
    header: "AIS_ColoredDrawer.hxx".}
proc SetOwnColor*(this: var AIS_ColoredDrawer; a2: Quantity_Color) {.
    importcpp: "SetOwnColor", header: "AIS_ColoredDrawer.hxx".}
  ## theColor
proc HasOwnTransparency*(this: AIS_ColoredDrawer): bool {.noSideEffect,
    importcpp: "HasOwnTransparency", header: "AIS_ColoredDrawer.hxx".}
proc UnsetOwnTransparency*(this: var AIS_ColoredDrawer) {.
    importcpp: "UnsetOwnTransparency", header: "AIS_ColoredDrawer.hxx".}
proc SetOwnTransparency*(this: var AIS_ColoredDrawer; a2: Standard_Real) {.
    importcpp: "SetOwnTransparency", header: "AIS_ColoredDrawer.hxx".}
  ## theTransp
proc HasOwnWidth*(this: AIS_ColoredDrawer): bool {.noSideEffect,
    importcpp: "HasOwnWidth", header: "AIS_ColoredDrawer.hxx".}
proc UnsetOwnWidth*(this: var AIS_ColoredDrawer) {.importcpp: "UnsetOwnWidth",
    header: "AIS_ColoredDrawer.hxx".}
proc SetOwnWidth*(this: var AIS_ColoredDrawer; a2: Standard_Real) {.
    importcpp: "SetOwnWidth", header: "AIS_ColoredDrawer.hxx".}
  ## theWidth
discard "forward decl of AIS_ColoredDrawer"
type
  Handle_AIS_ColoredDrawer* = handle[AIS_ColoredDrawer]
