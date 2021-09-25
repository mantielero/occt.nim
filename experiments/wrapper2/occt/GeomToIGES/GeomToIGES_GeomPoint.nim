##  Created on: 1994-11-16
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
discard "forward decl of IGESGeom_Point"
discard "forward decl of Geom_Point"
discard "forward decl of Geom_CartesianPoint"
type
  GeomToIGES_GeomPoint* {.importcpp: "GeomToIGES_GeomPoint",
                         header: "GeomToIGES_GeomPoint.hxx", bycopy.} = object of GeomToIGES_GeomEntity


proc constructGeomToIGES_GeomPoint*(): GeomToIGES_GeomPoint {.constructor,
    importcpp: "GeomToIGES_GeomPoint(@)", header: "GeomToIGES_GeomPoint.hxx".}
proc constructGeomToIGES_GeomPoint*(ge: GeomToIGES_GeomEntity): GeomToIGES_GeomPoint {.
    constructor, importcpp: "GeomToIGES_GeomPoint(@)",
    header: "GeomToIGES_GeomPoint.hxx".}
proc transferPoint*(this: var GeomToIGES_GeomPoint; start: Handle[GeomPoint]): Handle[
    IGESGeomPoint] {.importcpp: "TransferPoint", header: "GeomToIGES_GeomPoint.hxx".}
proc transferPoint*(this: var GeomToIGES_GeomPoint;
                   start: Handle[GeomCartesianPoint]): Handle[IGESGeomPoint] {.
    importcpp: "TransferPoint", header: "GeomToIGES_GeomPoint.hxx".}
