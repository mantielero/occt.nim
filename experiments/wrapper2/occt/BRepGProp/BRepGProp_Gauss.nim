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
type
  BRepGPropGauss* {.importcpp: "BRepGProp_Gauss", header: "BRepGProp_Gauss.hxx",
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

  BRepGPropGaussBRepGPropGaussType* {.size: sizeof(cint), importcpp: "BRepGProp_Gauss::BRepGProp_GaussType",
                                     header: "BRepGProp_Gauss.hxx".} = enum
    Vinert = 0, Sinert


proc constructBRepGPropGauss*(theType: BRepGPropGaussBRepGPropGaussType): BRepGPropGauss {.
    constructor, importcpp: "BRepGProp_Gauss(@)", header: "BRepGProp_Gauss.hxx".}
proc compute*(this: var BRepGPropGauss; theSurface: BRepGPropFace; theLocation: Pnt;
             theCoeff: ptr cfloat; theIsByPoint: bool; theOutMass: var cfloat;
             theOutGravityCenter: var Pnt; theOutInertia: var Mat) {.
    importcpp: "Compute", header: "BRepGProp_Gauss.hxx".}
proc compute*(this: var BRepGPropGauss; theSurface: BRepGPropFace; theLocation: Pnt;
             theOutMass: var cfloat; theOutGravityCenter: var Pnt;
             theOutInertia: var Mat) {.importcpp: "Compute",
                                    header: "BRepGProp_Gauss.hxx".}
proc compute*(this: var BRepGPropGauss; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; theLocation: Pnt; theCoeff: ptr cfloat;
             theIsByPoint: bool; theOutMass: var cfloat;
             theOutGravityCenter: var Pnt; theOutInertia: var Mat) {.
    importcpp: "Compute", header: "BRepGProp_Gauss.hxx".}
proc compute*(this: var BRepGPropGauss; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; theLocation: Pnt;
             theOutMass: var cfloat; theOutGravityCenter: var Pnt;
             theOutInertia: var Mat) {.importcpp: "Compute",
                                    header: "BRepGProp_Gauss.hxx".}
proc compute*(this: var BRepGPropGauss; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; theLocation: Pnt; theEps: cfloat;
             theCoeff: ptr cfloat; theByPoint: bool; theOutMass: var cfloat;
             theOutGravityCenter: var Pnt; theOutInertia: var Mat): cfloat {.
    importcpp: "Compute", header: "BRepGProp_Gauss.hxx".}
proc compute*(this: var BRepGPropGauss; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; theLocation: Pnt; theEps: cfloat;
             theOutMass: var cfloat; theOutGravityCenter: var Pnt;
             theOutInertia: var Mat): cfloat {.importcpp: "Compute",
    header: "BRepGProp_Gauss.hxx".}

























