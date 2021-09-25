##  Created on: 1994-11-18
##  Created by: Marie Jose MARTZ
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

discard "forward decl of GeomToIGES_GeomEntity"
discard "forward decl of IGESGeom_Direction"
discard "forward decl of Geom_Vector"
discard "forward decl of Geom_VectorWithMagnitude"
discard "forward decl of Geom_Direction"
type
  GeomToIGES_GeomVector* {.importcpp: "GeomToIGES_GeomVector",
                          header: "GeomToIGES_GeomVector.hxx", bycopy.} = object of GeomToIGES_GeomEntity


proc constructGeomToIGES_GeomVector*(): GeomToIGES_GeomVector {.constructor,
    importcpp: "GeomToIGES_GeomVector(@)", header: "GeomToIGES_GeomVector.hxx".}
proc constructGeomToIGES_GeomVector*(ge: GeomToIGES_GeomEntity): GeomToIGES_GeomVector {.
    constructor, importcpp: "GeomToIGES_GeomVector(@)",
    header: "GeomToIGES_GeomVector.hxx".}
proc transferVector*(this: var GeomToIGES_GeomVector; start: Handle[GeomVector]): Handle[
    IGESGeomDirection] {.importcpp: "TransferVector",
                        header: "GeomToIGES_GeomVector.hxx".}
proc transferVector*(this: var GeomToIGES_GeomVector;
                    start: Handle[GeomVectorWithMagnitude]): Handle[
    IGESGeomDirection] {.importcpp: "TransferVector",
                        header: "GeomToIGES_GeomVector.hxx".}
proc transferVector*(this: var GeomToIGES_GeomVector; start: Handle[GeomDirection]): Handle[
    IGESGeomDirection] {.importcpp: "TransferVector",
                        header: "GeomToIGES_GeomVector.hxx".}
