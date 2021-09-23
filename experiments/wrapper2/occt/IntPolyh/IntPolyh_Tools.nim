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

import
  ../TColStd/TColStd_Array1OfReal, IntPolyh_ArrayOfPointNormal

discard "forward decl of Adaptor3d_HSurface"
type
  IntPolyh_Tools* {.importcpp: "IntPolyh_Tools", header: "IntPolyh_Tools.hxx", bycopy.} = object ##
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


proc IsEnlargePossible*(theSurf: handle[Adaptor3d_HSurface];
                       theUEnlarge: var Standard_Boolean;
                       theVEnlarge: var Standard_Boolean) {.
    importcpp: "IntPolyh_Tools::IsEnlargePossible(@)",
    header: "IntPolyh_Tools.hxx".}
proc MakeSampling*(theSurf: handle[Adaptor3d_HSurface]; theNbSU: Standard_Integer;
                  theNbSV: Standard_Integer; theEnlargeZone: Standard_Boolean;
                  theUPars: var TColStd_Array1OfReal;
                  theVPars: var TColStd_Array1OfReal) {.
    importcpp: "IntPolyh_Tools::MakeSampling(@)", header: "IntPolyh_Tools.hxx".}
proc ComputeDeflection*(theSurf: handle[Adaptor3d_HSurface];
                       theUPars: TColStd_Array1OfReal;
                       theVPars: TColStd_Array1OfReal): Standard_Real {.
    importcpp: "IntPolyh_Tools::ComputeDeflection(@)",
    header: "IntPolyh_Tools.hxx".}
proc FillArrayOfPointNormal*(theSurf: handle[Adaptor3d_HSurface];
                            theUPars: TColStd_Array1OfReal;
                            theVPars: TColStd_Array1OfReal;
                            thePoints: var IntPolyh_ArrayOfPointNormal) {.
    importcpp: "IntPolyh_Tools::FillArrayOfPointNormal(@)",
    header: "IntPolyh_Tools.hxx".}