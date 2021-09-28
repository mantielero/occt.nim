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
discard "forward decl of gp_Pnt"
discard "forward decl of BRepGProp_Domain"
discard "forward decl of gp_Pln"
type
  BRepGPropVinertGK* {.importcpp: "BRepGProp_VinertGK",
                      header: "BRepGProp_VinertGK.hxx", bycopy.} = object of GPropGProps ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Main
                                                                                  ## method
                                                                                  ## for
                                                                                  ## computation
                                                                                  ## of
                                                                                  ## the
                                                                                  ## global
                                                                                  ## properties
                                                                                  ## that
                                                                                  ##
                                                                                  ## !
                                                                                  ## is
                                                                                  ## invoked
                                                                                  ## by
                                                                                  ## each
                                                                                  ## Perform
                                                                                  ## method.


proc constructBRepGPropVinertGK*(): BRepGPropVinertGK {.constructor,
    importcpp: "BRepGProp_VinertGK(@)", header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace; theLocation: Pnt;
                                theTolerance: cfloat = 0.001;
                                theCGFlag: bool = false; theIFlag: bool = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace; thePoint: Pnt;
                                theLocation: Pnt; theTolerance: cfloat = 0.001;
                                theCGFlag: bool = false; theIFlag: bool = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace;
                                theDomain: var BRepGPropDomain; theLocation: Pnt;
                                theTolerance: cfloat = 0.001;
                                theCGFlag: bool = false; theIFlag: bool = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace;
                                theDomain: var BRepGPropDomain; thePoint: Pnt;
                                theLocation: Pnt; theTolerance: cfloat = 0.001;
                                theCGFlag: bool = false; theIFlag: bool = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace; thePlane: Pln;
                                theLocation: Pnt; theTolerance: cfloat = 0.001;
                                theCGFlag: bool = false; theIFlag: bool = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace;
                                theDomain: var BRepGPropDomain; thePlane: Pln;
                                theLocation: Pnt; theTolerance: cfloat = 0.001;
                                theCGFlag: bool = false; theIFlag: bool = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc setLocation*(this: var BRepGPropVinertGK; theLocation: Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.importcpp: "Perform",
    header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             thePoint: Pnt; theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.importcpp: "Perform",
    header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; theTolerance: cfloat = 0.001;
             theCGFlag: bool = false; theIFlag: bool = false): cfloat {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; thePoint: Pnt;
             theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.importcpp: "Perform",
    header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             thePlane: Pln; theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.importcpp: "Perform",
    header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; thePlane: Pln;
             theTolerance: cfloat = 0.001; theCGFlag: bool = false;
             theIFlag: bool = false): cfloat {.importcpp: "Perform",
    header: "BRepGProp_VinertGK.hxx".}
proc getErrorReached*(this: BRepGPropVinertGK): cfloat {.noSideEffect,
    importcpp: "GetErrorReached", header: "BRepGProp_VinertGK.hxx".}
proc getAbsolutError*(this: BRepGPropVinertGK): cfloat {.noSideEffect,
    importcpp: "GetAbsolutError", header: "BRepGProp_VinertGK.hxx".}

























