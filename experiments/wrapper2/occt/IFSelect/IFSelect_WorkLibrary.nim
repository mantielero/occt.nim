##  Created on: 1993-01-08
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Interface/Interface_HArray1OfHAsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_CopyTool"
discard "forward decl of Standard_Transient"
discard "forward decl of IFSelect_WorkLibrary"
discard "forward decl of IFSelect_WorkLibrary"
type
  Handle_IFSelect_WorkLibrary* = handle[IFSelect_WorkLibrary]

## ! This class defines the (empty) frame which can be used to
## ! enrich a XSTEP set with new capabilities
## ! In particular, a specific WorkLibrary must give the way for
## ! Reading a File into a Model, and Writing a Model to a File
## ! Thus, it is possible to define several Work Libraries for each
## ! norm, but recommanded to define one general class for each one :
## ! this general class will define the Read and Write methods.
## !
## ! Also a Dump service is provided, it can produce, according the
## ! norm, either a parcel of a file for an entity, or any other
## ! kind of informations relevant for the norm,

type
  IFSelect_WorkLibrary* {.importcpp: "IFSelect_WorkLibrary",
                         header: "IFSelect_WorkLibrary.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Gives
                                                                                              ## the
                                                                                              ## way
                                                                                              ## to
                                                                                              ## Read
                                                                                              ## a
                                                                                              ## File
                                                                                              ## and
                                                                                              ## transfer
                                                                                              ## it
                                                                                              ## to
                                                                                              ## a
                                                                                              ## Model
                                                                                              ##
                                                                                              ## !
                                                                                              ## <mod>
                                                                                              ## is
                                                                                              ## the
                                                                                              ## resulting
                                                                                              ## Model,
                                                                                              ## which
                                                                                              ## has
                                                                                              ## to
                                                                                              ## be
                                                                                              ## created
                                                                                              ## by
                                                                                              ## this
                                                                                              ##
                                                                                              ## !
                                                                                              ## method.
                                                                                              ## In
                                                                                              ## case
                                                                                              ## of
                                                                                              ## error,
                                                                                              ## <mod>
                                                                                              ## must
                                                                                              ## be
                                                                                              ## returned
                                                                                              ## Null
                                                                                              ##
                                                                                              ## !
                                                                                              ## Return
                                                                                              ## value
                                                                                              ## is
                                                                                              ## a
                                                                                              ## status
                                                                                              ## with
                                                                                              ## free
                                                                                              ## values.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Simply,
                                                                                              ## 0
                                                                                              ## is
                                                                                              ## for
                                                                                              ## "Execution
                                                                                              ## OK"
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## Protocol
                                                                                              ## can
                                                                                              ## be
                                                                                              ## used
                                                                                              ## to
                                                                                              ## work
                                                                                              ## (e.g.
                                                                                              ## create
                                                                                              ## the
                                                                                              ## Model,
                                                                                              ## read
                                                                                              ##
                                                                                              ## !
                                                                                              ## and
                                                                                              ## recognize
                                                                                              ## the
                                                                                              ## Entities)
                                                                                              ##
                                                                                              ## !
                                                                                              ## Required
                                                                                              ## to
                                                                                              ## initialise
                                                                                              ## fields


proc ReadFile*(this: IFSelect_WorkLibrary; name: Standard_CString;
              model: var handle[Interface_InterfaceModel];
              protocol: handle[Interface_Protocol]): Standard_Integer {.
    noSideEffect, importcpp: "ReadFile", header: "IFSelect_WorkLibrary.hxx".}
proc ReadStream*(this: IFSelect_WorkLibrary; theName: Standard_CString;
                theIStream: var istream;
                model: var handle[Interface_InterfaceModel];
                protocol: handle[Interface_Protocol]): Standard_Integer {.
    noSideEffect, importcpp: "ReadStream", header: "IFSelect_WorkLibrary.hxx".}
proc WriteFile*(this: IFSelect_WorkLibrary; ctx: var IFSelect_ContextWrite): Standard_Boolean {.
    noSideEffect, importcpp: "WriteFile", header: "IFSelect_WorkLibrary.hxx".}
proc CopyModel*(this: IFSelect_WorkLibrary;
               original: handle[Interface_InterfaceModel];
               newmodel: handle[Interface_InterfaceModel];
               list: Interface_EntityIterator; TC: var Interface_CopyTool): Standard_Boolean {.
    noSideEffect, importcpp: "CopyModel", header: "IFSelect_WorkLibrary.hxx".}
proc DumpEntity*(this: IFSelect_WorkLibrary;
                model: handle[Interface_InterfaceModel];
                protocol: handle[Interface_Protocol];
                entity: handle[Standard_Transient]; S: var Standard_OStream;
                level: Standard_Integer) {.noSideEffect, importcpp: "DumpEntity",
    header: "IFSelect_WorkLibrary.hxx".}
proc DumpEntity*(this: IFSelect_WorkLibrary;
                model: handle[Interface_InterfaceModel];
                protocol: handle[Interface_Protocol];
                entity: handle[Standard_Transient]; S: var Standard_OStream) {.
    noSideEffect, importcpp: "DumpEntity", header: "IFSelect_WorkLibrary.hxx".}
proc SetDumpLevels*(this: var IFSelect_WorkLibrary; def: Standard_Integer;
                   max: Standard_Integer) {.importcpp: "SetDumpLevels",
    header: "IFSelect_WorkLibrary.hxx".}
proc DumpLevels*(this: IFSelect_WorkLibrary; def: var Standard_Integer;
                max: var Standard_Integer) {.noSideEffect, importcpp: "DumpLevels",
    header: "IFSelect_WorkLibrary.hxx".}
proc SetDumpHelp*(this: var IFSelect_WorkLibrary; level: Standard_Integer;
                 help: Standard_CString) {.importcpp: "SetDumpHelp",
    header: "IFSelect_WorkLibrary.hxx".}
proc DumpHelp*(this: IFSelect_WorkLibrary; level: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "DumpHelp", header: "IFSelect_WorkLibrary.hxx".}
type
  IFSelect_WorkLibrarybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_WorkLibrary::get_type_name(@)",
                              header: "IFSelect_WorkLibrary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_WorkLibrary::get_type_descriptor(@)",
    header: "IFSelect_WorkLibrary.hxx".}
proc DynamicType*(this: IFSelect_WorkLibrary): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_WorkLibrary.hxx".}