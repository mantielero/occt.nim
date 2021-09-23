##  Created on: 1993-08-26
##  Created by: Christian CAILLET
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

import
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_GeneralModifier,
  ../Standard/Standard_Boolean

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IFSelect_Modifier"
discard "forward decl of IFSelect_Modifier"
type
  Handle_IFSelect_Modifier* = handle[IFSelect_Modifier]

## ! This class gives a frame for Actions which can work globally
## ! on a File once completely defined (i.e. afterwards)
## !
## ! Remark : if no Selection is set as criterium, the Modifier is
## ! set to work and should consider all the content of the Model
## ! produced.

type
  IFSelect_Modifier* {.importcpp: "IFSelect_Modifier",
                      header: "IFSelect_Modifier.hxx", bycopy.} = object of IFSelect_GeneralModifier ##
                                                                                              ## !
                                                                                              ## This
                                                                                              ## deferred
                                                                                              ## method
                                                                                              ## defines
                                                                                              ## the
                                                                                              ## action
                                                                                              ## specific
                                                                                              ## to
                                                                                              ## each
                                                                                              ## class
                                                                                              ##
                                                                                              ## !
                                                                                              ## of
                                                                                              ## Modifier.
                                                                                              ## It
                                                                                              ## is
                                                                                              ## called
                                                                                              ## by
                                                                                              ## a
                                                                                              ## ModelCopier,
                                                                                              ## once
                                                                                              ## the
                                                                                              ## Model
                                                                                              ##
                                                                                              ## !
                                                                                              ## generated
                                                                                              ## and
                                                                                              ## filled.
                                                                                              ## ModelCopier
                                                                                              ## has
                                                                                              ## already
                                                                                              ## checked
                                                                                              ## the
                                                                                              ##
                                                                                              ## !
                                                                                              ## criteria
                                                                                              ## (Dispatch,
                                                                                              ## Model
                                                                                              ## Rank,
                                                                                              ## Selection)
                                                                                              ## before
                                                                                              ## calling
                                                                                              ## it.
                                                                                              ##
                                                                                              ## !
                                                                                              ##
                                                                                              ## !
                                                                                              ## <ctx>
                                                                                              ## detains
                                                                                              ## informations
                                                                                              ## about
                                                                                              ## original
                                                                                              ## data
                                                                                              ## and
                                                                                              ## selection.
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## result
                                                                                              ## of
                                                                                              ## copying,
                                                                                              ## on
                                                                                              ## which
                                                                                              ## modifications
                                                                                              ## are
                                                                                              ## to
                                                                                              ## be
                                                                                              ## done,
                                                                                              ##
                                                                                              ## !
                                                                                              ## is
                                                                                              ## <target>.
                                                                                              ##
                                                                                              ## !
                                                                                              ## <TC>
                                                                                              ## allows
                                                                                              ## to
                                                                                              ## run
                                                                                              ## additional
                                                                                              ## copies
                                                                                              ## as
                                                                                              ## required
                                                                                              ##
                                                                                              ## !
                                                                                              ##
                                                                                              ## !
                                                                                              ## In
                                                                                              ## case
                                                                                              ## of
                                                                                              ## Error,
                                                                                              ## use
                                                                                              ## methods
                                                                                              ## CCheck
                                                                                              ## from
                                                                                              ## the
                                                                                              ## ContextModif
                                                                                              ##
                                                                                              ## !
                                                                                              ## to
                                                                                              ## aknowledge
                                                                                              ## an
                                                                                              ## entity
                                                                                              ## Check
                                                                                              ## or
                                                                                              ## a
                                                                                              ## Global
                                                                                              ## Check
                                                                                              ## with
                                                                                              ## messages
                                                                                              ##
                                                                                              ## !
                                                                                              ## Calls
                                                                                              ## inherited
                                                                                              ## Initialize,
                                                                                              ## transmits
                                                                                              ## to
                                                                                              ## it
                                                                                              ## the
                                                                                              ## information
                                                                                              ##
                                                                                              ## !
                                                                                              ## <maychangegraph>


proc Perform*(this: IFSelect_Modifier; ctx: var IFSelect_ContextModif;
             target: handle[Interface_InterfaceModel];
             protocol: handle[Interface_Protocol]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Perform", header: "IFSelect_Modifier.hxx".}
type
  IFSelect_Modifierbase_type* = IFSelect_GeneralModifier

proc get_type_name*(): cstring {.importcpp: "IFSelect_Modifier::get_type_name(@)",
                              header: "IFSelect_Modifier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_Modifier::get_type_descriptor(@)",
    header: "IFSelect_Modifier.hxx".}
proc DynamicType*(this: IFSelect_Modifier): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_Modifier.hxx".}