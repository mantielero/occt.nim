import tcolgeom_types
import ../tcolstd/tcolstd_types



when defined(windows):
  const tkg3d* = "TKG3d.dll"
elif defined(macosx):
  const tkg3d* = "libTKG3d.dylib"
else:
  const tkg3d* = "libTKG3d.so" 

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



proc newTColGeomHSequenceOfCurve*(): TColGeomHSequenceOfCurve {.cdecl, constructor,
    importcpp: "TColGeom_HSequenceOfCurve(@)", dynlib: tkg3d.}
proc newTColGeomHSequenceOfCurve*(theOther: TColGeomSequenceOfCurve): TColGeomHSequenceOfCurve {.
    cdecl, constructor, importcpp: "TColGeom_HSequenceOfCurve(@)", dynlib: tkg3d.}
proc sequence*(this: TColGeomHSequenceOfCurve): TColGeomSequenceOfCurve {.
    noSideEffect, cdecl, importcpp: "Sequence", dynlib: tkg3d.}
proc append*(this: var TColGeomHSequenceOfCurve; theItem: ValueType) {.cdecl,
    importcpp: "Append", dynlib: tkg3d.}
proc append*(this: var TColGeomHSequenceOfCurve;
            theSequence: var TColGeomSequenceOfCurve) {.cdecl, importcpp: "Append",
    dynlib: tkg3d.}
proc changeSequence*(this: var TColGeomHSequenceOfCurve): var TColGeomSequenceOfCurve {.
    cdecl, importcpp: "ChangeSequence", dynlib: tkg3d.}



