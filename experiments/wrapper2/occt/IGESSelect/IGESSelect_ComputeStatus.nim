##  Created on: 1994-06-01
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESSelect_ModelModifier

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_ComputeStatus"
discard "forward decl of IGESSelect_ComputeStatus"
type
  Handle_IGESSelect_ComputeStatus* = handle[IGESSelect_ComputeStatus]

## ! Computes Status of IGES Entities for a whole IGESModel.
## ! This concerns SubordinateStatus and UseFlag, which must have
## ! some definite values according the way they are referenced.
## ! (see definitions of Logical use, Physical use, etc...)
## !
## ! Works by calling a BasicEditor from IGESData. Works on the
## ! whole produced (target) model, because computation is global.

type
  IGESSelect_ComputeStatus* {.importcpp: "IGESSelect_ComputeStatus",
                             header: "IGESSelect_ComputeStatus.hxx", bycopy.} = object of IGESSelect_ModelModifier ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## an
                                                                                                            ## ComputeStatus,
                                                                                                            ## which
                                                                                                            ## uses
                                                                                                            ## the
                                                                                                            ## system
                                                                                                            ## Date


proc constructIGESSelect_ComputeStatus*(): IGESSelect_ComputeStatus {.constructor,
    importcpp: "IGESSelect_ComputeStatus(@)",
    header: "IGESSelect_ComputeStatus.hxx".}
proc Performing*(this: IGESSelect_ComputeStatus; ctx: var IFSelect_ContextModif;
                target: handle[IGESData_IGESModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_ComputeStatus.hxx".}
proc Label*(this: IGESSelect_ComputeStatus): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_ComputeStatus.hxx".}
type
  IGESSelect_ComputeStatusbase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_ComputeStatus::get_type_name(@)",
                              header: "IGESSelect_ComputeStatus.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_ComputeStatus::get_type_descriptor(@)",
    header: "IGESSelect_ComputeStatus.hxx".}
proc DynamicType*(this: IGESSelect_ComputeStatus): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_ComputeStatus.hxx".}