##  Created on: 1992-08-24
##  Created by: Jacques GOUSSARD
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntSurf_Transition"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Vec"
type
  IntSurf* {.importcpp: "IntSurf", header: "IntSurf.hxx", bycopy.} = object ## ! Computes the transition of the intersection point
                                                                    ## ! between the two lines.
                                                                    ## ! TgFirst is the tangent vector of the first line.
                                                                    ## ! TgSecond is the tangent vector of the second line.
                                                                    ## ! Normal is the direction used to orientate the cross
                                                                    ## ! product
                                                                    ## TgFirst^TgSecond.
                                                                    ## ! TFirst is the transition of the point on the first line.
                                                                    ## ! TSecond is the transition of the point on the second line.


proc makeTransition*(tgFirst: Vec; tgSecond: Vec; normal: Dir;
                    tFirst: var IntSurfTransition; tSecond: var IntSurfTransition) {.
    cdecl, importcpp: "IntSurf::MakeTransition(@)", dynlib: tkgeomalgo.}
proc setPeriod*(theFirstSurf: Handle[Adaptor3dHSurface];
               theSecondSurf: Handle[Adaptor3dHSurface];
               theArrOfPeriod: array[4, cfloat]) {.cdecl,
    importcpp: "IntSurf::SetPeriod(@)", dynlib: tkgeomalgo.}