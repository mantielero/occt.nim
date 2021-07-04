##  Created on: 1991-10-04
##  Created by: Remi GILET
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt2d, GccInt_Bisec,
  GccInt_IType

discard "forward decl of gp_Pnt2d"
discard "forward decl of GccInt_BPoint"
discard "forward decl of GccInt_BPoint"
type
  Handle_GccInt_BPoint* = handle[GccInt_BPoint]

## ! Describes a point as a bisecting object between two 2D geometric objects.

type
  GccInt_BPoint* {.importcpp: "GccInt_BPoint", header: "GccInt_BPoint.hxx", bycopy.} = object of GccInt_Bisec ##
                                                                                                    ## !
                                                                                                    ## Constructs
                                                                                                    ## a
                                                                                                    ## bisecting
                                                                                                    ## object
                                                                                                    ## whose
                                                                                                    ## geometry
                                                                                                    ## is
                                                                                                    ## the
                                                                                                    ## 2D
                                                                                                    ## point
                                                                                                    ## Point.


proc constructGccInt_BPoint*(Point: gp_Pnt2d): GccInt_BPoint {.constructor,
    importcpp: "GccInt_BPoint(@)", header: "GccInt_BPoint.hxx".}
proc Point*(this: GccInt_BPoint): gp_Pnt2d {.noSideEffect, importcpp: "Point",
    header: "GccInt_BPoint.hxx".}
proc ArcType*(this: GccInt_BPoint): GccInt_IType {.noSideEffect,
    importcpp: "ArcType", header: "GccInt_BPoint.hxx".}
type
  GccInt_BPointbase_type* = GccInt_Bisec

proc get_type_name*(): cstring {.importcpp: "GccInt_BPoint::get_type_name(@)",
                              header: "GccInt_BPoint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GccInt_BPoint::get_type_descriptor(@)",
    header: "GccInt_BPoint.hxx".}
proc DynamicType*(this: GccInt_BPoint): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_BPoint.hxx".}