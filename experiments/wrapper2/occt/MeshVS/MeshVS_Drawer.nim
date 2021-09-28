##  Created on: 2003-11-27
##  Created by: Alexander SOLOVYOV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of Quantity_Color"
discard "forward decl of Graphic3d_MaterialAspect"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of MeshVS_Drawer"
discard "forward decl of MeshVS_Drawer"
type
  HandleC1C1* = Handle[MeshVS_Drawer]

## ! This class provided the common interface to share between classes
## ! big set of constants affecting to object appearance. By default, this class
## ! can store integers, doubles, OCC colors, OCC materials. Each of OCC enum members
## ! can be stored as integers.

type
  MeshVS_Drawer* {.importcpp: "MeshVS_Drawer", header: "MeshVS_Drawer.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## This
                                                                                                         ## method
                                                                                                         ## copies
                                                                                                         ## other
                                                                                                         ## drawer
                                                                                                         ## contents
                                                                                                         ## to
                                                                                                         ## this.


proc assign*(this: var MeshVS_Drawer; aDrawer: Handle[MeshVS_Drawer]) {.
    importcpp: "Assign", header: "MeshVS_Drawer.hxx".}
proc setInteger*(this: var MeshVS_Drawer; key: cint; value: cint) {.
    importcpp: "SetInteger", header: "MeshVS_Drawer.hxx".}
proc setDouble*(this: var MeshVS_Drawer; key: cint; value: cfloat) {.
    importcpp: "SetDouble", header: "MeshVS_Drawer.hxx".}
proc setBoolean*(this: var MeshVS_Drawer; key: cint; value: bool) {.
    importcpp: "SetBoolean", header: "MeshVS_Drawer.hxx".}
proc setColor*(this: var MeshVS_Drawer; key: cint; value: QuantityColor) {.
    importcpp: "SetColor", header: "MeshVS_Drawer.hxx".}
proc setMaterial*(this: var MeshVS_Drawer; key: cint; value: Graphic3dMaterialAspect) {.
    importcpp: "SetMaterial", header: "MeshVS_Drawer.hxx".}
proc setAsciiString*(this: var MeshVS_Drawer; key: cint; value: TCollectionAsciiString) {.
    importcpp: "SetAsciiString", header: "MeshVS_Drawer.hxx".}
proc getInteger*(this: MeshVS_Drawer; key: cint; value: var cint): bool {.noSideEffect,
    importcpp: "GetInteger", header: "MeshVS_Drawer.hxx".}
proc getDouble*(this: MeshVS_Drawer; key: cint; value: var cfloat): bool {.noSideEffect,
    importcpp: "GetDouble", header: "MeshVS_Drawer.hxx".}
proc getBoolean*(this: MeshVS_Drawer; key: cint; value: var bool): bool {.noSideEffect,
    importcpp: "GetBoolean", header: "MeshVS_Drawer.hxx".}
proc getColor*(this: MeshVS_Drawer; key: cint; value: var QuantityColor): bool {.
    noSideEffect, importcpp: "GetColor", header: "MeshVS_Drawer.hxx".}
proc getMaterial*(this: MeshVS_Drawer; key: cint; value: var Graphic3dMaterialAspect): bool {.
    noSideEffect, importcpp: "GetMaterial", header: "MeshVS_Drawer.hxx".}
proc getAsciiString*(this: MeshVS_Drawer; key: cint;
                    value: var TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "GetAsciiString", header: "MeshVS_Drawer.hxx".}
proc removeInteger*(this: var MeshVS_Drawer; key: cint): bool {.
    importcpp: "RemoveInteger", header: "MeshVS_Drawer.hxx".}
proc removeDouble*(this: var MeshVS_Drawer; key: cint): bool {.
    importcpp: "RemoveDouble", header: "MeshVS_Drawer.hxx".}
proc removeBoolean*(this: var MeshVS_Drawer; key: cint): bool {.
    importcpp: "RemoveBoolean", header: "MeshVS_Drawer.hxx".}
proc removeColor*(this: var MeshVS_Drawer; key: cint): bool {.importcpp: "RemoveColor",
    header: "MeshVS_Drawer.hxx".}
proc removeMaterial*(this: var MeshVS_Drawer; key: cint): bool {.
    importcpp: "RemoveMaterial", header: "MeshVS_Drawer.hxx".}
proc removeAsciiString*(this: var MeshVS_Drawer; key: cint): bool {.
    importcpp: "RemoveAsciiString", header: "MeshVS_Drawer.hxx".}
type
  MeshVS_DrawerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MeshVS_Drawer::get_type_name(@)",
                            header: "MeshVS_Drawer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_Drawer::get_type_descriptor(@)",
    header: "MeshVS_Drawer.hxx".}
proc dynamicType*(this: MeshVS_Drawer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_Drawer.hxx".}

























