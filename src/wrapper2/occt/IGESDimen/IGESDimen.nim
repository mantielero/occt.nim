##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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

discard "forward decl of IGESDimen_Protocol"
discard "forward decl of IGESDimen_CenterLine"
discard "forward decl of IGESDimen_Section"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of IGESDimen_AngularDimension"
discard "forward decl of IGESDimen_CurveDimension"
discard "forward decl of IGESDimen_DiameterDimension"
discard "forward decl of IGESDimen_FlagNote"
discard "forward decl of IGESDimen_GeneralLabel"
discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_NewGeneralNote"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_LinearDimension"
discard "forward decl of IGESDimen_OrdinateDimension"
discard "forward decl of IGESDimen_PointDimension"
discard "forward decl of IGESDimen_RadiusDimension"
discard "forward decl of IGESDimen_GeneralSymbol"
discard "forward decl of IGESDimen_SectionedArea"
discard "forward decl of IGESDimen_DimensionedGeometry"
discard "forward decl of IGESDimen_NewDimensionedGeometry"
discard "forward decl of IGESDimen_DimensionUnits"
discard "forward decl of IGESDimen_DimensionTolerance"
discard "forward decl of IGESDimen_DimensionDisplayData"
discard "forward decl of IGESDimen_BasicDimension"
discard "forward decl of IGESDimen_ToolCenterLine"
discard "forward decl of IGESDimen_ToolSection"
discard "forward decl of IGESDimen_ToolWitnessLine"
discard "forward decl of IGESDimen_ToolAngularDimension"
discard "forward decl of IGESDimen_ToolCurveDimension"
discard "forward decl of IGESDimen_ToolDiameterDimension"
discard "forward decl of IGESDimen_ToolFlagNote"
discard "forward decl of IGESDimen_ToolGeneralLabel"
discard "forward decl of IGESDimen_ToolGeneralNote"
discard "forward decl of IGESDimen_ToolNewGeneralNote"
discard "forward decl of IGESDimen_ToolLeaderArrow"
discard "forward decl of IGESDimen_ToolLinearDimension"
discard "forward decl of IGESDimen_ToolOrdinateDimension"
discard "forward decl of IGESDimen_ToolPointDimension"
discard "forward decl of IGESDimen_ToolRadiusDimension"
discard "forward decl of IGESDimen_ToolGeneralSymbol"
discard "forward decl of IGESDimen_ToolSectionedArea"
discard "forward decl of IGESDimen_ToolDimensionedGeometry"
discard "forward decl of IGESDimen_ToolNewDimensionedGeometry"
discard "forward decl of IGESDimen_ToolDimensionUnits"
discard "forward decl of IGESDimen_ToolDimensionTolerance"
discard "forward decl of IGESDimen_ToolDimensionDisplayData"
discard "forward decl of IGESDimen_ToolBasicDimension"
discard "forward decl of IGESDimen_Protocol"
discard "forward decl of IGESDimen_ReadWriteModule"
discard "forward decl of IGESDimen_GeneralModule"
discard "forward decl of IGESDimen_SpecificModule"
type
  IGESDimen* {.importcpp: "IGESDimen", header: "IGESDimen.hxx", bycopy.} = object ## !
                                                                          ## Prepares
                                                                          ## dynamic data
                                                                          ## (Protocol,
                                                                          ## Modules) for this
                                                                          ## package


proc init*() {.importcpp: "IGESDimen::Init(@)", header: "IGESDimen.hxx".}
proc protocol*(): Handle[IGESDimenProtocol] {.importcpp: "IGESDimen::Protocol(@)",
    header: "IGESDimen.hxx".}

