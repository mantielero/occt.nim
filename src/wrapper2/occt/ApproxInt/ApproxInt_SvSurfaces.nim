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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of IntSurf_PntOn2S"
type
  ApproxInt_SvSurfaces* {.importcpp: "ApproxInt_SvSurfaces",
                         header: "ApproxInt_SvSurfaces.hxx", bycopy.} = object ## !
                                                                          ## returns True if
                                                                          ## Tg,Tguv1 Tguv2 can be
                                                                          ## computed.


proc Compute*(this: var ApproxInt_SvSurfaces; u1: var Standard_Real;
             v1: var Standard_Real; u2: var Standard_Real; v2: var Standard_Real;
             Pt: var gp_Pnt; Tg: var gp_Vec; Tguv1: var gp_Vec2d; Tguv2: var gp_Vec2d): Standard_Boolean {.
    importcpp: "Compute", header: "ApproxInt_SvSurfaces.hxx".}
proc Pnt*(this: var ApproxInt_SvSurfaces; u1: Standard_Real; v1: Standard_Real;
         u2: Standard_Real; v2: Standard_Real; P: var gp_Pnt) {.importcpp: "Pnt",
    header: "ApproxInt_SvSurfaces.hxx".}
proc SeekPoint*(this: var ApproxInt_SvSurfaces; u1: Standard_Real; v1: Standard_Real;
               u2: Standard_Real; v2: Standard_Real; Point: var IntSurf_PntOn2S): Standard_Boolean {.
    importcpp: "SeekPoint", header: "ApproxInt_SvSurfaces.hxx".}
proc Tangency*(this: var ApproxInt_SvSurfaces; u1: Standard_Real; v1: Standard_Real;
              u2: Standard_Real; v2: Standard_Real; Tg: var gp_Vec): Standard_Boolean {.
    importcpp: "Tangency", header: "ApproxInt_SvSurfaces.hxx".}
proc TangencyOnSurf1*(this: var ApproxInt_SvSurfaces; u1: Standard_Real;
                     v1: Standard_Real; u2: Standard_Real; v2: Standard_Real;
                     Tg: var gp_Vec2d): Standard_Boolean {.
    importcpp: "TangencyOnSurf1", header: "ApproxInt_SvSurfaces.hxx".}
proc TangencyOnSurf2*(this: var ApproxInt_SvSurfaces; u1: Standard_Real;
                     v1: Standard_Real; u2: Standard_Real; v2: Standard_Real;
                     Tg: var gp_Vec2d): Standard_Boolean {.
    importcpp: "TangencyOnSurf2", header: "ApproxInt_SvSurfaces.hxx".}
proc destroyApproxInt_SvSurfaces*(this: var ApproxInt_SvSurfaces) {.
    importcpp: "#.~ApproxInt_SvSurfaces()", header: "ApproxInt_SvSurfaces.hxx".}