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


proc `new`*(this: var BRepGPropVinertGK; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_VinertGK::operator new",
    header: "BRepGProp_VinertGK.hxx".}
proc `delete`*(this: var BRepGPropVinertGK; theAddress: pointer) {.
    importcpp: "BRepGProp_VinertGK::operator delete",
    header: "BRepGProp_VinertGK.hxx".}
proc `new[]`*(this: var BRepGPropVinertGK; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_VinertGK::operator new[]",
    header: "BRepGProp_VinertGK.hxx".}
proc `delete[]`*(this: var BRepGPropVinertGK; theAddress: pointer) {.
    importcpp: "BRepGProp_VinertGK::operator delete[]",
    header: "BRepGProp_VinertGK.hxx".}
proc `new`*(this: var BRepGPropVinertGK; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepGProp_VinertGK::operator new",
    header: "BRepGProp_VinertGK.hxx".}
proc `delete`*(this: var BRepGPropVinertGK; a2: pointer; a3: pointer) {.
    importcpp: "BRepGProp_VinertGK::operator delete",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(): BRepGPropVinertGK {.constructor,
    importcpp: "BRepGProp_VinertGK(@)", header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace; theLocation: Pnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = false;
                                theIFlag: StandardBoolean = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace; thePoint: Pnt;
                                theLocation: Pnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = false;
                                theIFlag: StandardBoolean = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace;
                                theDomain: var BRepGPropDomain; theLocation: Pnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = false;
                                theIFlag: StandardBoolean = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace;
                                theDomain: var BRepGPropDomain; thePoint: Pnt;
                                theLocation: Pnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = false;
                                theIFlag: StandardBoolean = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace; thePlane: Pln;
                                theLocation: Pnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = false;
                                theIFlag: StandardBoolean = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace;
                                theDomain: var BRepGPropDomain; thePlane: Pln;
                                theLocation: Pnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = false;
                                theIFlag: StandardBoolean = false): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc setLocation*(this: var BRepGPropVinertGK; theLocation: Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theTolerance: StandardReal = 0.001; theCGFlag: StandardBoolean = false;
             theIFlag: StandardBoolean = false): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             thePoint: Pnt; theTolerance: StandardReal = 0.001;
             theCGFlag: StandardBoolean = false; theIFlag: StandardBoolean = false): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; theTolerance: StandardReal = 0.001;
             theCGFlag: StandardBoolean = false; theIFlag: StandardBoolean = false): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; thePoint: Pnt;
             theTolerance: StandardReal = 0.001; theCGFlag: StandardBoolean = false;
             theIFlag: StandardBoolean = false): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             thePlane: Pln; theTolerance: StandardReal = 0.001;
             theCGFlag: StandardBoolean = false; theIFlag: StandardBoolean = false): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; thePlane: Pln;
             theTolerance: StandardReal = 0.001; theCGFlag: StandardBoolean = false;
             theIFlag: StandardBoolean = false): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_VinertGK.hxx".}
proc getErrorReached*(this: BRepGPropVinertGK): StandardReal {.noSideEffect,
    importcpp: "GetErrorReached", header: "BRepGProp_VinertGK.hxx".}
proc getAbsolutError*(this: BRepGPropVinertGK): StandardReal {.noSideEffect,
    importcpp: "GetAbsolutError", header: "BRepGProp_VinertGK.hxx".}