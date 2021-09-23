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

import
  ../NCollection/NCollection_Handle, ../NCollection/NCollection_Array1

discard "forward decl of math_Vector"
type
  BRepGProp_Gauss* {.importcpp: "BRepGProp_Gauss", header: "BRepGProp_Gauss.hxx",
                    bycopy.} = object ## ! Auxiliary structure for storing of inertial moments.
                                   ## ! @name public API
                                   ## ! Describes types of geometric objects.
                                   ## ! - Vinert is 3D closed region of space delimited with:
                                   ## ! -- Surface;
                                   ## ! -- Point and Surface;
                                   ## ! -- Plane and Surface.
                                   ## ! - Sinert is face in 3D space.
                                   ## ! @name private methods
                                   ## ! @name private fields
    ## !< Type of geometric object
    ## !< Pointer on the add function
    ## !< Pointer on the mult function

  BRepGProp_GaussBRepGProp_GaussType* {.size: sizeof(cint), importcpp: "BRepGProp_Gauss::BRepGProp_GaussType",
                                       header: "BRepGProp_Gauss.hxx".} = enum
    Vinert = 0, Sinert


proc constructBRepGProp_Gauss*(theType: BRepGProp_GaussBRepGProp_GaussType): BRepGProp_Gauss {.
    constructor, importcpp: "BRepGProp_Gauss(@)", header: "BRepGProp_Gauss.hxx".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: BRepGProp_Face;
             theLocation: gp_Pnt; theCoeff: ptr Standard_Real;
             theIsByPoint: Standard_Boolean; theOutMass: var Standard_Real;
             theOutGravityCenter: var gp_Pnt; theOutInertia: var gp_Mat) {.
    importcpp: "Compute", header: "BRepGProp_Gauss.hxx".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: BRepGProp_Face;
             theLocation: gp_Pnt; theOutMass: var Standard_Real;
             theOutGravityCenter: var gp_Pnt; theOutInertia: var gp_Mat) {.
    importcpp: "Compute", header: "BRepGProp_Gauss.hxx".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theLocation: gp_Pnt;
             theCoeff: ptr Standard_Real; theIsByPoint: Standard_Boolean;
             theOutMass: var Standard_Real; theOutGravityCenter: var gp_Pnt;
             theOutInertia: var gp_Mat) {.importcpp: "Compute",
                                       header: "BRepGProp_Gauss.hxx".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theLocation: gp_Pnt;
             theOutMass: var Standard_Real; theOutGravityCenter: var gp_Pnt;
             theOutInertia: var gp_Mat) {.importcpp: "Compute",
                                       header: "BRepGProp_Gauss.hxx".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theLocation: gp_Pnt;
             theEps: Standard_Real; theCoeff: ptr Standard_Real;
             theByPoint: Standard_Boolean; theOutMass: var Standard_Real;
             theOutGravityCenter: var gp_Pnt; theOutInertia: var gp_Mat): Standard_Real {.
    importcpp: "Compute", header: "BRepGProp_Gauss.hxx".}
proc Compute*(this: var BRepGProp_Gauss; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theLocation: gp_Pnt;
             theEps: Standard_Real; theOutMass: var Standard_Real;
             theOutGravityCenter: var gp_Pnt; theOutInertia: var gp_Mat): Standard_Real {.
    importcpp: "Compute", header: "BRepGProp_Gauss.hxx".}