import gc_types
import ../gp/gp_types
import ../standard/standard_types
import ../geom/geom_types





##  Created on: 1992-09-28
##  Created by: Remi GILET
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



proc mirror*(point: PntObj): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc mirror*(axis: Ax1Obj): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc mirror*(line: LinObj): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc mirror*(point: PntObj; direc: DirObj): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc mirror*(plane: PlnObj): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc mirror*(plane: Ax2Obj): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc value*(this: MakeMirror): Handle[GeomTransformation] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakeMirror.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeMirror): Handle[GeomTransformation] {.
    noSideEffect, cdecl, importcpp: "(Handle_Geom_TrimmedCurve)(#)",
    header: "GC_MakeMirror.hxx".}


