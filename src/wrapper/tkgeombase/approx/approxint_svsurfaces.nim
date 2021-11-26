##  Created on: 1993-03-17
##  Created by: Laurent BUCHARD
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of IntSurf_PntOn2S"
type
  ApproxIntSvSurfaces* {.importcpp: "ApproxInt_SvSurfaces",
                        header: "ApproxInt_SvSurfaces.hxx", bycopy.} = object ## ! returns True if
                                                                         ## Tg,Tguv1 Tguv2 can be
                                                                         ## computed.


proc compute*(this: var ApproxIntSvSurfaces; u1: var cfloat; v1: var cfloat;
             u2: var cfloat; v2: var cfloat; pt: var Pnt; tg: var Vec; tguv1: var Vec2d;
             tguv2: var Vec2d): bool {.cdecl, importcpp: "Compute", dynlib: tkgeombase.}
proc pnt*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
         p: var Pnt) {.cdecl, importcpp: "Pnt", dynlib: tkgeombase.}
proc seekPoint*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat;
               v2: cfloat; point: var IntSurfPntOn2S): bool {.cdecl,
    importcpp: "SeekPoint", dynlib: tkgeombase.}
proc tangency*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat;
              v2: cfloat; tg: var Vec): bool {.cdecl, importcpp: "Tangency",
    dynlib: tkgeombase.}
proc tangencyOnSurf1*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat;
                     v2: cfloat; tg: var Vec2d): bool {.cdecl,
    importcpp: "TangencyOnSurf1", dynlib: tkgeombase.}
proc tangencyOnSurf2*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat;
                     v2: cfloat; tg: var Vec2d): bool {.cdecl,
    importcpp: "TangencyOnSurf2", dynlib: tkgeombase.}
proc destroyApproxIntSvSurfaces*(this: var ApproxIntSvSurfaces) {.cdecl,
    importcpp: "#.~ApproxInt_SvSurfaces()", dynlib: tkgeombase.}