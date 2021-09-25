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

discard "forward decl of MoniTool_SignText"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_CheckCounter"
discard "forward decl of IFSelect_CheckCounter"
type
  HandleIFSelectCheckCounter* = Handle[IFSelectCheckCounter]

## ! A CheckCounter allows to see a CheckList (i.e. CheckIterator)
## ! not per entity, its messages, but per message, the entities
## ! attached (count and list). Because many messages can be
## ! repeated if they are due to systematic errors

type
  IFSelectCheckCounter* {.importcpp: "IFSelect_CheckCounter",
                         header: "IFSelect_CheckCounter.hxx", bycopy.} = object of IFSelectSignatureList ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## CheckCounter,
                                                                                                  ## empty
                                                                                                  ## ready
                                                                                                  ## to
                                                                                                  ## work


proc constructIFSelectCheckCounter*(withlist: bool = false): IFSelectCheckCounter {.
    constructor, importcpp: "IFSelect_CheckCounter(@)",
    header: "IFSelect_CheckCounter.hxx".}
proc setSignature*(this: var IFSelectCheckCounter; sign: Handle[MoniToolSignText]) {.
    importcpp: "SetSignature", header: "IFSelect_CheckCounter.hxx".}
proc signature*(this: IFSelectCheckCounter): Handle[MoniToolSignText] {.
    noSideEffect, importcpp: "Signature", header: "IFSelect_CheckCounter.hxx".}
proc analyse*(this: var IFSelectCheckCounter; list: InterfaceCheckIterator;
             model: Handle[InterfaceInterfaceModel]; original: bool = false;
             failsonly: bool = false) {.importcpp: "Analyse",
                                    header: "IFSelect_CheckCounter.hxx".}
type
  IFSelectCheckCounterbaseType* = IFSelectSignatureList

proc getTypeName*(): cstring {.importcpp: "IFSelect_CheckCounter::get_type_name(@)",
                            header: "IFSelect_CheckCounter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_CheckCounter::get_type_descriptor(@)",
    header: "IFSelect_CheckCounter.hxx".}
proc dynamicType*(this: IFSelectCheckCounter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_CheckCounter.hxx".}
