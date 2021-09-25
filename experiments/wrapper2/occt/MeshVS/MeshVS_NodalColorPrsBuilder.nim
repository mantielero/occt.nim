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
discard "forward decl of Graphic3d_Texture2D"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of MeshVS_NodalColorPrsBuilder"
type
  HandleMeshVS_NodalColorPrsBuilder* = Handle[MeshVS_NodalColorPrsBuilder]

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


proc constructMeshVS_NodalColorPrsBuilder*(parent: Handle[MeshVS_Mesh];
    flags: MeshVS_DisplayModeFlags = meshVS_DMF_NodalColorDataPrs;
    ds: Handle[MeshVS_DataSource] = 0; id: int = -1;
    priority: MeshVS_BuilderPriority = meshVS_BP_NodalColor): MeshVS_NodalColorPrsBuilder {.
    constructor, importcpp: "MeshVS_NodalColorPrsBuilder(@)",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc build*(this: MeshVS_NodalColorPrsBuilder; prs: Handle[Prs3dPresentation];
           iDs: TColStdPackedMapOfInteger;
           iDsToExclude: var TColStdPackedMapOfInteger; isElement: bool;
           displayMode: int) {.noSideEffect, importcpp: "Build",
                             header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc getColors*(this: MeshVS_NodalColorPrsBuilder): MeshVS_DataMapOfIntegerColor {.
    noSideEffect, importcpp: "GetColors", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc setColors*(this: var MeshVS_NodalColorPrsBuilder;
               map: MeshVS_DataMapOfIntegerColor) {.importcpp: "SetColors",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc hasColors*(this: MeshVS_NodalColorPrsBuilder): bool {.noSideEffect,
    importcpp: "HasColors", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc getColor*(this: MeshVS_NodalColorPrsBuilder; id: int;
              theColor: var QuantityColor): bool {.noSideEffect,
    importcpp: "GetColor", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc setColor*(this: var MeshVS_NodalColorPrsBuilder; id: int; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc useTexture*(this: var MeshVS_NodalColorPrsBuilder; theToUse: bool) {.
    importcpp: "UseTexture", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc isUseTexture*(this: MeshVS_NodalColorPrsBuilder): bool {.noSideEffect,
    importcpp: "IsUseTexture", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc setColorMap*(this: var MeshVS_NodalColorPrsBuilder;
                 theColors: AspectSequenceOfColor) {.importcpp: "SetColorMap",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc getColorMap*(this: MeshVS_NodalColorPrsBuilder): AspectSequenceOfColor {.
    noSideEffect, importcpp: "GetColorMap",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc setInvalidColor*(this: var MeshVS_NodalColorPrsBuilder;
                     theInvalidColor: QuantityColor) {.
    importcpp: "SetInvalidColor", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc getInvalidColor*(this: MeshVS_NodalColorPrsBuilder): QuantityColor {.
    noSideEffect, importcpp: "GetInvalidColor",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc setTextureCoords*(this: var MeshVS_NodalColorPrsBuilder;
                      theMap: TColStdDataMapOfIntegerReal) {.
    importcpp: "SetTextureCoords", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc getTextureCoords*(this: MeshVS_NodalColorPrsBuilder): TColStdDataMapOfIntegerReal {.
    noSideEffect, importcpp: "GetTextureCoords",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc setTextureCoord*(this: var MeshVS_NodalColorPrsBuilder; theID: int;
                     theCoord: float) {.importcpp: "SetTextureCoord",
                                      header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc getTextureCoord*(this: var MeshVS_NodalColorPrsBuilder; theID: int): float {.
    importcpp: "GetTextureCoord", header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc addVolumePrs*(this: MeshVS_NodalColorPrsBuilder;
                  theTopo: Handle[MeshVS_HArray1OfSequenceOfInteger];
                  theNodes: TColStdArray1OfInteger;
                  theCoords: TColStdArray1OfReal;
                  theArray: Handle[Graphic3dArrayOfPrimitives]; theIsShaded: bool;
                  theNbColors: int; theNbTexColors: int; theColorRatio: float) {.
    noSideEffect, importcpp: "AddVolumePrs",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
type
  MeshVS_NodalColorPrsBuilderbaseType* = MeshVS_PrsBuilder

proc getTypeName*(): cstring {.importcpp: "MeshVS_NodalColorPrsBuilder::get_type_name(@)",
                            header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_NodalColorPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
proc dynamicType*(this: MeshVS_NodalColorPrsBuilder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_NodalColorPrsBuilder.hxx".}
