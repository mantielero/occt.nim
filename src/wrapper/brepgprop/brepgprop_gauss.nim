import brepgprop_types
import ../gp/gp_types
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of math_Vector"

proc newBRepGProp_Gauss*(theType: BRepGProp_GaussBRepGProp_GaussType): BRepGProp_Gauss {.
    cdecl, constructor, importcpp: "BRepGProp_Gauss(@)".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: BRepGProp_Face;
             theLocation: gp_Pnt; theCoeff: ptr cfloat; theIsByPoint: bool;
             theOutMass: var cfloat; theOutGravityCenter: var gp_Pnt;
             theOutInertia: var gp_Mat) {.cdecl, importcpp: "Compute".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: BRepGProp_Face;
             theLocation: gp_Pnt; theOutMass: var cfloat;
             theOutGravityCenter: var gp_Pnt; theOutInertia: var gp_Mat) {.cdecl,
    importcpp: "Compute".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theLocation: gp_Pnt;
             theCoeff: ptr cfloat; theIsByPoint: bool; theOutMass: var cfloat;
             theOutGravityCenter: var gp_Pnt; theOutInertia: var gp_Mat) {.cdecl,
    importcpp: "Compute".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theLocation: gp_Pnt;
             theOutMass: var cfloat; theOutGravityCenter: var gp_Pnt;
             theOutInertia: var gp_Mat) {.cdecl, importcpp: "Compute".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theLocation: gp_Pnt; theEps: cfloat;
             theCoeff: ptr cfloat; theByPoint: bool; theOutMass: var cfloat;
             theOutGravityCenter: var gp_Pnt; theOutInertia: var gp_Mat): cfloat {.
    cdecl, importcpp: "Compute".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theLocation: gp_Pnt; theEps: cfloat;
             theOutMass: var cfloat; theOutGravityCenter: var gp_Pnt;
             theOutInertia: var gp_Mat): cfloat {.cdecl, importcpp: "Compute",
    .}