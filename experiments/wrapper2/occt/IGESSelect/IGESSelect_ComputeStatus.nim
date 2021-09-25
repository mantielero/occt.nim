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

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_ComputeStatus"
discard "forward decl of IGESSelect_ComputeStatus"
type
  HandleIGESSelectComputeStatus* = Handle[IGESSelectComputeStatus]

## ! Computes Status of IGES Entities for a whole IGESModel.
## ! This concerns SubordinateStatus and UseFlag, which must have
## ! some definite values according the way they are referenced.
## ! (see definitions of Logical use, Physical use, etc...)
## !
## ! Works by calling a BasicEditor from IGESData. Works on the
## ! whole produced (target) model, because computation is global.

type
  IGESSelectComputeStatus* {.importcpp: "IGESSelect_ComputeStatus",
                            header: "IGESSelect_ComputeStatus.hxx", bycopy.} = object of IGESSelectModelModifier ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## an
                                                                                                          ## ComputeStatus,
                                                                                                          ## which
                                                                                                          ## uses
                                                                                                          ## the
                                                                                                          ## system
                                                                                                          ## Date


proc constructIGESSelectComputeStatus*(): IGESSelectComputeStatus {.constructor,
    importcpp: "IGESSelect_ComputeStatus(@)",
    header: "IGESSelect_ComputeStatus.hxx".}
proc performing*(this: IGESSelectComputeStatus; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_ComputeStatus.hxx".}
proc label*(this: IGESSelectComputeStatus): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_ComputeStatus.hxx".}
type
  IGESSelectComputeStatusbaseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_ComputeStatus::get_type_name(@)",
                            header: "IGESSelect_ComputeStatus.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_ComputeStatus::get_type_descriptor(@)",
    header: "IGESSelect_ComputeStatus.hxx".}
proc dynamicType*(this: IGESSelectComputeStatus): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_ComputeStatus.hxx".}
