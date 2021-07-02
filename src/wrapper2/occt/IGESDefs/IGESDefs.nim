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

discard "forward decl of IGESDefs_Protocol"
discard "forward decl of IGESDefs_AssociativityDef"
discard "forward decl of IGESDefs_MacroDef"
discard "forward decl of IGESDefs_UnitsData"
discard "forward decl of IGESDefs_AttributeDef"
discard "forward decl of IGESDefs_TabularData"
discard "forward decl of IGESDefs_GenericData"
discard "forward decl of IGESDefs_AttributeTable"
discard "forward decl of IGESDefs_ToolAssociativityDef"
discard "forward decl of IGESDefs_ToolMacroDef"
discard "forward decl of IGESDefs_ToolUnitsData"
discard "forward decl of IGESDefs_ToolAttributeDef"
discard "forward decl of IGESDefs_ToolTabularData"
discard "forward decl of IGESDefs_ToolGenericData"
discard "forward decl of IGESDefs_ToolAttributeTable"
discard "forward decl of IGESDefs_Protocol"
discard "forward decl of IGESDefs_ReadWriteModule"
discard "forward decl of IGESDefs_GeneralModule"
discard "forward decl of IGESDefs_SpecificModule"
discard "forward decl of IGESDefs_HArray1OfHArray1OfTextDisplayTemplate"
type
  IGESDefs* {.importcpp: "IGESDefs", header: "IGESDefs.hxx", bycopy.} = object ## ! Prepares dynamic data
                                                                       ## (Protocol, Modules) for this package


proc init*() {.importcpp: "IGESDefs::Init(@)", header: "IGESDefs.hxx".}
proc protocol*(): Handle[IGESDefsProtocol] {.importcpp: "IGESDefs::Protocol(@)",
    header: "IGESDefs.hxx".}

