##  Created on: 2003-11-12
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
  MeshVS_DataMapOfIntegerColor, MeshVS_DataMapOfIntegerTwoColors,
  MeshVS_PrsBuilder, MeshVS_DisplayModeFlags, MeshVS_BuilderPriority,
  MeshVS_TwoColors

discard "forward decl of MeshVS_Mesh"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of Quantity_Color"
discard "forward decl of MeshVS_ElementalColorPrsBuilder"
discard "forward decl of MeshVS_ElementalColorPrsBuilder"
type
  Handle_MeshVS_ElementalColorPrsBuilder* = handle[MeshVS_ElementalColorPrsBuilder]

## ! This class provides methods to create presentation of elements with
## ! assigned colors. The class contains two color maps: map of same colors for front
## ! and back side of face and map of different ones,

type
  MeshVS_ElementalColorPrsBuilder* {.importcpp: "MeshVS_ElementalColorPrsBuilder", header: "MeshVS_ElementalColorPrsBuilder.hxx",
                                    bycopy.} = object of MeshVS_PrsBuilder ## !
                                                                      ## Constructor


proc constructMeshVS_ElementalColorPrsBuilder*(Parent: handle[MeshVS_Mesh];
    Flags: MeshVS_DisplayModeFlags = MeshVS_DMF_ElementalColorDataPrs;
    DS: handle[MeshVS_DataSource] = 0; Id: Standard_Integer = -1;
    Priority: MeshVS_BuilderPriority = MeshVS_BP_ElemColor): MeshVS_ElementalColorPrsBuilder {.
    constructor, importcpp: "MeshVS_ElementalColorPrsBuilder(@)",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc Build*(this: MeshVS_ElementalColorPrsBuilder; Prs: handle[Prs3d_Presentation];
           IDs: TColStd_PackedMapOfInteger;
           IDsToExclude: var TColStd_PackedMapOfInteger;
           IsElement: Standard_Boolean; DisplayMode: Standard_Integer) {.
    noSideEffect, importcpp: "Build", header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc GetColors1*(this: MeshVS_ElementalColorPrsBuilder): MeshVS_DataMapOfIntegerColor {.
    noSideEffect, importcpp: "GetColors1",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc SetColors1*(this: var MeshVS_ElementalColorPrsBuilder;
                Map: MeshVS_DataMapOfIntegerColor) {.importcpp: "SetColors1",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc HasColors1*(this: MeshVS_ElementalColorPrsBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "HasColors1",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc GetColor1*(this: MeshVS_ElementalColorPrsBuilder; ID: Standard_Integer;
               theColor: var Quantity_Color): Standard_Boolean {.noSideEffect,
    importcpp: "GetColor1", header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc SetColor1*(this: var MeshVS_ElementalColorPrsBuilder; ID: Standard_Integer;
               theColor: Quantity_Color) {.importcpp: "SetColor1",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc GetColors2*(this: MeshVS_ElementalColorPrsBuilder): MeshVS_DataMapOfIntegerTwoColors {.
    noSideEffect, importcpp: "GetColors2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc SetColors2*(this: var MeshVS_ElementalColorPrsBuilder;
                Map: MeshVS_DataMapOfIntegerTwoColors) {.importcpp: "SetColors2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc HasColors2*(this: MeshVS_ElementalColorPrsBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "HasColors2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc GetColor2*(this: MeshVS_ElementalColorPrsBuilder; ID: Standard_Integer;
               theColor: var MeshVS_TwoColors): Standard_Boolean {.noSideEffect,
    importcpp: "GetColor2", header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc GetColor2*(this: MeshVS_ElementalColorPrsBuilder; ID: Standard_Integer;
               theColor1: var Quantity_Color; theColor2: var Quantity_Color): Standard_Boolean {.
    noSideEffect, importcpp: "GetColor2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc SetColor2*(this: var MeshVS_ElementalColorPrsBuilder; ID: Standard_Integer;
               theTwoColors: MeshVS_TwoColors) {.importcpp: "SetColor2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc SetColor2*(this: var MeshVS_ElementalColorPrsBuilder; ID: Standard_Integer;
               theColor1: Quantity_Color; theColor2: Quantity_Color) {.
    importcpp: "SetColor2", header: "MeshVS_ElementalColorPrsBuilder.hxx".}
type
  MeshVS_ElementalColorPrsBuilderbase_type* = MeshVS_PrsBuilder

proc get_type_name*(): cstring {.importcpp: "MeshVS_ElementalColorPrsBuilder::get_type_name(@)",
                              header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_ElementalColorPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc DynamicType*(this: MeshVS_ElementalColorPrsBuilder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}