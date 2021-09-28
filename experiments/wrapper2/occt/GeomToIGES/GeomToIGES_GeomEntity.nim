##  Created on: 1995-09-13
##  Created by: Marie Jose MARTZ
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of IGESData_IGESModel"
type
  GeomToIGES_GeomEntity* {.importcpp: "GeomToIGES_GeomEntity",
                          header: "GeomToIGES_GeomEntity.hxx", bycopy.} = object


proc `new`*(this: var GeomToIGES_GeomEntity; theSize: csize_t): pointer {.
    importcpp: "GeomToIGES_GeomEntity::operator new",
    header: "GeomToIGES_GeomEntity.hxx".}
proc `delete`*(this: var GeomToIGES_GeomEntity; theAddress: pointer) {.
    importcpp: "GeomToIGES_GeomEntity::operator delete",
    header: "GeomToIGES_GeomEntity.hxx".}
proc `new[]`*(this: var GeomToIGES_GeomEntity; theSize: csize_t): pointer {.
    importcpp: "GeomToIGES_GeomEntity::operator new[]",
    header: "GeomToIGES_GeomEntity.hxx".}
proc `delete[]`*(this: var GeomToIGES_GeomEntity; theAddress: pointer) {.
    importcpp: "GeomToIGES_GeomEntity::operator delete[]",
    header: "GeomToIGES_GeomEntity.hxx".}
proc `new`*(this: var GeomToIGES_GeomEntity; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToIGES_GeomEntity::operator new",
    header: "GeomToIGES_GeomEntity.hxx".}
proc `delete`*(this: var GeomToIGES_GeomEntity; a2: pointer; a3: pointer) {.
    importcpp: "GeomToIGES_GeomEntity::operator delete",
    header: "GeomToIGES_GeomEntity.hxx".}
proc constructGeomToIGES_GeomEntity*(): GeomToIGES_GeomEntity {.constructor,
    importcpp: "GeomToIGES_GeomEntity(@)", header: "GeomToIGES_GeomEntity.hxx".}
proc constructGeomToIGES_GeomEntity*(ge: GeomToIGES_GeomEntity): GeomToIGES_GeomEntity {.
    constructor, importcpp: "GeomToIGES_GeomEntity(@)",
    header: "GeomToIGES_GeomEntity.hxx".}
proc setModel*(this: var GeomToIGES_GeomEntity; model: Handle[IGESDataIGESModel]) {.
    importcpp: "SetModel", header: "GeomToIGES_GeomEntity.hxx".}
proc getModel*(this: GeomToIGES_GeomEntity): Handle[IGESDataIGESModel] {.
    noSideEffect, importcpp: "GetModel", header: "GeomToIGES_GeomEntity.hxx".}
proc setUnit*(this: var GeomToIGES_GeomEntity; unit: StandardReal) {.
    importcpp: "SetUnit", header: "GeomToIGES_GeomEntity.hxx".}
proc getUnit*(this: GeomToIGES_GeomEntity): StandardReal {.noSideEffect,
    importcpp: "GetUnit", header: "GeomToIGES_GeomEntity.hxx".}