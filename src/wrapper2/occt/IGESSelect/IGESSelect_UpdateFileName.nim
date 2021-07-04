##  Created on: 1995-02-23
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESSelect_ModelModifier

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_UpdateFileName"
discard "forward decl of IGESSelect_UpdateFileName"
type
  Handle_IGESSelect_UpdateFileName* = handle[IGESSelect_UpdateFileName]

## ! Sets the File Name in Header to be the actual name of the file
## ! If new file name is unknown, the former one is kept
## ! Remark : this works well only when it is Applied and send time
## ! If it is run immediately, new file name is unknown and nothing
## ! is done
## ! The Selection of the Modifier is not used : it simply acts as
## ! a criterium to select IGES Files to touch up

type
  IGESSelect_UpdateFileName* {.importcpp: "IGESSelect_UpdateFileName",
                              header: "IGESSelect_UpdateFileName.hxx", bycopy.} = object of IGESSelect_ModelModifier ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## an
                                                                                                              ## UpdateFileName,
                                                                                                              ## which
                                                                                                              ## uses
                                                                                                              ## the
                                                                                                              ## system
                                                                                                              ## Date


proc constructIGESSelect_UpdateFileName*(): IGESSelect_UpdateFileName {.
    constructor, importcpp: "IGESSelect_UpdateFileName(@)",
    header: "IGESSelect_UpdateFileName.hxx".}
proc Performing*(this: IGESSelect_UpdateFileName; ctx: var IFSelect_ContextModif;
                target: handle[IGESData_IGESModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_UpdateFileName.hxx".}
proc Label*(this: IGESSelect_UpdateFileName): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_UpdateFileName.hxx".}
type
  IGESSelect_UpdateFileNamebase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_UpdateFileName::get_type_name(@)",
                              header: "IGESSelect_UpdateFileName.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_UpdateFileName::get_type_descriptor(@)",
    header: "IGESSelect_UpdateFileName.hxx".}
proc DynamicType*(this: IGESSelect_UpdateFileName): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_UpdateFileName.hxx".}