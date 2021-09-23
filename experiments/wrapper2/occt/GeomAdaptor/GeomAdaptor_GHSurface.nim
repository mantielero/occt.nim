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

## !!!Ignored construct:  # _GeomAdaptor_GHSurface_HeaderFile [NewLine] # _GeomAdaptor_GHSurface_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # GeomAdaptor_Surface.hxx [NewLine] # ../Adaptor3d/Adaptor3d_HSurface.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of GeomAdaptor_GHSurface"
discard "forward decl of GeomAdaptor_GHSurface"
type
  Handle_GeomAdaptor_GHSurfaceGeomAdaptor_GHSurface* = handle[
      GeomAdaptor_GHSurface]
  GeomAdaptor_GHSurface* {.importcpp: "GeomAdaptor_GHSurface",
                          header: "GeomAdaptor_GHSurface.hxx", bycopy.} = object of Adaptor3d_HSurface ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## GenHSurface.


proc constructGeomAdaptor_GHSurface*(): GeomAdaptor_GHSurface {.constructor,
    importcpp: "GeomAdaptor_GHSurface(@)", header: "GeomAdaptor_GHSurface.hxx".}
proc constructGeomAdaptor_GHSurface*(S: GeomAdaptor_Surface): GeomAdaptor_GHSurface {.
    constructor, importcpp: "GeomAdaptor_GHSurface(@)",
    header: "GeomAdaptor_GHSurface.hxx".}
proc Set*(this: var GeomAdaptor_GHSurface; S: GeomAdaptor_Surface) {.importcpp: "Set",
    header: "GeomAdaptor_GHSurface.hxx".}
proc Surface*(this: GeomAdaptor_GHSurface): Adaptor3d_Surface {.noSideEffect,
    importcpp: "Surface", header: "GeomAdaptor_GHSurface.hxx".}
proc ChangeSurface*(this: var GeomAdaptor_GHSurface): var GeomAdaptor_Surface {.
    importcpp: "ChangeSurface", header: "GeomAdaptor_GHSurface.hxx".}
type
  GeomAdaptor_GHSurfacebase_type* = Adaptor3d_HSurface

proc get_type_name*(): cstring {.importcpp: "GeomAdaptor_GHSurface::get_type_name(@)",
                              header: "GeomAdaptor_GHSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomAdaptor_GHSurface::get_type_descriptor(@)",
    header: "GeomAdaptor_GHSurface.hxx".}
proc DynamicType*(this: GeomAdaptor_GHSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomAdaptor_GHSurface.hxx".}
## !!!Ignored construct:  # TheSurface GeomAdaptor_Surface [NewLine] # TheSurface_hxx < GeomAdaptor_Surface . hxx > [NewLine] # Adaptor3d_GenHSurface GeomAdaptor_GHSurface [NewLine] # Adaptor3d_GenHSurface_hxx < GeomAdaptor_GHSurface . hxx > [NewLine] # Handle_Adaptor3d_GenHSurface opencascade :: handle < GeomAdaptor_GHSurface > [end of template] [NewLine] # < Adaptor3d_GenHSurface . lxx > [NewLine] # TheSurface [NewLine] # TheSurface_hxx [NewLine] # Adaptor3d_GenHSurface [NewLine] # Adaptor3d_GenHSurface_hxx [NewLine] # Handle_Adaptor3d_GenHSurface [NewLine] #  _GeomAdaptor_GHSurface_HeaderFile [NewLine]
## Error: did not expect <!!!
