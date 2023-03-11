import brepgprop_types
import ../gp/gp_types
##  Created on: 2005-12-21
##  Created by: Sergey KHROMOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

discard "forward decl of BRepGProp_Face"
discard "forward decl of BRepGProp_Domain"
discard "forward decl of gp_Pln"


proc newBRepGProp_VinertGK*(): BRepGProp_VinertGK {.cdecl, constructor,
    importcpp: "BRepGProp_VinertGK(@)".}
proc newBRepGProp_VinertGK*(theSurface: var BRepGProp_Face; theLocation: gp_Pnt;
                           theTolerance: cfloat = 0.001; theCGFlag: bool = false;
                           theIFlag: bool = false): BRepGProp_VinertGK {.cdecl,
    constructor, importcpp: "BRepGProp_VinertGK(@)".}
proc newBRepGProp_VinertGK*(theSurface: var BRepGProp_Face; thePoint: gp_Pnt;
                           theLocation: gp_Pnt; theTolerance: cfloat = 0.001;
                           theCGFlag: bool = false; theIFlag: bool = false): BRepGProp_VinertGK {.
    cdecl, constructor, importcpp: "BRepGProp_VinertGK(@)".}
proc newBRepGProp_VinertGK*(theSurface: var BRepGProp_Face;
                           theDomain: var BRepGProp_Domain; theLocation: gp_Pnt;
                           theTolerance: cfloat = 0.001; theCGFlag: bool = false;
                           theIFlag: bool = false): BRepGProp_VinertGK {.cdecl,
    constructor, importcpp: "BRepGProp_VinertGK(@)".}
proc newBRepGProp_VinertGK*(theSurface: var BRepGProp_Face;
                           theDomain: var BRepGProp_Domain; thePoint: gp_Pnt;
                           theLocation: gp_Pnt; theTolerance: cfloat = 0.001;
                           theCGFlag: bool = false; theIFlag: bool = false): BRepGProp_VinertGK {.
    cdecl, constructor, importcpp: "BRepGProp_VinertGK(@)".}
proc newBRepGProp_VinertGK*(theSurface: var BRepGProp_Face; thePlane: gp_Pln;
                           theLocation: gp_Pnt; theTolerance: cfloat = 0.001;
                           theCGFlag: bool = false; theIFlag: bool = false): BRepGProp_VinertGK {.
    cdecl, constructor, importcpp: "BRepGProp_VinertGK(@)".}
proc newBRepGProp_VinertGK*(theSurface: var BRepGProp_Face;
                           theDomain: var BRepGProp_Domain; thePlane: gp_Pln;
                           theLocation: gp_Pnt; theTolerance: cfloat = 0.001;
                           theCGFlag: bool = false; theIFlag: bool = false): BRepGProp_VinertGK {.
    cdecl, constructor, importcpp: "BRepGProp_VinertGK(@)".}
proc SetLocation*(this: var BRepGProp_VinertGK; theLocation: gp_Pnt) {.cdecl,
    importcpp: "SetLocation".}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.cdecl, importcpp: "Perform",
    .}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             thePoint: gp_Pnt; theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.cdecl, importcpp: "Perform",
    .}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theTolerance: cfloat = 0.001;
             theCGFlag: bool = false; theIFlag: bool = false): cfloat {.cdecl,
    importcpp: "Perform".}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; thePoint: gp_Pnt;
             theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.cdecl, importcpp: "Perform",
    .}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             thePlane: gp_Pln; theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.cdecl, importcpp: "Perform",
    .}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; thePlane: gp_Pln;
             theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.cdecl, importcpp: "Perform",
    .}
proc GetErrorReached*(this: BRepGProp_VinertGK): cfloat {.noSideEffect, cdecl,
    importcpp: "GetErrorReached".}
proc GetAbsolutError*(this: BRepGProp_VinertGK): cfloat {.noSideEffect, cdecl,
    importcpp: "GetAbsolutError".}