##  Created on: 1996-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of XSControl_TransferReader"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of XSControl_SelectForTransfer"
discard "forward decl of XSControl_SelectForTransfer"
type
  HandleXSControlSelectForTransfer* = Handle[XSControlSelectForTransfer]

## ! This selection selects the entities which are recognised for
## ! transfer by an Actor for Read : current one or another one.
## !
## ! An Actor is an operator which runs transfers from interface
## ! entities to objects for Imagine. It has a method to recognize
## ! the entities it can process (by default, it recognises all,
## ! this method can be redefined).
## !
## ! A TransferReader brings an Actor, according to the currently
## ! selected norm and transfer conditions.
## !
## ! This selection considers, either the current Actor (brought by
## ! the TransferReader, updated as required), or a precise one.

type
  XSControlSelectForTransfer* {.importcpp: "XSControl_SelectForTransfer",
                               header: "XSControl_SelectForTransfer.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## a
                                                                                                              ## SelectForTransfer,
                                                                                                              ## non
                                                                                                              ## initialised
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## it
                                                                                                              ## sorts
                                                                                                              ## nothing,
                                                                                                              ## unless
                                                                                                              ## an
                                                                                                              ## Actor
                                                                                                              ## has
                                                                                                              ## been
                                                                                                              ## defined


proc constructXSControlSelectForTransfer*(): XSControlSelectForTransfer {.
    constructor, importcpp: "XSControl_SelectForTransfer(@)",
    header: "XSControl_SelectForTransfer.hxx".}
proc constructXSControlSelectForTransfer*(tr: Handle[XSControlTransferReader]): XSControlSelectForTransfer {.
    constructor, importcpp: "XSControl_SelectForTransfer(@)",
    header: "XSControl_SelectForTransfer.hxx".}
proc setReader*(this: var XSControlSelectForTransfer;
               tr: Handle[XSControlTransferReader]) {.importcpp: "SetReader",
    header: "XSControl_SelectForTransfer.hxx".}
proc setActor*(this: var XSControlSelectForTransfer;
              act: Handle[TransferActorOfTransientProcess]) {.
    importcpp: "SetActor", header: "XSControl_SelectForTransfer.hxx".}
proc actor*(this: XSControlSelectForTransfer): Handle[
    TransferActorOfTransientProcess] {.noSideEffect, importcpp: "Actor",
                                      header: "XSControl_SelectForTransfer.hxx".}
proc reader*(this: XSControlSelectForTransfer): Handle[XSControlTransferReader] {.
    noSideEffect, importcpp: "Reader", header: "XSControl_SelectForTransfer.hxx".}
proc sort*(this: XSControlSelectForTransfer; rank: int;
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Sort", header: "XSControl_SelectForTransfer.hxx".}
proc extractLabel*(this: XSControlSelectForTransfer): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExtractLabel",
    header: "XSControl_SelectForTransfer.hxx".}
type
  XSControlSelectForTransferbaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "XSControl_SelectForTransfer::get_type_name(@)",
                            header: "XSControl_SelectForTransfer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSControl_SelectForTransfer::get_type_descriptor(@)",
    header: "XSControl_SelectForTransfer.hxx".}
proc dynamicType*(this: XSControlSelectForTransfer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XSControl_SelectForTransfer.hxx".}
