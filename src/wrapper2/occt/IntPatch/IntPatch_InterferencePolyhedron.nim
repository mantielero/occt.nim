##  Created on: 1992-09-29
##  Created by: Didier PIFFAULT
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../gp/gp_XYZ, ../Intf/Intf_Interference,
  ../Standard/Standard_Boolean

discard "forward decl of IntPatch_Polyhedron"
discard "forward decl of Intf_TangentZone"
type
  IntPatch_InterferencePolyhedron* {.importcpp: "IntPatch_InterferencePolyhedron", header: "IntPatch_InterferencePolyhedron.hxx",
                                    bycopy.} = object of Intf_Interference ## ! Constructs an empty
                                                                      ## interference of
                                                                      ## Polyhedron.


proc constructIntPatch_InterferencePolyhedron*(): IntPatch_InterferencePolyhedron {.
    constructor, importcpp: "IntPatch_InterferencePolyhedron(@)",
    header: "IntPatch_InterferencePolyhedron.hxx".}
proc constructIntPatch_InterferencePolyhedron*(Obje1: IntPatch_Polyhedron;
    Obje2: IntPatch_Polyhedron): IntPatch_InterferencePolyhedron {.constructor,
    importcpp: "IntPatch_InterferencePolyhedron(@)",
    header: "IntPatch_InterferencePolyhedron.hxx".}
proc constructIntPatch_InterferencePolyhedron*(Obje: IntPatch_Polyhedron): IntPatch_InterferencePolyhedron {.
    constructor, importcpp: "IntPatch_InterferencePolyhedron(@)",
    header: "IntPatch_InterferencePolyhedron.hxx".}
proc Perform*(this: var IntPatch_InterferencePolyhedron; Obje1: IntPatch_Polyhedron;
             Obje2: IntPatch_Polyhedron) {.importcpp: "Perform",
    header: "IntPatch_InterferencePolyhedron.hxx".}
proc Perform*(this: var IntPatch_InterferencePolyhedron; Obje: IntPatch_Polyhedron) {.
    importcpp: "Perform", header: "IntPatch_InterferencePolyhedron.hxx".}