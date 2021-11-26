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

discard "forward decl of IntPatch_Polyhedron"
discard "forward decl of Intf_TangentZone"
type
  IntPatchInterferencePolyhedron* {.importcpp: "IntPatch_InterferencePolyhedron", header: "IntPatch_InterferencePolyhedron.hxx",
                                   bycopy.} = object of IntfInterference ## ! Constructs an empty interference of Polyhedron.


proc constructIntPatchInterferencePolyhedron*(): IntPatchInterferencePolyhedron {.
    constructor, importcpp: "IntPatch_InterferencePolyhedron(@)",
    header: "IntPatch_InterferencePolyhedron.hxx".}
proc constructIntPatchInterferencePolyhedron*(obje1: IntPatchPolyhedron;
    obje2: IntPatchPolyhedron): IntPatchInterferencePolyhedron {.constructor,
    importcpp: "IntPatch_InterferencePolyhedron(@)",
    header: "IntPatch_InterferencePolyhedron.hxx".}
proc constructIntPatchInterferencePolyhedron*(obje: IntPatchPolyhedron): IntPatchInterferencePolyhedron {.
    constructor, importcpp: "IntPatch_InterferencePolyhedron(@)",
    header: "IntPatch_InterferencePolyhedron.hxx".}
proc perform*(this: var IntPatchInterferencePolyhedron; obje1: IntPatchPolyhedron;
             obje2: IntPatchPolyhedron) {.importcpp: "Perform", header: "IntPatch_InterferencePolyhedron.hxx".}
proc perform*(this: var IntPatchInterferencePolyhedron; obje: IntPatchPolyhedron) {.
    importcpp: "Perform", header: "IntPatch_InterferencePolyhedron.hxx".}

























