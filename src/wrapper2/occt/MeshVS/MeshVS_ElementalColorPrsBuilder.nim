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

discard "forward decl of MeshVS_Mesh"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of Quantity_Color"
discard "forward decl of MeshVS_ElementalColorPrsBuilder"
discard "forward decl of MeshVS_ElementalColorPrsBuilder"
type
  HandleMeshVS_ElementalColorPrsBuilder* = Handle[MeshVS_ElementalColorPrsBuilder]

## ! This class provides methods to create presentation of elements with
## ! assigned colors. The class contains two color maps: map of same colors for front
## ! and back side of face and map of different ones,

type
  MeshVS_ElementalColorPrsBuilder* {.importcpp: "MeshVS_ElementalColorPrsBuilder", header: "MeshVS_ElementalColorPrsBuilder.hxx",
                                    bycopy.} = object of MeshVS_PrsBuilder ## !
                                                                      ## Constructor


proc constructMeshVS_ElementalColorPrsBuilder*(parent: Handle[MeshVS_Mesh];
    flags: MeshVS_DisplayModeFlags = meshVS_DMF_ElementalColorDataPrs;
    ds: Handle[MeshVS_DataSource] = 0; id: StandardInteger = -1;
    priority: MeshVS_BuilderPriority = meshVS_BP_ElemColor): MeshVS_ElementalColorPrsBuilder {.
    constructor, importcpp: "MeshVS_ElementalColorPrsBuilder(@)",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc build*(this: MeshVS_ElementalColorPrsBuilder; prs: Handle[Prs3dPresentation];
           iDs: TColStdPackedMapOfInteger;
           iDsToExclude: var TColStdPackedMapOfInteger; isElement: StandardBoolean;
           displayMode: StandardInteger) {.noSideEffect, importcpp: "Build",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc getColors1*(this: MeshVS_ElementalColorPrsBuilder): MeshVS_DataMapOfIntegerColor {.
    noSideEffect, importcpp: "GetColors1",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc setColors1*(this: var MeshVS_ElementalColorPrsBuilder;
                map: MeshVS_DataMapOfIntegerColor) {.importcpp: "SetColors1",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc hasColors1*(this: MeshVS_ElementalColorPrsBuilder): StandardBoolean {.
    noSideEffect, importcpp: "HasColors1",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc getColor1*(this: MeshVS_ElementalColorPrsBuilder; id: StandardInteger;
               theColor: var QuantityColor): StandardBoolean {.noSideEffect,
    importcpp: "GetColor1", header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc setColor1*(this: var MeshVS_ElementalColorPrsBuilder; id: StandardInteger;
               theColor: QuantityColor) {.importcpp: "SetColor1", header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc getColors2*(this: MeshVS_ElementalColorPrsBuilder): MeshVS_DataMapOfIntegerTwoColors {.
    noSideEffect, importcpp: "GetColors2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc setColors2*(this: var MeshVS_ElementalColorPrsBuilder;
                map: MeshVS_DataMapOfIntegerTwoColors) {.importcpp: "SetColors2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc hasColors2*(this: MeshVS_ElementalColorPrsBuilder): StandardBoolean {.
    noSideEffect, importcpp: "HasColors2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc getColor2*(this: MeshVS_ElementalColorPrsBuilder; id: StandardInteger;
               theColor: var MeshVS_TwoColors): StandardBoolean {.noSideEffect,
    importcpp: "GetColor2", header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc getColor2*(this: MeshVS_ElementalColorPrsBuilder; id: StandardInteger;
               theColor1: var QuantityColor; theColor2: var QuantityColor): StandardBoolean {.
    noSideEffect, importcpp: "GetColor2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc setColor2*(this: var MeshVS_ElementalColorPrsBuilder; id: StandardInteger;
               theTwoColors: MeshVS_TwoColors) {.importcpp: "SetColor2",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc setColor2*(this: var MeshVS_ElementalColorPrsBuilder; id: StandardInteger;
               theColor1: QuantityColor; theColor2: QuantityColor) {.
    importcpp: "SetColor2", header: "MeshVS_ElementalColorPrsBuilder.hxx".}
type
  MeshVS_ElementalColorPrsBuilderbaseType* = MeshVS_PrsBuilder

proc getTypeName*(): cstring {.importcpp: "MeshVS_ElementalColorPrsBuilder::get_type_name(@)",
                            header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_ElementalColorPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}
proc dynamicType*(this: MeshVS_ElementalColorPrsBuilder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_ElementalColorPrsBuilder.hxx".}

