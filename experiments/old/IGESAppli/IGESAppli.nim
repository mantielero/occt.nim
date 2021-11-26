##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen (Anand NATRAJAN)
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

discard "forward decl of IGESAppli_Protocol"
discard "forward decl of IGESAppli_Node"
discard "forward decl of IGESAppli_FiniteElement"
discard "forward decl of IGESAppli_NodalDisplAndRot"
discard "forward decl of IGESAppli_NodalResults"
discard "forward decl of IGESAppli_ElementResults"
discard "forward decl of IGESAppli_Flow"
discard "forward decl of IGESAppli_PipingFlow"
discard "forward decl of IGESAppli_RegionRestriction"
discard "forward decl of IGESAppli_LevelFunction"
discard "forward decl of IGESAppli_LineWidening"
discard "forward decl of IGESAppli_DrilledHole"
discard "forward decl of IGESAppli_ReferenceDesignator"
discard "forward decl of IGESAppli_PinNumber"
discard "forward decl of IGESAppli_PartNumber"
discard "forward decl of IGESAppli_FlowLineSpec"
discard "forward decl of IGESAppli_LevelToPWBLayerMap"
discard "forward decl of IGESAppli_PWBArtworkStackup"
discard "forward decl of IGESAppli_PWBDrilledHole"
discard "forward decl of IGESAppli_NodalConstraint"
discard "forward decl of IGESAppli_ToolNode"
discard "forward decl of IGESAppli_ToolFiniteElement"
discard "forward decl of IGESAppli_ToolNodalDisplAndRot"
discard "forward decl of IGESAppli_ToolNodalResults"
discard "forward decl of IGESAppli_ToolElementResults"
discard "forward decl of IGESAppli_ToolFlow"
discard "forward decl of IGESAppli_ToolPipingFlow"
discard "forward decl of IGESAppli_ToolRegionRestriction"
discard "forward decl of IGESAppli_ToolLevelFunction"
discard "forward decl of IGESAppli_ToolLineWidening"
discard "forward decl of IGESAppli_ToolDrilledHole"
discard "forward decl of IGESAppli_ToolReferenceDesignator"
discard "forward decl of IGESAppli_ToolPinNumber"
discard "forward decl of IGESAppli_ToolPartNumber"
discard "forward decl of IGESAppli_ToolFlowLineSpec"
discard "forward decl of IGESAppli_ToolLevelToPWBLayerMap"
discard "forward decl of IGESAppli_ToolPWBArtworkStackup"
discard "forward decl of IGESAppli_ToolPWBDrilledHole"
discard "forward decl of IGESAppli_ToolNodalConstraint"
discard "forward decl of IGESAppli_Protocol"
discard "forward decl of IGESAppli_ReadWriteModule"
discard "forward decl of IGESAppli_GeneralModule"
discard "forward decl of IGESAppli_SpecificModule"
type
  IGESAppli* {.importcpp: "IGESAppli", header: "IGESAppli.hxx", bycopy.} = object ## !
                                                                          ## Prepares
                                                                          ## dynamic data
                                                                          ## (Protocol,
                                                                          ## Modules) for this
                                                                          ## package


proc init*() {.importcpp: "IGESAppli::Init(@)", header: "IGESAppli.hxx".}
proc protocol*(): Handle[IGESAppliProtocol] {.importcpp: "IGESAppli::Protocol(@)",
    header: "IGESAppli.hxx".}

























