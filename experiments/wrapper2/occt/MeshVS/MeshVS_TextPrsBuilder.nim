##  Created on: 2003-10-13
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
discard "forward decl of Quantity_Color"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of MeshVS_TextPrsBuilder"
type
  HandleMeshVS_TextPrsBuilder* = Handle[MeshVS_TextPrsBuilder]

## ! This class provides methods to create text data presentation.
## ! It store map of texts assigned with nodes or elements.

type
  MeshVS_TextPrsBuilder* {.importcpp: "MeshVS_TextPrsBuilder",
                          header: "MeshVS_TextPrsBuilder.hxx", bycopy.} = object of MeshVS_PrsBuilder


proc constructMeshVS_TextPrsBuilder*(parent: Handle[MeshVS_Mesh]; height: float;
                                    color: QuantityColor; flags: MeshVS_DisplayModeFlags = meshVS_DMF_TextDataPrs;
                                    ds: Handle[MeshVS_DataSource] = 0;
                                    id: int = -1; priority: MeshVS_BuilderPriority = meshVS_BP_Text): MeshVS_TextPrsBuilder {.
    constructor, importcpp: "MeshVS_TextPrsBuilder(@)",
    header: "MeshVS_TextPrsBuilder.hxx".}
proc build*(this: MeshVS_TextPrsBuilder; prs: Handle[Prs3dPresentation];
           iDs: TColStdPackedMapOfInteger;
           iDsToExclude: var TColStdPackedMapOfInteger; isElement: bool;
           theDisplayMode: int) {.noSideEffect, importcpp: "Build",
                                header: "MeshVS_TextPrsBuilder.hxx".}
proc getTexts*(this: MeshVS_TextPrsBuilder; isElement: bool): MeshVS_DataMapOfIntegerAsciiString {.
    noSideEffect, importcpp: "GetTexts", header: "MeshVS_TextPrsBuilder.hxx".}
proc setTexts*(this: var MeshVS_TextPrsBuilder; isElement: bool;
              map: MeshVS_DataMapOfIntegerAsciiString) {.importcpp: "SetTexts",
    header: "MeshVS_TextPrsBuilder.hxx".}
proc hasTexts*(this: MeshVS_TextPrsBuilder; isElement: bool): bool {.noSideEffect,
    importcpp: "HasTexts", header: "MeshVS_TextPrsBuilder.hxx".}
proc getText*(this: MeshVS_TextPrsBuilder; isElement: bool; id: int;
             text: var TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "GetText", header: "MeshVS_TextPrsBuilder.hxx".}
proc setText*(this: var MeshVS_TextPrsBuilder; isElement: bool; id: int;
             text: TCollectionAsciiString) {.importcpp: "SetText",
    header: "MeshVS_TextPrsBuilder.hxx".}
type
  MeshVS_TextPrsBuilderbaseType* = MeshVS_PrsBuilder

proc getTypeName*(): cstring {.importcpp: "MeshVS_TextPrsBuilder::get_type_name(@)",
                            header: "MeshVS_TextPrsBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_TextPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_TextPrsBuilder.hxx".}
proc dynamicType*(this: MeshVS_TextPrsBuilder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_TextPrsBuilder.hxx".}
