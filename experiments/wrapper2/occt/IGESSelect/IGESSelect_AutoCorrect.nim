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
discard "forward decl of IGESSelect_AutoCorrect"
discard "forward decl of IGESSelect_AutoCorrect"
type
  Handle_IGESSelect_AutoCorrect* = handle[IGESSelect_AutoCorrect]

## ! Does the absolutely effective corrections on IGES Entity.
## ! That is to say : regarding the norm in details, some values
## ! have mandatory values, or set of values with constraints.
## ! When such values/constraints are univoque, they can be forced.
## ! Also nullifies items of Directory Part, Associativities, and
## ! Properties, which are not (or not longer) in <target> Model.
## !
## ! Works by calling a BasicEditor from IGESData
## ! Works with the specific IGES Services : DirChecker which
## ! allows to correct data in "Directory Part" of Entities (such
## ! as required values for status, or references to be null), and
## ! the specific IGES service OwnCorrect, which is specialised for
## ! each type of entity.
## !
## ! Remark : this does not comprise the computation of use flag or
## ! subordinate status according references, which is made by
## ! the ModelModifier class ComputeStatus.
## !
## ! The Input Selection, when present, designates the entities to
## ! be corrected. If it is not present, all the entities of the
## ! model are corrected.

type
  IGESSelect_AutoCorrect* {.importcpp: "IGESSelect_AutoCorrect",
                           header: "IGESSelect_AutoCorrect.hxx", bycopy.} = object of IGESSelect_ModelModifier ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## an
                                                                                                        ## AutoCorrect.


proc constructIGESSelect_AutoCorrect*(): IGESSelect_AutoCorrect {.constructor,
    importcpp: "IGESSelect_AutoCorrect(@)", header: "IGESSelect_AutoCorrect.hxx".}
proc Performing*(this: IGESSelect_AutoCorrect; ctx: var IFSelect_ContextModif;
                target: handle[IGESData_IGESModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_AutoCorrect.hxx".}
proc Label*(this: IGESSelect_AutoCorrect): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_AutoCorrect.hxx".}
type
  IGESSelect_AutoCorrectbase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_AutoCorrect::get_type_name(@)",
                              header: "IGESSelect_AutoCorrect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_AutoCorrect::get_type_descriptor(@)",
    header: "IGESSelect_AutoCorrect.hxx".}
proc DynamicType*(this: IGESSelect_AutoCorrect): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_AutoCorrect.hxx".}