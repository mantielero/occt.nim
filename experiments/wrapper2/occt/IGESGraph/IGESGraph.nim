##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen (TCD)
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

discard "forward decl of IGESGraph_Protocol"
discard "forward decl of IGESGraph_LineFontDefTemplate"
discard "forward decl of IGESGraph_LineFontDefPattern"
discard "forward decl of IGESGraph_TextFontDef"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of IGESGraph_Color"
discard "forward decl of IGESGraph_DefinitionLevel"
discard "forward decl of IGESGraph_NominalSize"
discard "forward decl of IGESGraph_DrawingSize"
discard "forward decl of IGESGraph_DrawingUnits"
discard "forward decl of IGESGraph_IntercharacterSpacing"
discard "forward decl of IGESGraph_LineFontPredefined"
discard "forward decl of IGESGraph_HighLight"
discard "forward decl of IGESGraph_Pick"
discard "forward decl of IGESGraph_UniformRectGrid"
discard "forward decl of IGESGraph_ToolLineFontDefTemplate"
discard "forward decl of IGESGraph_ToolLineFontDefPattern"
discard "forward decl of IGESGraph_ToolTextFontDef"
discard "forward decl of IGESGraph_ToolTextDisplayTemplate"
discard "forward decl of IGESGraph_ToolColor"
discard "forward decl of IGESGraph_ToolDefinitionLevel"
discard "forward decl of IGESGraph_ToolNominalSize"
discard "forward decl of IGESGraph_ToolDrawingSize"
discard "forward decl of IGESGraph_ToolDrawingUnits"
discard "forward decl of IGESGraph_ToolIntercharacterSpacing"
discard "forward decl of IGESGraph_ToolLineFontPredefined"
discard "forward decl of IGESGraph_ToolHighLight"
discard "forward decl of IGESGraph_ToolPick"
discard "forward decl of IGESGraph_ToolUniformRectGrid"
discard "forward decl of IGESGraph_Protocol"
discard "forward decl of IGESGraph_ReadWriteModule"
discard "forward decl of IGESGraph_GeneralModule"
discard "forward decl of IGESGraph_SpecificModule"
type
  IGESGraph* {.importcpp: "IGESGraph", header: "IGESGraph.hxx", bycopy.} = object ## !
                                                                          ## Prepares
                                                                          ## dynamic data
                                                                          ## (Protocol,
                                                                          ## Modules) for this
                                                                          ## package


proc init*() {.importcpp: "IGESGraph::Init(@)", header: "IGESGraph.hxx".}
proc protocol*(): Handle[IGESGraphProtocol] {.importcpp: "IGESGraph::Protocol(@)",
    header: "IGESGraph.hxx".}
