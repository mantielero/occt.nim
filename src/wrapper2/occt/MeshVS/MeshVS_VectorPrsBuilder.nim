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
discard "forward decl of gp_Trsf"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of gp_Vec"
discard "forward decl of MeshVS_VectorPrsBuilder"
type
  HandleMeshVS_VectorPrsBuilder* = Handle[MeshVS_VectorPrsBuilder]

## ! This class provides methods to create vector data presentation.
## ! It store map of vectors assigned with nodes or elements.
## ! In simplified mode vectors draws with thickened ends instead of arrows

type
  MeshVS_VectorPrsBuilder* {.importcpp: "MeshVS_VectorPrsBuilder",
                            header: "MeshVS_VectorPrsBuilder.hxx", bycopy.} = object of MeshVS_PrsBuilder


proc constructMeshVS_VectorPrsBuilder*(parent: Handle[MeshVS_Mesh];
                                      maxLength: StandardReal;
                                      vectorColor: QuantityColor; flags: MeshVS_DisplayModeFlags = meshVS_DMF_VectorDataPrs;
                                      ds: Handle[MeshVS_DataSource] = 0;
                                      id: StandardInteger = -1; priority: MeshVS_BuilderPriority = meshVS_BP_Vector;
    isSimplePrs: StandardBoolean = standardFalse): MeshVS_VectorPrsBuilder {.
    constructor, importcpp: "MeshVS_VectorPrsBuilder(@)",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc build*(this: MeshVS_VectorPrsBuilder; prs: Handle[Prs3dPresentation];
           iDs: TColStdPackedMapOfInteger;
           iDsToExclude: var TColStdPackedMapOfInteger; isElement: StandardBoolean;
           theDisplayMode: StandardInteger) {.noSideEffect, importcpp: "Build",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc drawVector*(this: MeshVS_VectorPrsBuilder; theTrsf: GpTrsf;
                length: StandardReal; maxLength: StandardReal;
                arrowPoints: TColgpArray1OfPnt;
                lines: Handle[Graphic3dArrayOfPrimitives];
                arrowLines: Handle[Graphic3dArrayOfPrimitives];
                triangles: Handle[Graphic3dArrayOfPrimitives]) {.noSideEffect,
    importcpp: "DrawVector", header: "MeshVS_VectorPrsBuilder.hxx".}
proc calculateArrow*(points: var TColgpArray1OfPnt; length: StandardReal;
                    arrowPart: StandardReal): StandardReal {.
    importcpp: "MeshVS_VectorPrsBuilder::calculateArrow(@)",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc getVectors*(this: MeshVS_VectorPrsBuilder; isElement: StandardBoolean): MeshVS_DataMapOfIntegerVector {.
    noSideEffect, importcpp: "GetVectors", header: "MeshVS_VectorPrsBuilder.hxx".}
proc setVectors*(this: var MeshVS_VectorPrsBuilder; isElement: StandardBoolean;
                map: MeshVS_DataMapOfIntegerVector) {.importcpp: "SetVectors",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc hasVectors*(this: MeshVS_VectorPrsBuilder; isElement: StandardBoolean): StandardBoolean {.
    noSideEffect, importcpp: "HasVectors", header: "MeshVS_VectorPrsBuilder.hxx".}
proc getVector*(this: MeshVS_VectorPrsBuilder; isElement: StandardBoolean;
               id: StandardInteger; vect: var GpVec): StandardBoolean {.noSideEffect,
    importcpp: "GetVector", header: "MeshVS_VectorPrsBuilder.hxx".}
proc setVector*(this: var MeshVS_VectorPrsBuilder; isElement: StandardBoolean;
               id: StandardInteger; vect: GpVec) {.importcpp: "SetVector",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc getMinMaxVectorValue*(this: MeshVS_VectorPrsBuilder;
                          isElement: StandardBoolean; minValue: var StandardReal;
                          maxValue: var StandardReal) {.noSideEffect,
    importcpp: "GetMinMaxVectorValue", header: "MeshVS_VectorPrsBuilder.hxx".}
proc setSimplePrsMode*(this: var MeshVS_VectorPrsBuilder;
                      isSimpleArrow: StandardBoolean) {.
    importcpp: "SetSimplePrsMode", header: "MeshVS_VectorPrsBuilder.hxx".}
proc setSimplePrsParams*(this: var MeshVS_VectorPrsBuilder;
                        theLineWidthParam: StandardReal;
                        theStartParam: StandardReal; theEndParam: StandardReal) {.
    importcpp: "SetSimplePrsParams", header: "MeshVS_VectorPrsBuilder.hxx".}
type
  MeshVS_VectorPrsBuilderbaseType* = MeshVS_PrsBuilder

proc getTypeName*(): cstring {.importcpp: "MeshVS_VectorPrsBuilder::get_type_name(@)",
                            header: "MeshVS_VectorPrsBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_VectorPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc dynamicType*(this: MeshVS_VectorPrsBuilder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "MeshVS_VectorPrsBuilder.hxx".}

