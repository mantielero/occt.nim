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
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace; theLocation: GpPnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = standardFalse;
                                theIFlag: StandardBoolean = standardFalse): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace; thePoint: GpPnt;
                                theLocation: GpPnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = standardFalse;
                                theIFlag: StandardBoolean = standardFalse): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace;
                                theDomain: var BRepGPropDomain; theLocation: GpPnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = standardFalse;
                                theIFlag: StandardBoolean = standardFalse): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace;
                                theDomain: var BRepGPropDomain; thePoint: GpPnt;
                                theLocation: GpPnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = standardFalse;
                                theIFlag: StandardBoolean = standardFalse): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace; thePlane: GpPln;
                                theLocation: GpPnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = standardFalse;
                                theIFlag: StandardBoolean = standardFalse): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGPropVinertGK*(theSurface: var BRepGPropFace;
                                theDomain: var BRepGPropDomain; thePlane: GpPln;
                                theLocation: GpPnt;
                                theTolerance: StandardReal = 0.001;
                                theCGFlag: StandardBoolean = standardFalse;
                                theIFlag: StandardBoolean = standardFalse): BRepGPropVinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc setLocation*(this: var BRepGPropVinertGK; theLocation: GpPnt) {.
    importcpp: "SetLocation", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theTolerance: StandardReal = 0.001;
             theCGFlag: StandardBoolean = standardFalse;
             theIFlag: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             thePoint: GpPnt; theTolerance: StandardReal = 0.001;
             theCGFlag: StandardBoolean = standardFalse;
             theIFlag: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; theTolerance: StandardReal = 0.001;
             theCGFlag: StandardBoolean = standardFalse;
             theIFlag: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; thePoint: GpPnt;
             theTolerance: StandardReal = 0.001;
             theCGFlag: StandardBoolean = standardFalse;
             theIFlag: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             thePlane: GpPln; theTolerance: StandardReal = 0.001;
             theCGFlag: StandardBoolean = standardFalse;
             theIFlag: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc perform*(this: var BRepGPropVinertGK; theSurface: var BRepGPropFace;
             theDomain: var BRepGPropDomain; thePlane: GpPln;
             theTolerance: StandardReal = 0.001;
             theCGFlag: StandardBoolean = standardFalse;
             theIFlag: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc getErrorReached*(this: BRepGPropVinertGK): StandardReal {.noSideEffect,
    importcpp: "GetErrorReached", header: "BRepGProp_VinertGK.hxx".}
proc getAbsolutError*(this: BRepGPropVinertGK): StandardReal {.noSideEffect,
    importcpp: "GetAbsolutError", header: "BRepGProp_VinertGK.hxx".}

