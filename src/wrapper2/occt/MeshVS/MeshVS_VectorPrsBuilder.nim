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
  MeshVS_DataMapOfIntegerVector, MeshVS_PrsBuilder, MeshVS_DisplayModeFlags,
  MeshVS_BuilderPriority, ../TColgp/TColgp_Array1OfPnt

discard "forward decl of MeshVS_Mesh"
discard "forward decl of Quantity_Color"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of gp_Trsf"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of gp_Vec"
discard "forward decl of MeshVS_VectorPrsBuilder"
type
  Handle_MeshVS_VectorPrsBuilder* = handle[MeshVS_VectorPrsBuilder]

## ! This class provides methods to create vector data presentation.
## ! It store map of vectors assigned with nodes or elements.
## ! In simplified mode vectors draws with thickened ends instead of arrows

type
  MeshVS_VectorPrsBuilder* {.importcpp: "MeshVS_VectorPrsBuilder",
                            header: "MeshVS_VectorPrsBuilder.hxx", bycopy.} = object of MeshVS_PrsBuilder


proc constructMeshVS_VectorPrsBuilder*(Parent: handle[MeshVS_Mesh];
                                      MaxLength: Standard_Real;
                                      VectorColor: Quantity_Color; Flags: MeshVS_DisplayModeFlags = MeshVS_DMF_VectorDataPrs;
                                      DS: handle[MeshVS_DataSource] = 0;
                                      Id: Standard_Integer = -1; Priority: MeshVS_BuilderPriority = MeshVS_BP_Vector;
    IsSimplePrs: Standard_Boolean = Standard_False): MeshVS_VectorPrsBuilder {.
    constructor, importcpp: "MeshVS_VectorPrsBuilder(@)",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc Build*(this: MeshVS_VectorPrsBuilder; Prs: handle[Prs3d_Presentation];
           IDs: TColStd_PackedMapOfInteger;
           IDsToExclude: var TColStd_PackedMapOfInteger;
           IsElement: Standard_Boolean; theDisplayMode: Standard_Integer) {.
    noSideEffect, importcpp: "Build", header: "MeshVS_VectorPrsBuilder.hxx".}
proc DrawVector*(this: MeshVS_VectorPrsBuilder; theTrsf: gp_Trsf;
                Length: Standard_Real; MaxLength: Standard_Real;
                ArrowPoints: TColgp_Array1OfPnt;
                Lines: handle[Graphic3d_ArrayOfPrimitives];
                ArrowLines: handle[Graphic3d_ArrayOfPrimitives];
                Triangles: handle[Graphic3d_ArrayOfPrimitives]) {.noSideEffect,
    importcpp: "DrawVector", header: "MeshVS_VectorPrsBuilder.hxx".}
proc calculateArrow*(Points: var TColgp_Array1OfPnt; Length: Standard_Real;
                    ArrowPart: Standard_Real): Standard_Real {.
    importcpp: "MeshVS_VectorPrsBuilder::calculateArrow(@)",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc GetVectors*(this: MeshVS_VectorPrsBuilder; IsElement: Standard_Boolean): MeshVS_DataMapOfIntegerVector {.
    noSideEffect, importcpp: "GetVectors", header: "MeshVS_VectorPrsBuilder.hxx".}
proc SetVectors*(this: var MeshVS_VectorPrsBuilder; IsElement: Standard_Boolean;
                Map: MeshVS_DataMapOfIntegerVector) {.importcpp: "SetVectors",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc HasVectors*(this: MeshVS_VectorPrsBuilder; IsElement: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "HasVectors", header: "MeshVS_VectorPrsBuilder.hxx".}
proc GetVector*(this: MeshVS_VectorPrsBuilder; IsElement: Standard_Boolean;
               ID: Standard_Integer; Vect: var gp_Vec): Standard_Boolean {.
    noSideEffect, importcpp: "GetVector", header: "MeshVS_VectorPrsBuilder.hxx".}
proc SetVector*(this: var MeshVS_VectorPrsBuilder; IsElement: Standard_Boolean;
               ID: Standard_Integer; Vect: gp_Vec) {.importcpp: "SetVector",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc GetMinMaxVectorValue*(this: MeshVS_VectorPrsBuilder;
                          IsElement: Standard_Boolean;
                          MinValue: var Standard_Real; MaxValue: var Standard_Real) {.
    noSideEffect, importcpp: "GetMinMaxVectorValue",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc SetSimplePrsMode*(this: var MeshVS_VectorPrsBuilder;
                      IsSimpleArrow: Standard_Boolean) {.
    importcpp: "SetSimplePrsMode", header: "MeshVS_VectorPrsBuilder.hxx".}
proc SetSimplePrsParams*(this: var MeshVS_VectorPrsBuilder;
                        theLineWidthParam: Standard_Real;
                        theStartParam: Standard_Real; theEndParam: Standard_Real) {.
    importcpp: "SetSimplePrsParams", header: "MeshVS_VectorPrsBuilder.hxx".}
type
  MeshVS_VectorPrsBuilderbase_type* = MeshVS_PrsBuilder

proc get_type_name*(): cstring {.importcpp: "MeshVS_VectorPrsBuilder::get_type_name(@)",
                              header: "MeshVS_VectorPrsBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_VectorPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_VectorPrsBuilder.hxx".}
proc DynamicType*(this: MeshVS_VectorPrsBuilder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "MeshVS_VectorPrsBuilder.hxx".}