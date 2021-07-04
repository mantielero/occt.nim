##  Created on: 1994-12-22
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IFSelect/IFSelect_GeneralModifier

discard "forward decl of StepData_StepWriter"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of StepSelect_FileModifier"
discard "forward decl of StepSelect_FileModifier"
type
  Handle_StepSelect_FileModifier* = handle[StepSelect_FileModifier]
  StepSelect_FileModifier* {.importcpp: "StepSelect_FileModifier",
                            header: "StepSelect_FileModifier.hxx", bycopy.} = object of IFSelect_GeneralModifier ##
                                                                                                          ## !
                                                                                                          ## Perform
                                                                                                          ## the
                                                                                                          ## action
                                                                                                          ## specific
                                                                                                          ## to
                                                                                                          ## each
                                                                                                          ## class
                                                                                                          ## of
                                                                                                          ## File
                                                                                                          ## Modifier
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## <ctx>
                                                                                                          ## is
                                                                                                          ## the
                                                                                                          ## ContextWrite,
                                                                                                          ## which
                                                                                                          ## brings
                                                                                                          ## :
                                                                                                          ## the
                                                                                                          ## model,
                                                                                                          ## the
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## protocol,
                                                                                                          ## the
                                                                                                          ## file
                                                                                                          ## name,
                                                                                                          ## plus
                                                                                                          ## the
                                                                                                          ## object
                                                                                                          ## AppliedModifiers
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## (not
                                                                                                          ## used
                                                                                                          ## here)
                                                                                                          ## and
                                                                                                          ## the
                                                                                                          ## CheckList
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Remark
                                                                                                          ## that
                                                                                                          ## the
                                                                                                          ## model
                                                                                                          ## has
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## casted
                                                                                                          ## for
                                                                                                          ## specific
                                                                                                          ## access
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## <writer>
                                                                                                          ## is
                                                                                                          ## the
                                                                                                          ## Writer
                                                                                                          ## and
                                                                                                          ## is
                                                                                                          ## specific
                                                                                                          ## to
                                                                                                          ## each
                                                                                                          ## norm,
                                                                                                          ## on
                                                                                                          ## which
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## to
                                                                                                          ## act
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Sets
                                                                                                          ## a
                                                                                                          ## File
                                                                                                          ## Modifier
                                                                                                          ## to
                                                                                                          ## keep
                                                                                                          ## the
                                                                                                          ## graph
                                                                                                          ## of
                                                                                                          ## dependences
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## unchanges
                                                                                                          ## (because
                                                                                                          ## it
                                                                                                          ## works
                                                                                                          ## on
                                                                                                          ## the
                                                                                                          ## model
                                                                                                          ## already
                                                                                                          ## produced)


proc Perform*(this: StepSelect_FileModifier; ctx: var IFSelect_ContextWrite;
             writer: var StepData_StepWriter) {.noSideEffect, importcpp: "Perform",
    header: "StepSelect_FileModifier.hxx".}
type
  StepSelect_FileModifierbase_type* = IFSelect_GeneralModifier

proc get_type_name*(): cstring {.importcpp: "StepSelect_FileModifier::get_type_name(@)",
                              header: "StepSelect_FileModifier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepSelect_FileModifier::get_type_descriptor(@)",
    header: "StepSelect_FileModifier.hxx".}
proc DynamicType*(this: StepSelect_FileModifier): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepSelect_FileModifier.hxx".}