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
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Geom2d_Curve"
type
  Geom2dToIGES_Geom2dCurve* {.importcpp: "Geom2dToIGES_Geom2dCurve",
                             header: "Geom2dToIGES_Geom2dCurve.hxx", bycopy.} = object of Geom2dToIGES_Geom2dEntity


proc constructGeom2dToIGES_Geom2dCurve*(): Geom2dToIGES_Geom2dCurve {.constructor,
    importcpp: "Geom2dToIGES_Geom2dCurve(@)",
    header: "Geom2dToIGES_Geom2dCurve.hxx".}
proc constructGeom2dToIGES_Geom2dCurve*(g2dE: Geom2dToIGES_Geom2dEntity): Geom2dToIGES_Geom2dCurve {.
    constructor, importcpp: "Geom2dToIGES_Geom2dCurve(@)",
    header: "Geom2dToIGES_Geom2dCurve.hxx".}
proc transfer2dCurve*(this: var Geom2dToIGES_Geom2dCurve;
                     start: Handle[Geom2dCurve]; udeb: float; ufin: float): Handle[
    IGESDataIGESEntity] {.importcpp: "Transfer2dCurve",
                         header: "Geom2dToIGES_Geom2dCurve.hxx".}
