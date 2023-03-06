import bnd_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import ../gp/gp_types
##  Created on: 1992-11-24
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

discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_MultiplyDefined"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pln"


proc newBndBoundSortBox*(): BndBoundSortBox {.cdecl, constructor,
    importcpp: "Bnd_BoundSortBox(@)", header: "Bnd_BoundSortBox.hxx".}
proc initialize*(this: var BndBoundSortBox; completeBox: BndBox;
                setOfBox: Handle[BndHArray1OfBox]) {.cdecl,
    importcpp: "Initialize", header: "Bnd_BoundSortBox.hxx".}
proc initialize*(this: var BndBoundSortBox; setOfBox: Handle[BndHArray1OfBox]) {.
    cdecl, importcpp: "Initialize", header: "Bnd_BoundSortBox.hxx".}
proc initialize*(this: var BndBoundSortBox; completeBox: BndBox; nbComponents: cint) {.
    cdecl, importcpp: "Initialize", header: "Bnd_BoundSortBox.hxx".}
proc add*(this: var BndBoundSortBox; theBox: BndBox; boxIndex: cint) {.cdecl,
    importcpp: "Add", header: "Bnd_BoundSortBox.hxx".}
proc compare*(this: var BndBoundSortBox; theBox: BndBox): TColStdListOfInteger {.cdecl,
    importcpp: "Compare", header: "Bnd_BoundSortBox.hxx".}
proc compare*(this: var BndBoundSortBox; p: gp_Pln): TColStdListOfInteger {.cdecl,
    importcpp: "Compare", header: "Bnd_BoundSortBox.hxx".}
proc dump*(this: BndBoundSortBox) {.noSideEffect, cdecl, importcpp: "Dump",
                                 header: "Bnd_BoundSortBox.hxx".}
proc destroy*(this: var BndBoundSortBox) {.cdecl, importcpp: "Destroy", header: "Bnd_BoundSortBox.hxx".}
proc destroyBndBoundSortBox*(this: var BndBoundSortBox) {.cdecl,
    importcpp: "#.~Bnd_BoundSortBox()", header: "Bnd_BoundSortBox.hxx".}
