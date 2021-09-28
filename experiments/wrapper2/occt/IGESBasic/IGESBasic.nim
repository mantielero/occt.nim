##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Arun MENON)
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of IGESBasic_Protocol"
discard "forward decl of IGESBasic_SubfigureDef"
discard "forward decl of IGESBasic_Group"
discard "forward decl of IGESBasic_GroupWithoutBackP"
discard "forward decl of IGESBasic_SingleParent"
discard "forward decl of IGESBasic_ExternalRefFileIndex"
discard "forward decl of IGESBasic_OrderedGroup"
discard "forward decl of IGESBasic_OrderedGroupWithoutBackP"
discard "forward decl of IGESBasic_Hierarchy"
discard "forward decl of IGESBasic_ExternalReferenceFile"
discard "forward decl of IGESBasic_Name"
discard "forward decl of IGESBasic_AssocGroupType"
discard "forward decl of IGESBasic_SingularSubfigure"
discard "forward decl of IGESBasic_ExternalRefFileName"
discard "forward decl of IGESBasic_ExternalRefFile"
discard "forward decl of IGESBasic_ExternalRefName"
discard "forward decl of IGESBasic_ExternalRefLibName"
discard "forward decl of IGESBasic_ToolSubfigureDef"
discard "forward decl of IGESBasic_ToolGroup"
discard "forward decl of IGESBasic_ToolGroupWithoutBackP"
discard "forward decl of IGESBasic_ToolSingleParent"
discard "forward decl of IGESBasic_ToolExternalRefFileIndex"
discard "forward decl of IGESBasic_ToolOrderedGroup"
discard "forward decl of IGESBasic_ToolOrderedGroupWithoutBackP"
discard "forward decl of IGESBasic_ToolHierarchy"
discard "forward decl of IGESBasic_ToolExternalReferenceFile"
discard "forward decl of IGESBasic_ToolName"
discard "forward decl of IGESBasic_ToolAssocGroupType"
discard "forward decl of IGESBasic_ToolSingularSubfigure"
discard "forward decl of IGESBasic_ToolExternalRefFileName"
discard "forward decl of IGESBasic_ToolExternalRefFile"
discard "forward decl of IGESBasic_ToolExternalRefName"
discard "forward decl of IGESBasic_ToolExternalRefLibName"
discard "forward decl of IGESBasic_Protocol"
discard "forward decl of IGESBasic_ReadWriteModule"
discard "forward decl of IGESBasic_GeneralModule"
discard "forward decl of IGESBasic_SpecificModule"
discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of IGESBasic_HArray1OfHArray1OfReal"
discard "forward decl of IGESBasic_HArray1OfHArray1OfXY"
discard "forward decl of IGESBasic_HArray1OfHArray1OfXYZ"
discard "forward decl of IGESBasic_HArray1OfHArray1OfIGESEntity"
type
  IGESBasic* {.importcpp: "IGESBasic", header: "IGESBasic.hxx", bycopy.} = object ## !
                                                                          ## Prepares
                                                                          ## dynqmic data
                                                                          ## (Protocol,
                                                                          ## Modules) for this
                                                                          ## package


proc init*() {.importcpp: "IGESBasic::Init(@)", header: "IGESBasic.hxx".}
proc protocol*(): Handle[IGESBasicProtocol] {.importcpp: "IGESBasic::Protocol(@)",
    header: "IGESBasic.hxx".}

























