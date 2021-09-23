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
  MeshVS_DataMapOfIntegerColor, ../Aspect/Aspect_SequenceOfColor,
  ../TColStd/TColStd_DataMapOfIntegerReal, ../Quantity/Quantity_Color,
  MeshVS_PrsBuilder, MeshVS_DisplayModeFlags, MeshVS_BuilderPriority,
  ../TColStd/TColStd_PackedMapOfInteger, MeshVS_HArray1OfSequenceOfInteger,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_Array1OfReal

discard "forward decl of MeshVS_Mesh"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of Quantity_Color"
discard "forward decl of Graphic3d_Texture2D"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of MeshVS_NodalColorPrsBuilder"
type
  Handle_MeshVS_NodalColorPrsBuilder* = handle[MeshVS_NodalColorPrsBuilder]

## ! This class provides methods to create presentation of nodes with assigned color.
## ! There are two ways of presentation building
## ! 1. Without using texture.
## ! In this case colors of nodes are specified with DataMapOfIntegerColor and presentation
## ! is built with gradient fill between these nodes (default behaviour)
## ! 2. Using texture.
## ! In this case presentation is built with spectrum filling between nodes. For example, if
## ! one node has blue color and second one has violet color, parameters of this class may be
## ! set to fill presentation between nodes with solar spectrum.
## ! Methods:
## ! UseTexture - activates/deactivates this way
## ! SetColorMap - sets colors used for generation of texture
## ! SetColorindices - specifies correspondence between node IDs and indices of colors from color map

type
  MeshVS_NodalColorPrsBuilder* {.importcpp: "MeshVS_NodalColorPrsBuilder",
                                header: "MeshVS_NodalColorPrsBuilder.hxx", bycopy.} = object of MeshVS_PrsBuilder ##
                                                                                                           ## !
                                                                                                           ## Create
                                                                                                           ## texture
                                                                                                           ## in
                                                                                                           ## accordance
                                                                                                           ## with
                                                                                                           ## myTextureColorMap


proc constructMeshVS_NodalColorPrsBuilder*(Parent: handle[MeshVS_Mesh];
    Flags: MeshVS_DisplayModeFlags = MeshVS_DMF_NodalColorDataPrs;
    DS: handle[MeshVS_DataSource] = 0; Id: Standard_Integer = -1;
    Priority: MeshVS_BuilderPriority = MeshVS_BP_NodalColor): MeshVS_NodalColorPrsBuilder {.
    constructor, importcpp: "MeshVS_NodalColorPrsBuilder(@)",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc Build*(this: MeshVS_NodalColorPrsBuilder; Prs: handle[Prs3d_Presentation];
           IDs: TColStd_PackedMapOfInteger;
           IDsToExclude: var TColStd_PackedMapOfInteger;
           IsElement: Standard_Boolean; DisplayMode: Standard_Integer) {.
    noSideEffect, importcpp: "Build", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc GetColors*(this: MeshVS_NodalColorPrsBuilder): MeshVS_DataMapOfIntegerColor {.
    noSideEffect, importcpp: "GetColors", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc SetColors*(this: var MeshVS_NodalColorPrsBuilder;
               Map: MeshVS_DataMapOfIntegerColor) {.importcpp: "SetColors",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc HasColors*(this: MeshVS_NodalColorPrsBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "HasColors", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc GetColor*(this: MeshVS_NodalColorPrsBuilder; ID: Standard_Integer;
              theColor: var Quantity_Color): Standard_Boolean {.noSideEffect,
    importcpp: "GetColor", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc SetColor*(this: var MeshVS_NodalColorPrsBuilder; ID: Standard_Integer;
              theColor: Quantity_Color) {.importcpp: "SetColor", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc UseTexture*(this: var MeshVS_NodalColorPrsBuilder; theToUse: Standard_Boolean) {.
    importcpp: "UseTexture", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc IsUseTexture*(this: MeshVS_NodalColorPrsBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "IsUseTexture",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc SetColorMap*(this: var MeshVS_NodalColorPrsBuilder;
                 theColors: Aspect_SequenceOfColor) {.importcpp: "SetColorMap",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc GetColorMap*(this: MeshVS_NodalColorPrsBuilder): Aspect_SequenceOfColor {.
    noSideEffect, importcpp: "GetColorMap",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc SetInvalidColor*(this: var MeshVS_NodalColorPrsBuilder;
                     theInvalidColor: Quantity_Color) {.
    importcpp: "SetInvalidColor", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc GetInvalidColor*(this: MeshVS_NodalColorPrsBuilder): Quantity_Color {.
    noSideEffect, importcpp: "GetInvalidColor",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc SetTextureCoords*(this: var MeshVS_NodalColorPrsBuilder;
                      theMap: TColStd_DataMapOfIntegerReal) {.
    importcpp: "SetTextureCoords", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc GetTextureCoords*(this: MeshVS_NodalColorPrsBuilder): TColStd_DataMapOfIntegerReal {.
    noSideEffect, importcpp: "GetTextureCoords",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc SetTextureCoord*(this: var MeshVS_NodalColorPrsBuilder;
                     theID: Standard_Integer; theCoord: Standard_Real) {.
    importcpp: "SetTextureCoord", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc GetTextureCoord*(this: var MeshVS_NodalColorPrsBuilder; theID: Standard_Integer): Standard_Real {.
    importcpp: "GetTextureCoord", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc AddVolumePrs*(this: MeshVS_NodalColorPrsBuilder;
                  theTopo: handle[MeshVS_HArray1OfSequenceOfInteger];
                  theNodes: TColStd_Array1OfInteger;
                  theCoords: TColStd_Array1OfReal;
                  theArray: handle[Graphic3d_ArrayOfPrimitives];
                  theIsShaded: Standard_Boolean; theNbColors: Standard_Integer;
                  theNbTexColors: Standard_Integer; theColorRatio: Standard_Real) {.
    noSideEffect, importcpp: "AddVolumePrs",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
type
  MeshVS_NodalColorPrsBuilderbase_type* = MeshVS_PrsBuilder

proc get_type_name*(): cstring {.importcpp: "MeshVS_NodalColorPrsBuilder::get_type_name(@)",
                              header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_NodalColorPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc DynamicType*(this: MeshVS_NodalColorPrsBuilder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}