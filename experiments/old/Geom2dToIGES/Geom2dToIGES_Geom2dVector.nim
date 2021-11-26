##  Created on: 1995-02-01
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

discard "forward decl of Geom2dToIGES_Geom2dEntity"
discard "forward decl of IGESGeom_Direction"
discard "forward decl of Geom2d_Vector"
discard "forward decl of Geom2d_VectorWithMagnitude"
discard "forward decl of Geom2d_Direction"
type
  Geom2dToIGES_Geom2dVector* {.importcpp: "Geom2dToIGES_Geom2dVector",
                              header: "Geom2dToIGES_Geom2dVector.hxx", bycopy.} = object of Geom2dToIGES_Geom2dEntity


proc `new`*(this: var Geom2dToIGES_Geom2dVector; theSize: csize_t): pointer {.
    importcpp: "Geom2dToIGES_Geom2dVector::operator new",
    header: "Geom2dToIGES_Geom2dVector.hxx".}
proc `delete`*(this: var Geom2dToIGES_Geom2dVector; theAddress: pointer) {.
    importcpp: "Geom2dToIGES_Geom2dVector::operator delete",
    header: "Geom2dToIGES_Geom2dVector.hxx".}
proc `new[]`*(this: var Geom2dToIGES_Geom2dVector; theSize: csize_t): pointer {.
    importcpp: "Geom2dToIGES_Geom2dVector::operator new[]",
    header: "Geom2dToIGES_Geom2dVector.hxx".}
proc `delete[]`*(this: var Geom2dToIGES_Geom2dVector; theAddress: pointer) {.
    importcpp: "Geom2dToIGES_Geom2dVector::operator delete[]",
    header: "Geom2dToIGES_Geom2dVector.hxx".}
proc `new`*(this: var Geom2dToIGES_Geom2dVector; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dToIGES_Geom2dVector::operator new",
    header: "Geom2dToIGES_Geom2dVector.hxx".}
proc `delete`*(this: var Geom2dToIGES_Geom2dVector; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dToIGES_Geom2dVector::operator delete",
    header: "Geom2dToIGES_Geom2dVector.hxx".}
proc constructGeom2dToIGES_Geom2dVector*(): Geom2dToIGES_Geom2dVector {.
    constructor, importcpp: "Geom2dToIGES_Geom2dVector(@)",
    header: "Geom2dToIGES_Geom2dVector.hxx".}
proc constructGeom2dToIGES_Geom2dVector*(g2dE: Geom2dToIGES_Geom2dEntity): Geom2dToIGES_Geom2dVector {.
    constructor, importcpp: "Geom2dToIGES_Geom2dVector(@)",
    header: "Geom2dToIGES_Geom2dVector.hxx".}
proc transfer2dVector*(this: var Geom2dToIGES_Geom2dVector;
                      start: Handle[Geom2dVector]): Handle[IGESGeomDirection] {.
    importcpp: "Transfer2dVector", header: "Geom2dToIGES_Geom2dVector.hxx".}
proc transfer2dVector*(this: var Geom2dToIGES_Geom2dVector;
                      start: Handle[Geom2dVectorWithMagnitude]): Handle[
    IGESGeomDirection] {.importcpp: "Transfer2dVector",
                        header: "Geom2dToIGES_Geom2dVector.hxx".}
proc transfer2dVector*(this: var Geom2dToIGES_Geom2dVector;
                      start: Handle[Geom2dDirection]): Handle[IGESGeomDirection] {.
    importcpp: "Transfer2dVector", header: "Geom2dToIGES_Geom2dVector.hxx".}