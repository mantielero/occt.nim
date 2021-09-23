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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_DataMapOfIntegerInteger, MeshVS_DataMapOfIntegerBoolean,
  ../TColStd/TColStd_DataMapOfIntegerReal, MeshVS_DataMapOfIntegerColor,
  MeshVS_DataMapOfIntegerMaterial, MeshVS_DataMapOfIntegerAsciiString,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Quantity_Color"
discard "forward decl of Graphic3d_MaterialAspect"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of MeshVS_Drawer"
discard "forward decl of MeshVS_Drawer"
type
  Handle_MeshVS_Drawer* = handle[MeshVS_Drawer]

## ! This class provided the common interface to share between classes
## ! big set of constants affecting to object appearance. By default, this class
## ! can store integers, doubles, OCC colors, OCC materials. Each of OCC enum members
## ! can be stored as integers.

type
  MeshVS_Drawer* {.importcpp: "MeshVS_Drawer", header: "MeshVS_Drawer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## This
                                                                                                          ## method
                                                                                                          ## copies
                                                                                                          ## other
                                                                                                          ## drawer
                                                                                                          ## contents
                                                                                                          ## to
                                                                                                          ## this.


proc Assign*(this: var MeshVS_Drawer; aDrawer: handle[MeshVS_Drawer]) {.
    importcpp: "Assign", header: "MeshVS_Drawer.hxx".}
proc SetInteger*(this: var MeshVS_Drawer; Key: Standard_Integer;
                Value: Standard_Integer) {.importcpp: "SetInteger",
    header: "MeshVS_Drawer.hxx".}
proc SetDouble*(this: var MeshVS_Drawer; Key: Standard_Integer; Value: Standard_Real) {.
    importcpp: "SetDouble", header: "MeshVS_Drawer.hxx".}
proc SetBoolean*(this: var MeshVS_Drawer; Key: Standard_Integer;
                Value: Standard_Boolean) {.importcpp: "SetBoolean",
    header: "MeshVS_Drawer.hxx".}
proc SetColor*(this: var MeshVS_Drawer; Key: Standard_Integer; Value: Quantity_Color) {.
    importcpp: "SetColor", header: "MeshVS_Drawer.hxx".}
proc SetMaterial*(this: var MeshVS_Drawer; Key: Standard_Integer;
                 Value: Graphic3d_MaterialAspect) {.importcpp: "SetMaterial",
    header: "MeshVS_Drawer.hxx".}
proc SetAsciiString*(this: var MeshVS_Drawer; Key: Standard_Integer;
                    Value: TCollection_AsciiString) {.importcpp: "SetAsciiString",
    header: "MeshVS_Drawer.hxx".}
proc GetInteger*(this: MeshVS_Drawer; Key: Standard_Integer;
                Value: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "GetInteger", header: "MeshVS_Drawer.hxx".}
proc GetDouble*(this: MeshVS_Drawer; Key: Standard_Integer; Value: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "GetDouble", header: "MeshVS_Drawer.hxx".}
proc GetBoolean*(this: MeshVS_Drawer; Key: Standard_Integer;
                Value: var Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "GetBoolean", header: "MeshVS_Drawer.hxx".}
proc GetColor*(this: MeshVS_Drawer; Key: Standard_Integer; Value: var Quantity_Color): Standard_Boolean {.
    noSideEffect, importcpp: "GetColor", header: "MeshVS_Drawer.hxx".}
proc GetMaterial*(this: MeshVS_Drawer; Key: Standard_Integer;
                 Value: var Graphic3d_MaterialAspect): Standard_Boolean {.
    noSideEffect, importcpp: "GetMaterial", header: "MeshVS_Drawer.hxx".}
proc GetAsciiString*(this: MeshVS_Drawer; Key: Standard_Integer;
                    Value: var TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "GetAsciiString", header: "MeshVS_Drawer.hxx".}
proc RemoveInteger*(this: var MeshVS_Drawer; Key: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveInteger", header: "MeshVS_Drawer.hxx".}
proc RemoveDouble*(this: var MeshVS_Drawer; Key: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveDouble", header: "MeshVS_Drawer.hxx".}
proc RemoveBoolean*(this: var MeshVS_Drawer; Key: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveBoolean", header: "MeshVS_Drawer.hxx".}
proc RemoveColor*(this: var MeshVS_Drawer; Key: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveColor", header: "MeshVS_Drawer.hxx".}
proc RemoveMaterial*(this: var MeshVS_Drawer; Key: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveMaterial", header: "MeshVS_Drawer.hxx".}
proc RemoveAsciiString*(this: var MeshVS_Drawer; Key: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveAsciiString", header: "MeshVS_Drawer.hxx".}
type
  MeshVS_Drawerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MeshVS_Drawer::get_type_name(@)",
                              header: "MeshVS_Drawer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_Drawer::get_type_descriptor(@)",
    header: "MeshVS_Drawer.hxx".}
proc DynamicType*(this: MeshVS_Drawer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_Drawer.hxx".}