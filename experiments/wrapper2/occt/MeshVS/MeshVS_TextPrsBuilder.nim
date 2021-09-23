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

import
  MeshVS_DataMapOfIntegerAsciiString, MeshVS_PrsBuilder, MeshVS_DisplayModeFlags,
  MeshVS_BuilderPriority

discard "forward decl of MeshVS_Mesh"
discard "forward decl of Quantity_Color"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of MeshVS_TextPrsBuilder"
type
  Handle_MeshVS_TextPrsBuilder* = handle[MeshVS_TextPrsBuilder]

## ! This class provides methods to create text data presentation.
## ! It store map of texts assigned with nodes or elements.

type
  MeshVS_TextPrsBuilder* {.importcpp: "MeshVS_TextPrsBuilder",
                          header: "MeshVS_TextPrsBuilder.hxx", bycopy.} = object of MeshVS_PrsBuilder


proc constructMeshVS_TextPrsBuilder*(Parent: handle[MeshVS_Mesh];
                                    Height: Standard_Real; Color: Quantity_Color;
    Flags: MeshVS_DisplayModeFlags = MeshVS_DMF_TextDataPrs;
                                    DS: handle[MeshVS_DataSource] = 0;
                                    Id: Standard_Integer = -1; Priority: MeshVS_BuilderPriority = MeshVS_BP_Text): MeshVS_TextPrsBuilder {.
    constructor, importcpp: "MeshVS_TextPrsBuilder(@)",
    header: "MeshVS_TextPrsBuilder.hxx".}
proc Build*(this: MeshVS_TextPrsBuilder; Prs: handle[Prs3d_Presentation];
           IDs: TColStd_PackedMapOfInteger;
           IDsToExclude: var TColStd_PackedMapOfInteger;
           IsElement: Standard_Boolean; theDisplayMode: Standard_Integer) {.
    noSideEffect, importcpp: "Build", header: "MeshVS_TextPrsBuilder.hxx".}
proc GetTexts*(this: MeshVS_TextPrsBuilder; IsElement: Standard_Boolean): MeshVS_DataMapOfIntegerAsciiString {.
    noSideEffect, importcpp: "GetTexts", header: "MeshVS_TextPrsBuilder.hxx".}
proc SetTexts*(this: var MeshVS_TextPrsBuilder; IsElement: Standard_Boolean;
              Map: MeshVS_DataMapOfIntegerAsciiString) {.importcpp: "SetTexts",
    header: "MeshVS_TextPrsBuilder.hxx".}
proc HasTexts*(this: MeshVS_TextPrsBuilder; IsElement: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "HasTexts", header: "MeshVS_TextPrsBuilder.hxx".}
proc GetText*(this: MeshVS_TextPrsBuilder; IsElement: Standard_Boolean;
             ID: Standard_Integer; Text: var TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "GetText", header: "MeshVS_TextPrsBuilder.hxx".}
proc SetText*(this: var MeshVS_TextPrsBuilder; IsElement: Standard_Boolean;
             ID: Standard_Integer; Text: TCollection_AsciiString) {.
    importcpp: "SetText", header: "MeshVS_TextPrsBuilder.hxx".}
type
  MeshVS_TextPrsBuilderbase_type* = MeshVS_PrsBuilder

proc get_type_name*(): cstring {.importcpp: "MeshVS_TextPrsBuilder::get_type_name(@)",
                              header: "MeshVS_TextPrsBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_TextPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_TextPrsBuilder.hxx".}
proc DynamicType*(this: MeshVS_TextPrsBuilder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "MeshVS_TextPrsBuilder.hxx".}