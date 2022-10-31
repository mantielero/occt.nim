import ../../tkernel/standard/standard_types




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

type
  InterfaceShareFlags* {.importcpp: "Interface_ShareFlags",
                        header: "Interface_ShareFlags.hxx", bycopy.} = object ## ! Creates a
                                                                         ## ShareFlags from a Model and builds
                                                                         ## required data
                                                                         ## ! (flags) by calling the General Service Library given as
                                                                         ## !
                                                                         ## argument <lib>
                                                                         ## !
                                                                         ## Computes flags at
                                                                         ## Creation time
                                                                         ## !
                                                                         ## !
                                                                         ## Normally, gtool
                                                                         ## suffices. But if a Graph is created from a
                                                                         ## !
                                                                         ## GeneralLib
                                                                         ## directly, it cannot be used
                                                                         ## ! If <gtool> is
                                                                         ## defined, it has
                                                                         ## priority


proc newInterfaceShareFlags*(amodel: Handle[InterfaceInterfaceModel];
                            lib: InterfaceGeneralLib): InterfaceShareFlags {.cdecl,
    constructor, importcpp: "Interface_ShareFlags(@)", header: "Interface_ShareFlags.hxx".}
proc newInterfaceShareFlags*(amodel: Handle[InterfaceInterfaceModel];
                            gtool: Handle[InterfaceGTool]): InterfaceShareFlags {.
    cdecl, constructor, importcpp: "Interface_ShareFlags(@)", header: "Interface_ShareFlags.hxx".}
proc newInterfaceShareFlags*(amodel: Handle[InterfaceInterfaceModel];
                            protocol: Handle[InterfaceProtocol]): InterfaceShareFlags {.
    cdecl, constructor, importcpp: "Interface_ShareFlags(@)", header: "Interface_ShareFlags.hxx".}
proc newInterfaceShareFlags*(amodel: Handle[InterfaceInterfaceModel]): InterfaceShareFlags {.
    cdecl, constructor, importcpp: "Interface_ShareFlags(@)", header: "Interface_ShareFlags.hxx".}
proc newInterfaceShareFlags*(agraph: InterfaceGraph): InterfaceShareFlags {.cdecl,
    constructor, importcpp: "Interface_ShareFlags(@)", header: "Interface_ShareFlags.hxx".}
proc model*(this: InterfaceShareFlags): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "Interface_ShareFlags.hxx".}
proc isShared*(this: InterfaceShareFlags; ent: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "IsShared", header: "Interface_ShareFlags.hxx".}
proc rootEntities*(this: InterfaceShareFlags): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootEntities", header: "Interface_ShareFlags.hxx".}
proc nbRoots*(this: InterfaceShareFlags): cint {.noSideEffect, cdecl,
    importcpp: "NbRoots", header: "Interface_ShareFlags.hxx".}
proc root*(this: InterfaceShareFlags; num: cint = 1): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Root", header: "Interface_ShareFlags.hxx".}

