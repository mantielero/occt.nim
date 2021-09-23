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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../GProp/GProp_GProps,
  ../Standard/Standard_Boolean, ../Standard/Standard_Address

discard "forward decl of BRepGProp_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of BRepGProp_Domain"
discard "forward decl of gp_Pln"
type
  BRepGProp_VinertGK* {.importcpp: "BRepGProp_VinertGK",
                       header: "BRepGProp_VinertGK.hxx", bycopy.} = object of GProp_GProps ##
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


proc constructBRepGProp_VinertGK*(): BRepGProp_VinertGK {.constructor,
    importcpp: "BRepGProp_VinertGK(@)", header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGProp_VinertGK*(theSurface: var BRepGProp_Face;
                                 theLocation: gp_Pnt;
                                 theTolerance: Standard_Real = 0.001;
                                 theCGFlag: Standard_Boolean = Standard_False;
                                 theIFlag: Standard_Boolean = Standard_False): BRepGProp_VinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGProp_VinertGK*(theSurface: var BRepGProp_Face; thePoint: gp_Pnt;
                                 theLocation: gp_Pnt;
                                 theTolerance: Standard_Real = 0.001;
                                 theCGFlag: Standard_Boolean = Standard_False;
                                 theIFlag: Standard_Boolean = Standard_False): BRepGProp_VinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGProp_VinertGK*(theSurface: var BRepGProp_Face;
                                 theDomain: var BRepGProp_Domain;
                                 theLocation: gp_Pnt;
                                 theTolerance: Standard_Real = 0.001;
                                 theCGFlag: Standard_Boolean = Standard_False;
                                 theIFlag: Standard_Boolean = Standard_False): BRepGProp_VinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGProp_VinertGK*(theSurface: var BRepGProp_Face;
                                 theDomain: var BRepGProp_Domain; thePoint: gp_Pnt;
                                 theLocation: gp_Pnt;
                                 theTolerance: Standard_Real = 0.001;
                                 theCGFlag: Standard_Boolean = Standard_False;
                                 theIFlag: Standard_Boolean = Standard_False): BRepGProp_VinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGProp_VinertGK*(theSurface: var BRepGProp_Face; thePlane: gp_Pln;
                                 theLocation: gp_Pnt;
                                 theTolerance: Standard_Real = 0.001;
                                 theCGFlag: Standard_Boolean = Standard_False;
                                 theIFlag: Standard_Boolean = Standard_False): BRepGProp_VinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc constructBRepGProp_VinertGK*(theSurface: var BRepGProp_Face;
                                 theDomain: var BRepGProp_Domain; thePlane: gp_Pln;
                                 theLocation: gp_Pnt;
                                 theTolerance: Standard_Real = 0.001;
                                 theCGFlag: Standard_Boolean = Standard_False;
                                 theIFlag: Standard_Boolean = Standard_False): BRepGProp_VinertGK {.
    constructor, importcpp: "BRepGProp_VinertGK(@)",
    header: "BRepGProp_VinertGK.hxx".}
proc SetLocation*(this: var BRepGProp_VinertGK; theLocation: gp_Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_VinertGK.hxx".}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             theTolerance: Standard_Real = 0.001;
             theCGFlag: Standard_Boolean = Standard_False;
             theIFlag: Standard_Boolean = Standard_False): Standard_Real {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             thePoint: gp_Pnt; theTolerance: Standard_Real = 0.001;
             theCGFlag: Standard_Boolean = Standard_False;
             theIFlag: Standard_Boolean = Standard_False): Standard_Real {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; theTolerance: Standard_Real = 0.001;
             theCGFlag: Standard_Boolean = Standard_False;
             theIFlag: Standard_Boolean = Standard_False): Standard_Real {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; thePoint: gp_Pnt;
             theTolerance: Standard_Real = 0.001;
             theCGFlag: Standard_Boolean = Standard_False;
             theIFlag: Standard_Boolean = Standard_False): Standard_Real {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             thePlane: gp_Pln; theTolerance: Standard_Real = 0.001;
             theCGFlag: Standard_Boolean = Standard_False;
             theIFlag: Standard_Boolean = Standard_False): Standard_Real {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc Perform*(this: var BRepGProp_VinertGK; theSurface: var BRepGProp_Face;
             theDomain: var BRepGProp_Domain; thePlane: gp_Pln;
             theTolerance: Standard_Real = 0.001;
             theCGFlag: Standard_Boolean = Standard_False;
             theIFlag: Standard_Boolean = Standard_False): Standard_Real {.
    importcpp: "Perform", header: "BRepGProp_VinertGK.hxx".}
proc GetErrorReached*(this: BRepGProp_VinertGK): Standard_Real {.noSideEffect,
    importcpp: "GetErrorReached", header: "BRepGProp_VinertGK.hxx".}
proc GetAbsolutError*(this: BRepGProp_VinertGK): Standard_Real {.noSideEffect,
    importcpp: "GetAbsolutError", header: "BRepGProp_VinertGK.hxx".}