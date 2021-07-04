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

## !!!Ignored construct:  # _GeomAdaptor_HSurfaceOfLinearExtrusion_HeaderFile [NewLine] # _GeomAdaptor_HSurfaceOfLinearExtrusion_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # GeomAdaptor_SurfaceOfLinearExtrusion.hxx [NewLine] # ../Adaptor3d/Adaptor3d_HSurface.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_SurfaceOfLinearExtrusion"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of GeomAdaptor_HSurfaceOfLinearExtrusion"
discard "forward decl of GeomAdaptor_HSurfaceOfLinearExtrusion"
type
  Handle_GeomAdaptor_HSurfaceOfLinearExtrusionGeomAdaptor_HSurfaceOfLinearExtrusion* = handle[
      GeomAdaptor_HSurfaceOfLinearExtrusion]
  GeomAdaptor_HSurfaceOfLinearExtrusion* {.
      importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion",
      header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx", bycopy.} = object of Adaptor3d_HSurface ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## GenHSurface.


proc constructGeomAdaptor_HSurfaceOfLinearExtrusion*(): GeomAdaptor_HSurfaceOfLinearExtrusion {.
    constructor, importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc constructGeomAdaptor_HSurfaceOfLinearExtrusion*(
    S: GeomAdaptor_SurfaceOfLinearExtrusion): GeomAdaptor_HSurfaceOfLinearExtrusion {.
    constructor, importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc Set*(this: var GeomAdaptor_HSurfaceOfLinearExtrusion;
         S: GeomAdaptor_SurfaceOfLinearExtrusion) {.importcpp: "Set",
    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc Surface*(this: GeomAdaptor_HSurfaceOfLinearExtrusion): Adaptor3d_Surface {.
    noSideEffect, importcpp: "Surface",
    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc ChangeSurface*(this: var GeomAdaptor_HSurfaceOfLinearExtrusion): var GeomAdaptor_SurfaceOfLinearExtrusion {.
    importcpp: "ChangeSurface",
    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
type
  GeomAdaptor_HSurfaceOfLinearExtrusionbase_type* = Adaptor3d_HSurface

proc get_type_name*(): cstring {.importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion::get_type_name(@)", header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion::get_type_descriptor(@)",
    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc DynamicType*(this: GeomAdaptor_HSurfaceOfLinearExtrusion): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
## !!!Ignored construct:  # TheSurface GeomAdaptor_SurfaceOfLinearExtrusion [NewLine] # TheSurface_hxx < GeomAdaptor_SurfaceOfLinearExtrusion . hxx > [NewLine] # Adaptor3d_GenHSurface GeomAdaptor_HSurfaceOfLinearExtrusion [NewLine] # Adaptor3d_GenHSurface_hxx < GeomAdaptor_HSurfaceOfLinearExtrusion . hxx > [NewLine] # Handle_Adaptor3d_GenHSurface opencascade :: handle < GeomAdaptor_HSurfaceOfLinearExtrusion > [end of template] [NewLine] # < Adaptor3d_GenHSurface . lxx > [NewLine] # TheSurface [NewLine] # TheSurface_hxx [NewLine] # Adaptor3d_GenHSurface [NewLine] # Adaptor3d_GenHSurface_hxx [NewLine] # Handle_Adaptor3d_GenHSurface [NewLine] #  _GeomAdaptor_HSurfaceOfLinearExtrusion_HeaderFile [NewLine]
## Error: did not expect <!!!
