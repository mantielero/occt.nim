import tcolgeom_types

##  Created on: 1993-03-09
##  Created by: Philippe DAUTRY
##  Copyright (c) 1993-1999 Matra Datavision
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



proc newTColGeomHArray2OfSurface*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                                 theColUpp: cint): TColGeomHArray2OfSurface {.
    cdecl, constructor, importcpp: "TColGeom_HArray2OfSurface(@)", dynlib: tkg3d.}
proc newTColGeomHArray2OfSurface*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                                 theColUpp: cint; theValue: ValueType): TColGeomHArray2OfSurface {.
    cdecl, constructor, importcpp: "TColGeom_HArray2OfSurface(@)", dynlib: tkg3d.}
proc newTColGeomHArray2OfSurface*(theOther: TColGeomArray2OfSurface): TColGeomHArray2OfSurface {.
    cdecl, constructor, importcpp: "TColGeom_HArray2OfSurface(@)", dynlib: tkg3d.}
proc array2*(this: TColGeomHArray2OfSurface): TColGeomArray2OfSurface {.
    noSideEffect, cdecl, importcpp: "Array2", dynlib: tkg3d.}
proc changeArray2*(this: var TColGeomHArray2OfSurface): var TColGeomArray2OfSurface {.
    cdecl, importcpp: "ChangeArray2", dynlib: tkg3d.}
