##  Created on: 1993-02-19
##  Created by: Remi LEQUETTE
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

## !!!Ignored construct:  # _BRepAdaptor_HSurface_HeaderFile [NewLine] # _BRepAdaptor_HSurface_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < BRepAdaptor_Surface . hxx > [NewLine] # < Adaptor3d_HSurface . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of BRepAdaptor_HSurface"
type
  HandleBRepAdaptorHSurfaceBRepAdaptorHSurface* = Handle[BRepAdaptorHSurface]
  BRepAdaptorHSurface* {.importcpp: "BRepAdaptor_HSurface",
                        header: "BRepAdaptor_HSurface.hxx", bycopy.} = object of Adaptor3dHSurface ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## GenHSurface.


proc constructBRepAdaptorHSurface*(): BRepAdaptorHSurface {.constructor,
    importcpp: "BRepAdaptor_HSurface(@)", header: "BRepAdaptor_HSurface.hxx".}
proc constructBRepAdaptorHSurface*(s: BRepAdaptorSurface): BRepAdaptorHSurface {.
    constructor, importcpp: "BRepAdaptor_HSurface(@)",
    header: "BRepAdaptor_HSurface.hxx".}
proc set*(this: var BRepAdaptorHSurface; s: BRepAdaptorSurface) {.importcpp: "Set",
    header: "BRepAdaptor_HSurface.hxx".}
proc surface*(this: BRepAdaptorHSurface): Adaptor3dSurface {.noSideEffect,
    importcpp: "Surface", header: "BRepAdaptor_HSurface.hxx".}
proc changeSurface*(this: var BRepAdaptorHSurface): var BRepAdaptorSurface {.
    importcpp: "ChangeSurface", header: "BRepAdaptor_HSurface.hxx".}
type
  BRepAdaptorHSurfacebaseType* = Adaptor3dHSurface

proc getTypeName*(): cstring {.importcpp: "BRepAdaptor_HSurface::get_type_name(@)",
                            header: "BRepAdaptor_HSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepAdaptor_HSurface::get_type_descriptor(@)",
    header: "BRepAdaptor_HSurface.hxx".}
proc dynamicType*(this: BRepAdaptorHSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepAdaptor_HSurface.hxx".}
## !!!Ignored construct:  # TheSurface BRepAdaptor_Surface [NewLine] # TheSurface_hxx < BRepAdaptor_Surface . hxx > [NewLine] # Adaptor3d_GenHSurface BRepAdaptor_HSurface [NewLine] # Adaptor3d_GenHSurface_hxx < BRepAdaptor_HSurface . hxx > [NewLine] # Handle_Adaptor3d_GenHSurface opencascade :: handle < BRepAdaptor_HSurface > [end of template] [NewLine] # < Adaptor3d_GenHSurface . lxx > [NewLine] # TheSurface [NewLine] # TheSurface_hxx [NewLine] # Adaptor3d_GenHSurface [NewLine] # Adaptor3d_GenHSurface_hxx [NewLine] # Handle_Adaptor3d_GenHSurface [NewLine] #  _BRepAdaptor_HSurface_HeaderFile
## Error: did not expect <!!!

