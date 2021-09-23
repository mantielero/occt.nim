##  Created on: 1994-05-27
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_Graph"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_Transformer"
discard "forward decl of IFSelect_Transformer"
type
  Handle_IFSelect_Transformer* = handle[IFSelect_Transformer]

## ! A Transformer defines the way an InterfaceModel is transformed
## ! (without sending it to a file).
## ! In order to work, each type of Transformer defines it method
## ! Perform, it can be parametred as needed.
## !
## ! It receives a Model (the data set) as input. It then can :
## ! - edit this Model on the spot (i.e. alter its content : by
## ! editing entities, or adding/replacing some ...)
## ! - produce a copied Model, which detains the needed changes
## ! (typically on the same type, but some or all entities beeing
## ! rebuilt or converted; or converted from a protocol to
## ! another one)

type
  IFSelect_Transformer* {.importcpp: "IFSelect_Transformer",
                         header: "IFSelect_Transformer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Performs
                                                                                              ## a
                                                                                              ## Transformation
                                                                                              ## (defined
                                                                                              ## by
                                                                                              ## each
                                                                                              ## sub-class)
                                                                                              ## :
                                                                                              ##
                                                                                              ## !
                                                                                              ## <G>
                                                                                              ## gives
                                                                                              ## the
                                                                                              ## input
                                                                                              ## data
                                                                                              ## (especially
                                                                                              ## the
                                                                                              ## starting
                                                                                              ## model)
                                                                                              ## and
                                                                                              ##
                                                                                              ## !
                                                                                              ## can
                                                                                              ## be
                                                                                              ## used
                                                                                              ## for
                                                                                              ## queries
                                                                                              ## (by
                                                                                              ## Selections,
                                                                                              ## etc...)
                                                                                              ##
                                                                                              ## !
                                                                                              ## <protocol>
                                                                                              ## allows
                                                                                              ## to
                                                                                              ## work
                                                                                              ## with
                                                                                              ## General
                                                                                              ## Services
                                                                                              ## as
                                                                                              ## necessary
                                                                                              ##
                                                                                              ## !
                                                                                              ## (it
                                                                                              ## applies
                                                                                              ## to
                                                                                              ## input
                                                                                              ## data)
                                                                                              ##
                                                                                              ## !
                                                                                              ## If
                                                                                              ## the
                                                                                              ## change
                                                                                              ## corresponds
                                                                                              ## to
                                                                                              ## a
                                                                                              ## conversion
                                                                                              ## to
                                                                                              ## a
                                                                                              ## new
                                                                                              ## protocol,
                                                                                              ##
                                                                                              ## !
                                                                                              ## see
                                                                                              ## also
                                                                                              ## the
                                                                                              ## method
                                                                                              ## ChangeProtocol
                                                                                              ##
                                                                                              ## !
                                                                                              ## <checks>
                                                                                              ## stores
                                                                                              ## produced
                                                                                              ## checks
                                                                                              ## messages
                                                                                              ## if
                                                                                              ## any
                                                                                              ##
                                                                                              ## !
                                                                                              ## <newmod>
                                                                                              ## gives
                                                                                              ## the
                                                                                              ## result
                                                                                              ## of
                                                                                              ## the
                                                                                              ## transformation
                                                                                              ## :
                                                                                              ##
                                                                                              ## !
                                                                                              ## -
                                                                                              ## if
                                                                                              ## it
                                                                                              ## is
                                                                                              ## Null
                                                                                              ## (i.e.
                                                                                              ## has
                                                                                              ## not
                                                                                              ## been
                                                                                              ## affected),
                                                                                              ## the
                                                                                              ## transformation
                                                                                              ##
                                                                                              ## !
                                                                                              ## has
                                                                                              ## been
                                                                                              ## made
                                                                                              ## on
                                                                                              ## the
                                                                                              ## spot,
                                                                                              ## it
                                                                                              ## is
                                                                                              ## assumed
                                                                                              ## to
                                                                                              ## cause
                                                                                              ## no
                                                                                              ## change
                                                                                              ##
                                                                                              ## !
                                                                                              ## to
                                                                                              ## the
                                                                                              ## graph
                                                                                              ## of
                                                                                              ## dependances
                                                                                              ##
                                                                                              ## !
                                                                                              ## -
                                                                                              ## if
                                                                                              ## it
                                                                                              ## equates
                                                                                              ## the
                                                                                              ## starting
                                                                                              ## Model,
                                                                                              ## it
                                                                                              ## has
                                                                                              ## been
                                                                                              ## transformed
                                                                                              ## on
                                                                                              ##
                                                                                              ## !
                                                                                              ## the
                                                                                              ## spot
                                                                                              ## (possibiliy
                                                                                              ## some
                                                                                              ## entities
                                                                                              ## were
                                                                                              ## replaced
                                                                                              ## inside
                                                                                              ## it)
                                                                                              ##
                                                                                              ## !
                                                                                              ## -
                                                                                              ## if
                                                                                              ## it
                                                                                              ## is
                                                                                              ## new,
                                                                                              ## it
                                                                                              ## corresponds
                                                                                              ## to
                                                                                              ## a
                                                                                              ## new
                                                                                              ## data
                                                                                              ## set
                                                                                              ## which
                                                                                              ## replaces
                                                                                              ##
                                                                                              ## !
                                                                                              ## the
                                                                                              ## starting
                                                                                              ## one
                                                                                              ##
                                                                                              ## !
                                                                                              ##
                                                                                              ## !
                                                                                              ## <me>
                                                                                              ## is
                                                                                              ## mutable
                                                                                              ## to
                                                                                              ## allow
                                                                                              ## results
                                                                                              ## for
                                                                                              ## ChangeProtocol
                                                                                              ## to
                                                                                              ## be
                                                                                              ##
                                                                                              ## !
                                                                                              ## memorized
                                                                                              ## if
                                                                                              ## needed,
                                                                                              ## and
                                                                                              ## to
                                                                                              ## store
                                                                                              ## informations
                                                                                              ## useful
                                                                                              ## for
                                                                                              ##
                                                                                              ## !
                                                                                              ## the
                                                                                              ## method
                                                                                              ## Updated
                                                                                              ##
                                                                                              ## !
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## True
                                                                                              ## if
                                                                                              ## Done,
                                                                                              ## False
                                                                                              ## if
                                                                                              ## an
                                                                                              ## Error
                                                                                              ## occured
                                                                                              ## :
                                                                                              ## in
                                                                                              ## this
                                                                                              ## case,
                                                                                              ##
                                                                                              ## !
                                                                                              ## if
                                                                                              ## a
                                                                                              ## new
                                                                                              ## data
                                                                                              ## set
                                                                                              ## has
                                                                                              ## been
                                                                                              ## produced,
                                                                                              ## the
                                                                                              ## transformation
                                                                                              ##
                                                                                              ## !
                                                                                              ## is
                                                                                              ## ignored,
                                                                                              ## else
                                                                                              ## data
                                                                                              ## may
                                                                                              ## be
                                                                                              ## corrupted.


proc Perform*(this: var IFSelect_Transformer; G: Interface_Graph;
             protocol: handle[Interface_Protocol];
             checks: var Interface_CheckIterator;
             newmod: var handle[Interface_InterfaceModel]): Standard_Boolean {.
    importcpp: "Perform", header: "IFSelect_Transformer.hxx".}
proc ChangeProtocol*(this: IFSelect_Transformer;
                    newproto: var handle[Interface_Protocol]): Standard_Boolean {.
    noSideEffect, importcpp: "ChangeProtocol", header: "IFSelect_Transformer.hxx".}
proc Updated*(this: IFSelect_Transformer; entfrom: handle[Standard_Transient];
             entto: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "Updated", header: "IFSelect_Transformer.hxx".}
proc Label*(this: IFSelect_Transformer): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_Transformer.hxx".}
type
  IFSelect_Transformerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_Transformer::get_type_name(@)",
                              header: "IFSelect_Transformer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_Transformer::get_type_descriptor(@)",
    header: "IFSelect_Transformer.hxx".}
proc DynamicType*(this: IFSelect_Transformer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_Transformer.hxx".}