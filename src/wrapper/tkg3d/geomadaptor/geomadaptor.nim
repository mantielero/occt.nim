import ../../tkernel/standard/standard_types
import ../tkg3d/adaptor3d/adaptor3d_types
import ../tkg3d/geom/geom_types



##  Created on: 1992-10-08
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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



proc makeCurve*(c: Adaptor3dCurve): Handle[GeomCurve] {.cdecl,
    importcpp: "GeomAdaptor::MakeCurve(@)", header: "GeomAdaptor.hxx".}
proc makeSurface*(theS: Adaptor3dSurface; theTrimFlag: bool = true): Handle[GeomSurface] {.
    cdecl, importcpp: "GeomAdaptor::MakeSurface(@)", header: "GeomAdaptor.hxx".}

