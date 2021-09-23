##  Created on: 1993-04-05
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Interface_BitMap,
  ../TColStd/TColStd_HSequenceOfTransient, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_GTool"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
type
  Interface_ShareFlags* {.importcpp: "Interface_ShareFlags",
                         header: "Interface_ShareFlags.hxx", bycopy.} = object ## !
                                                                          ## Creates a
                                                                          ## ShareFlags from a Model and builds
                                                                          ## required data
                                                                          ## !
                                                                          ## (flags) by
                                                                          ## calling the
                                                                          ## General
                                                                          ## Service
                                                                          ## Library given as
                                                                          ## !
                                                                          ## argument <lib>
                                                                          ## !
                                                                          ## Computes flags at
                                                                          ## Creation time
                                                                          ## !
                                                                          ## !
                                                                          ## Normally, gtool
                                                                          ## suffices. But if a Graph is
                                                                          ## created from a
                                                                          ## !
                                                                          ## GeneralLib
                                                                          ## directly, it cannot be used
                                                                          ## ! If
                                                                          ## <gtool> is
                                                                          ## defined, it has
                                                                          ## priority


proc constructInterface_ShareFlags*(amodel: handle[Interface_InterfaceModel];
                                   lib: Interface_GeneralLib): Interface_ShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc constructInterface_ShareFlags*(amodel: handle[Interface_InterfaceModel];
                                   gtool: handle[Interface_GTool]): Interface_ShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc constructInterface_ShareFlags*(amodel: handle[Interface_InterfaceModel];
                                   protocol: handle[Interface_Protocol]): Interface_ShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc constructInterface_ShareFlags*(amodel: handle[Interface_InterfaceModel]): Interface_ShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc constructInterface_ShareFlags*(agraph: Interface_Graph): Interface_ShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc Model*(this: Interface_ShareFlags): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_ShareFlags.hxx".}
proc IsShared*(this: Interface_ShareFlags; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsShared", header: "Interface_ShareFlags.hxx".}
proc RootEntities*(this: Interface_ShareFlags): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootEntities", header: "Interface_ShareFlags.hxx".}
proc NbRoots*(this: Interface_ShareFlags): Standard_Integer {.noSideEffect,
    importcpp: "NbRoots", header: "Interface_ShareFlags.hxx".}
proc Root*(this: Interface_ShareFlags; num: Standard_Integer = 1): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Root",
                         header: "Interface_ShareFlags.hxx".}