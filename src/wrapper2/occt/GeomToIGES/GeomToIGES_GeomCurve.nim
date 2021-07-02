##  Created on: 1994-11-17
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
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_BoundedCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_TrimmedCurve"
discard "forward decl of Geom_Conic"
discard "forward decl of Geom_Circle"
discard "forward decl of Geom_Ellipse"
discard "forward decl of Geom_Hyperbola"
discard "forward decl of Geom_Line"
discard "forward decl of Geom_Parabola"
discard "forward decl of Geom_OffsetCurve"
type
  GeomToIGES_GeomCurve* {.importcpp: "GeomToIGES_GeomCurve",
                         header: "GeomToIGES_GeomCurve.hxx", bycopy.} = object of GeomToIGES_GeomEntity


proc constructGeomToIGES_GeomCurve*(): GeomToIGES_GeomCurve {.constructor,
    importcpp: "GeomToIGES_GeomCurve(@)", header: "GeomToIGES_GeomCurve.hxx".}
proc constructGeomToIGES_GeomCurve*(ge: GeomToIGES_GeomEntity): GeomToIGES_GeomCurve {.
    constructor, importcpp: "GeomToIGES_GeomCurve(@)",
    header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomCurve];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomBoundedCurve];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomBSplineCurve];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomBezierCurve];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomTrimmedCurve];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomConic];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomCircle];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomEllipse];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomHyperbola];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomLine];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomParabola];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}
proc transferCurve*(this: var GeomToIGES_GeomCurve; start: Handle[GeomOffsetCurve];
                   udeb: StandardReal; ufin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCurve",
                         header: "GeomToIGES_GeomCurve.hxx".}

