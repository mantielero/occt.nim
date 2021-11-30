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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_CopyTool"
discard "forward decl of Standard_Transient"
discard "forward decl of IFSelect_WorkLibrary"
type
  HandleIFSelectWorkLibrary* = Handle[IFSelectWorkLibrary]

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
  IFSelectWorkLibrary* {.importcpp: "IFSelect_WorkLibrary",
                        header: "IFSelect_WorkLibrary.hxx", bycopy.} = object of StandardTransient ##
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


proc readFile*(this: IFSelectWorkLibrary; name: cstring;
              model: var Handle[InterfaceInterfaceModel];
              protocol: Handle[InterfaceProtocol]): cint {.noSideEffect, cdecl,
    importcpp: "ReadFile", header: "IFSelect_WorkLibrary.hxx".}
#proc readStream*(this: IFSelectWorkLibrary; theName: cstring;
#                theIStream: var Istream;
#                model: var Handle[InterfaceInterfaceModel];
#                protocol: Handle[InterfaceProtocol]): cint {.noSideEffect, cdecl,
#    importcpp: "ReadStream", header: "IFSelect_WorkLibrary.hxx".}
proc writeFile*(this: IFSelectWorkLibrary; ctx: var IFSelectContextWrite): bool {.
    noSideEffect, cdecl, importcpp: "WriteFile", header: "IFSelect_WorkLibrary.hxx".}
proc copyModel*(this: IFSelectWorkLibrary;
               original: Handle[InterfaceInterfaceModel];
               newmodel: Handle[InterfaceInterfaceModel];
               list: InterfaceEntityIterator; tc: var InterfaceCopyTool): bool {.
    noSideEffect, cdecl, importcpp: "CopyModel", header: "IFSelect_WorkLibrary.hxx".}
proc dumpEntity*(this: IFSelectWorkLibrary; model: Handle[InterfaceInterfaceModel];
                protocol: Handle[InterfaceProtocol];
                entity: Handle[StandardTransient]; s: var StandardOStream;
                level: cint) {.noSideEffect, cdecl, importcpp: "DumpEntity",
                             header: "IFSelect_WorkLibrary.hxx".}
proc dumpEntity*(this: IFSelectWorkLibrary; model: Handle[InterfaceInterfaceModel];
                protocol: Handle[InterfaceProtocol];
                entity: Handle[StandardTransient]; s: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "DumpEntity", header: "IFSelect_WorkLibrary.hxx".}
proc setDumpLevels*(this: var IFSelectWorkLibrary; def: cint; max: cint) {.cdecl,
    importcpp: "SetDumpLevels", header: "IFSelect_WorkLibrary.hxx".}
proc dumpLevels*(this: IFSelectWorkLibrary; def: var cint; max: var cint) {.noSideEffect,
    cdecl, importcpp: "DumpLevels", header: "IFSelect_WorkLibrary.hxx".}
proc setDumpHelp*(this: var IFSelectWorkLibrary; level: cint; help: cstring) {.cdecl,
    importcpp: "SetDumpHelp", header: "IFSelect_WorkLibrary.hxx".}
proc dumpHelp*(this: IFSelectWorkLibrary; level: cint): cstring {.noSideEffect, cdecl,
    importcpp: "DumpHelp", header: "IFSelect_WorkLibrary.hxx".}