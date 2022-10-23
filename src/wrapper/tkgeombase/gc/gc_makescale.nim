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

discard "forward decl of Geom_Transformation"
discard "forward decl of gp_Pnt"
type
  MakeScale* {.importcpp: "GC_MakeScale", header: "GC_MakeScale.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Constructs
                                                                                ## a
                                                                                ## scaling
                                                                                ## transformation
                                                                                ## with
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## Point
                                                                                ## as
                                                                                ## the
                                                                                ## center
                                                                                ## of
                                                                                ## the
                                                                                ## transformation,
                                                                                ## and
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## Scale
                                                                                ## as
                                                                                ## the
                                                                                ## scale
                                                                                ## factor.


proc scale*(point: PntObj; scale: cfloat): MakeScale {.cdecl, constructor,
    importcpp: "GC_MakeScale(@)", header: "GC_MakeScale.hxx".}
proc value*(this: MakeScale): Handle[GeomTransformation] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakeScale.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeScale): Handle[GeomTransformation] {.
    noSideEffect, cdecl, importcpp: "(Handle_Geom_TrimmedCurve)(#)",
    header: "GC_MakeScale.hxx".}