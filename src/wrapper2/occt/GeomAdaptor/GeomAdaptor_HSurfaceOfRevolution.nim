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

## !!!Ignored construct:  # _GeomAdaptor_HSurfaceOfRevolution_HeaderFile [NewLine] # _GeomAdaptor_HSurfaceOfRevolution_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # GeomAdaptor_SurfaceOfRevolution.hxx [NewLine] # ../Adaptor3d/Adaptor3d_HSurface.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_SurfaceOfRevolution"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of GeomAdaptor_HSurfaceOfRevolution"
discard "forward decl of GeomAdaptor_HSurfaceOfRevolution"
type
  Handle_GeomAdaptor_HSurfaceOfRevolutionGeomAdaptor_HSurfaceOfRevolution* = handle[
      GeomAdaptor_HSurfaceOfRevolution]
  GeomAdaptor_HSurfaceOfRevolution* {.importcpp: "GeomAdaptor_HSurfaceOfRevolution", header: "GeomAdaptor_HSurfaceOfRevolution.hxx",
                                     bycopy.} = object of Adaptor3d_HSurface ## ! Creates an empty
                                                                        ## GenHSurface.


proc constructGeomAdaptor_HSurfaceOfRevolution*(): GeomAdaptor_HSurfaceOfRevolution {.
    constructor, importcpp: "GeomAdaptor_HSurfaceOfRevolution(@)",
    header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc constructGeomAdaptor_HSurfaceOfRevolution*(
    S: GeomAdaptor_SurfaceOfRevolution): GeomAdaptor_HSurfaceOfRevolution {.
    constructor, importcpp: "GeomAdaptor_HSurfaceOfRevolution(@)",
    header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc Set*(this: var GeomAdaptor_HSurfaceOfRevolution;
         S: GeomAdaptor_SurfaceOfRevolution) {.importcpp: "Set",
    header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc Surface*(this: GeomAdaptor_HSurfaceOfRevolution): Adaptor3d_Surface {.
    noSideEffect, importcpp: "Surface",
    header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc ChangeSurface*(this: var GeomAdaptor_HSurfaceOfRevolution): var GeomAdaptor_SurfaceOfRevolution {.
    importcpp: "ChangeSurface", header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
type
  GeomAdaptor_HSurfaceOfRevolutionbase_type* = Adaptor3d_HSurface

proc get_type_name*(): cstring {.importcpp: "GeomAdaptor_HSurfaceOfRevolution::get_type_name(@)",
                              header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomAdaptor_HSurfaceOfRevolution::get_type_descriptor(@)",
    header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc DynamicType*(this: GeomAdaptor_HSurfaceOfRevolution): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
## !!!Ignored construct:  # TheSurface GeomAdaptor_SurfaceOfRevolution [NewLine] # TheSurface_hxx < GeomAdaptor_SurfaceOfRevolution . hxx > [NewLine] # Adaptor3d_GenHSurface GeomAdaptor_HSurfaceOfRevolution [NewLine] # Adaptor3d_GenHSurface_hxx < GeomAdaptor_HSurfaceOfRevolution . hxx > [NewLine] # Handle_Adaptor3d_GenHSurface opencascade :: handle < GeomAdaptor_HSurfaceOfRevolution > [end of template] [NewLine] # < Adaptor3d_GenHSurface . lxx > [NewLine] # TheSurface [NewLine] # TheSurface_hxx [NewLine] # Adaptor3d_GenHSurface [NewLine] # Adaptor3d_GenHSurface_hxx [NewLine] # Handle_Adaptor3d_GenHSurface [NewLine] #  _GeomAdaptor_HSurfaceOfRevolution_HeaderFile [NewLine]
## Error: did not expect <!!!
