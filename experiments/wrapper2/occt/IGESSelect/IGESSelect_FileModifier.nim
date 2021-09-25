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

discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of IGESSelect_FileModifier"
discard "forward decl of IGESSelect_FileModifier"
type
  HandleIGESSelectFileModifier* = Handle[IGESSelectFileModifier]
  IGESSelectFileModifier* {.importcpp: "IGESSelect_FileModifier",
                           header: "IGESSelect_FileModifier.hxx", bycopy.} = object of IFSelectGeneralModifier ##
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


proc perform*(this: IGESSelectFileModifier; ctx: var IFSelectContextWrite;
             writer: var IGESDataIGESWriter) {.noSideEffect, importcpp: "Perform",
    header: "IGESSelect_FileModifier.hxx".}
type
  IGESSelectFileModifierbaseType* = IFSelectGeneralModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_FileModifier::get_type_name(@)",
                            header: "IGESSelect_FileModifier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_FileModifier::get_type_descriptor(@)",
    header: "IGESSelect_FileModifier.hxx".}
proc dynamicType*(this: IGESSelectFileModifier): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_FileModifier.hxx".}
