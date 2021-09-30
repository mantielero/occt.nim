##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of Adaptor3d_HSurface"
type
  IntPolyhTools* {.importcpp: "IntPolyh_Tools", header: "IntPolyh_Tools.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Checks
                                                                                        ## if
                                                                                        ## the
                                                                                        ## surface
                                                                                        ## can
                                                                                        ## be
                                                                                        ## enlarged
                                                                                        ## in
                                                                                        ## U
                                                                                        ## or
                                                                                        ## V
                                                                                        ## direction.


proc isEnlargePossible*(theSurf: Handle[Adaptor3dHSurface]; theUEnlarge: var bool;
                       theVEnlarge: var bool) {.
    importcpp: "IntPolyh_Tools::IsEnlargePossible(@)",
    header: "IntPolyh_Tools.hxx".}
proc makeSampling*(theSurf: Handle[Adaptor3dHSurface]; theNbSU: cint; theNbSV: cint;
                  theEnlargeZone: bool; theUPars: var TColStdArray1OfReal;
                  theVPars: var TColStdArray1OfReal) {.
    importcpp: "IntPolyh_Tools::MakeSampling(@)", header: "IntPolyh_Tools.hxx".}
proc computeDeflection*(theSurf: Handle[Adaptor3dHSurface];
                       theUPars: TColStdArray1OfReal;
                       theVPars: TColStdArray1OfReal): cfloat {.
    importcpp: "IntPolyh_Tools::ComputeDeflection(@)",
    header: "IntPolyh_Tools.hxx".}
proc fillArrayOfPointNormal*(theSurf: Handle[Adaptor3dHSurface];
                            theUPars: TColStdArray1OfReal;
                            theVPars: TColStdArray1OfReal;
                            thePoints: var IntPolyhArrayOfPointNormal) {.
    importcpp: "IntPolyh_Tools::FillArrayOfPointNormal(@)",
    header: "IntPolyh_Tools.hxx".}

























