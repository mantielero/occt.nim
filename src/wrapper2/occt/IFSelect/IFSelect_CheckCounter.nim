##  Created on: 1994-11-07
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SignatureList,
  ../Standard/Standard_Boolean

discard "forward decl of MoniTool_SignText"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_CheckCounter"
discard "forward decl of IFSelect_CheckCounter"
type
  Handle_IFSelect_CheckCounter* = handle[IFSelect_CheckCounter]

## ! A CheckCounter allows to see a CheckList (i.e. CheckIterator)
## ! not per entity, its messages, but per message, the entities
## ! attached (count and list). Because many messages can be
## ! repeated if they are due to systematic errors

type
  IFSelect_CheckCounter* {.importcpp: "IFSelect_CheckCounter",
                          header: "IFSelect_CheckCounter.hxx", bycopy.} = object of IFSelect_SignatureList ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## CheckCounter,
                                                                                                    ## empty
                                                                                                    ## ready
                                                                                                    ## to
                                                                                                    ## work


proc constructIFSelect_CheckCounter*(withlist: Standard_Boolean = Standard_False): IFSelect_CheckCounter {.
    constructor, importcpp: "IFSelect_CheckCounter(@)",
    header: "IFSelect_CheckCounter.hxx".}
proc SetSignature*(this: var IFSelect_CheckCounter; sign: handle[MoniTool_SignText]) {.
    importcpp: "SetSignature", header: "IFSelect_CheckCounter.hxx".}
proc Signature*(this: IFSelect_CheckCounter): handle[MoniTool_SignText] {.
    noSideEffect, importcpp: "Signature", header: "IFSelect_CheckCounter.hxx".}
proc Analyse*(this: var IFSelect_CheckCounter; list: Interface_CheckIterator;
             model: handle[Interface_InterfaceModel];
             original: Standard_Boolean = Standard_False;
             failsonly: Standard_Boolean = Standard_False) {.importcpp: "Analyse",
    header: "IFSelect_CheckCounter.hxx".}
type
  IFSelect_CheckCounterbase_type* = IFSelect_SignatureList

proc get_type_name*(): cstring {.importcpp: "IFSelect_CheckCounter::get_type_name(@)",
                              header: "IFSelect_CheckCounter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_CheckCounter::get_type_descriptor(@)",
    header: "IFSelect_CheckCounter.hxx".}
proc DynamicType*(this: IFSelect_CheckCounter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_CheckCounter.hxx".}