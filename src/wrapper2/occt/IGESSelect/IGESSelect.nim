##  Created on: 1994-05-31
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_Graph"
discard "forward decl of IGESSelect_EditHeader"
discard "forward decl of IGESSelect_EditDirPart"
discard "forward decl of IGESSelect_IGESTypeForm"
discard "forward decl of IGESSelect_IGESName"
discard "forward decl of IGESSelect_SignStatus"
discard "forward decl of IGESSelect_SignLevelNumber"
discard "forward decl of IGESSelect_SignColor"
discard "forward decl of IGESSelect_CounterOfLevelNumber"
discard "forward decl of IGESSelect_ViewSorter"
discard "forward decl of IGESSelect_DispPerSingleView"
discard "forward decl of IGESSelect_DispPerDrawing"
discard "forward decl of IGESSelect_SelectVisibleStatus"
discard "forward decl of IGESSelect_SelectSubordinate"
discard "forward decl of IGESSelect_SelectLevelNumber"
discard "forward decl of IGESSelect_SelectName"
discard "forward decl of IGESSelect_SelectFromSingleView"
discard "forward decl of IGESSelect_SelectFromDrawing"
discard "forward decl of IGESSelect_SelectSingleViewFrom"
discard "forward decl of IGESSelect_SelectDrawingFrom"
discard "forward decl of IGESSelect_SelectBypassGroup"
discard "forward decl of IGESSelect_SelectBypassSubfigure"
discard "forward decl of IGESSelect_SelectBasicGeom"
discard "forward decl of IGESSelect_SelectFaces"
discard "forward decl of IGESSelect_SelectPCurves"
discard "forward decl of IGESSelect_ModelModifier"
discard "forward decl of IGESSelect_FileModifier"
discard "forward decl of IGESSelect_FloatFormat"
discard "forward decl of IGESSelect_AddFileComment"
discard "forward decl of IGESSelect_UpdateFileName"
discard "forward decl of IGESSelect_UpdateCreationDate"
discard "forward decl of IGESSelect_UpdateLastChange"
discard "forward decl of IGESSelect_SetVersion5"
discard "forward decl of IGESSelect_SetGlobalParameter"
discard "forward decl of IGESSelect_AutoCorrect"
discard "forward decl of IGESSelect_ComputeStatus"
discard "forward decl of IGESSelect_RebuildDrawings"
discard "forward decl of IGESSelect_RebuildGroups"
discard "forward decl of IGESSelect_AddGroup"
discard "forward decl of IGESSelect_ChangeLevelNumber"
discard "forward decl of IGESSelect_ChangeLevelList"
discard "forward decl of IGESSelect_SplineToBSpline"
discard "forward decl of IGESSelect_RemoveCurves"
discard "forward decl of IGESSelect_SetLabel"
discard "forward decl of IGESSelect_WorkLibrary"
discard "forward decl of IGESSelect_Activator"
discard "forward decl of IGESSelect_Dumper"
type
  IGESSelect* {.importcpp: "IGESSelect", header: "IGESSelect.hxx", bycopy.} = object ## !
                                                                             ## Simply
                                                                             ## gives a
                                                                             ## prompt for a
                                                                             ## conversational
                                                                             ## action on
                                                                             ## standard
                                                                             ## !
                                                                             ## input/output.
                                                                             ## Returns the
                                                                             ## status of a


proc Run*() {.importcpp: "IGESSelect::Run(@)", header: "IGESSelect.hxx".}
proc WhatIges*(ent: handle[IGESData_IGESEntity]; G: Interface_Graph;
              sup: var handle[IGESData_IGESEntity]; index: var Standard_Integer): Standard_Integer {.
    importcpp: "IGESSelect::WhatIges(@)", header: "IGESSelect.hxx".}