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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IFSelect/IFSelect_SelectExtract, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of XSControl_TransferReader"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of XSControl_SelectForTransfer"
discard "forward decl of XSControl_SelectForTransfer"
type
  Handle_XSControl_SelectForTransfer* = handle[XSControl_SelectForTransfer]

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
  XSControl_SelectForTransfer* {.importcpp: "XSControl_SelectForTransfer",
                                header: "XSControl_SelectForTransfer.hxx", bycopy.} = object of IFSelect_SelectExtract ##
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


proc constructXSControl_SelectForTransfer*(): XSControl_SelectForTransfer {.
    constructor, importcpp: "XSControl_SelectForTransfer(@)",
    header: "XSControl_SelectForTransfer.hxx".}
proc constructXSControl_SelectForTransfer*(TR: handle[XSControl_TransferReader]): XSControl_SelectForTransfer {.
    constructor, importcpp: "XSControl_SelectForTransfer(@)",
    header: "XSControl_SelectForTransfer.hxx".}
proc SetReader*(this: var XSControl_SelectForTransfer;
               TR: handle[XSControl_TransferReader]) {.importcpp: "SetReader",
    header: "XSControl_SelectForTransfer.hxx".}
proc SetActor*(this: var XSControl_SelectForTransfer;
              act: handle[Transfer_ActorOfTransientProcess]) {.
    importcpp: "SetActor", header: "XSControl_SelectForTransfer.hxx".}
proc Actor*(this: XSControl_SelectForTransfer): handle[
    Transfer_ActorOfTransientProcess] {.noSideEffect, importcpp: "Actor", header: "XSControl_SelectForTransfer.hxx".}
proc Reader*(this: XSControl_SelectForTransfer): handle[XSControl_TransferReader] {.
    noSideEffect, importcpp: "Reader", header: "XSControl_SelectForTransfer.hxx".}
proc Sort*(this: XSControl_SelectForTransfer; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "XSControl_SelectForTransfer.hxx".}
proc ExtractLabel*(this: XSControl_SelectForTransfer): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel",
    header: "XSControl_SelectForTransfer.hxx".}
type
  XSControl_SelectForTransferbase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "XSControl_SelectForTransfer::get_type_name(@)",
                              header: "XSControl_SelectForTransfer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSControl_SelectForTransfer::get_type_descriptor(@)",
    header: "XSControl_SelectForTransfer.hxx".}
proc DynamicType*(this: XSControl_SelectForTransfer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XSControl_SelectForTransfer.hxx".}