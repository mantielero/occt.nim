##  Created on: 1995-02-24
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  ContapSurfProps* {.importcpp: "Contap_SurfProps", header: "Contap_SurfProps.hxx",
                    bycopy.} = object ## ! Computes  the point <P>, and  normal vector <N> on
                                   ## ! <S> at parameters U,V.


proc normale*(s: Handle[Adaptor3dHSurface]; u: StandardReal; v: StandardReal;
             p: var GpPnt; n: var GpVec) {.importcpp: "Contap_SurfProps::Normale(@)",
                                     header: "Contap_SurfProps.hxx".}
proc derivAndNorm*(s: Handle[Adaptor3dHSurface]; u: StandardReal; v: StandardReal;
                  p: var GpPnt; d1u: var GpVec; d1v: var GpVec; n: var GpVec) {.
    importcpp: "Contap_SurfProps::DerivAndNorm(@)", header: "Contap_SurfProps.hxx".}
proc normAndDn*(s: Handle[Adaptor3dHSurface]; u: StandardReal; v: StandardReal;
               p: var GpPnt; n: var GpVec; dnu: var GpVec; dnv: var GpVec) {.
    importcpp: "Contap_SurfProps::NormAndDn(@)", header: "Contap_SurfProps.hxx".}

