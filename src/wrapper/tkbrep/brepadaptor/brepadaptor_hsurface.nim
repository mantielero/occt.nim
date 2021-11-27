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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of BRepAdaptor_HSurface"
type
  HandleBRepAdaptorHSurface* = Handle[BRepAdaptorHSurface]
  BRepAdaptorHSurface* {.importcpp: "BRepAdaptor_HSurface",
                        header: "BRepAdaptor_HSurface.hxx", bycopy.} = object of Adaptor3dHSurface ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## GenHSurface.


proc newBRepAdaptorHSurface*(): BRepAdaptorHSurface {.cdecl, constructor,
    importcpp: "BRepAdaptor_HSurface(@)", header: "BRepAdaptor_HSurface.hxx".}
proc newBRepAdaptorHSurface*(s: BRepAdaptorSurface): BRepAdaptorHSurface {.cdecl,
    constructor, importcpp: "BRepAdaptor_HSurface(@)", header: "BRepAdaptor_HSurface.hxx".}
proc set*(this: var BRepAdaptorHSurface; s: BRepAdaptorSurface) {.cdecl,
    importcpp: "Set", header: "BRepAdaptor_HSurface.hxx".}
proc surface*(this: BRepAdaptorHSurface): Adaptor3dSurface {.noSideEffect, cdecl,
    importcpp: "Surface", header: "BRepAdaptor_HSurface.hxx".}
proc changeSurface*(this: var BRepAdaptorHSurface): var BRepAdaptorSurface {.cdecl,
    importcpp: "ChangeSurface", header: "BRepAdaptor_HSurface.hxx".}
type
  BRepAdaptorHSurfacebaseType* = Adaptor3dHSurface

##  #define TheSurface BRepAdaptor_Surface
##  #define TheSurface_hxx <BRepAdaptor_Surface.hxx>
##  #define Adaptor3d_GenHSurface BRepAdaptor_HSurface
##  #define Adaptor3d_GenHSurface_hxx <BRepAdaptor_HSurface.hxx>
##  #define Handle_Adaptor3d_GenHSurface Handle(BRepAdaptor_HSurface)
##
##  #include <Adaptor3d_GenHSurface.lxx>
##
##  #undef TheSurface
##  #undef TheSurface_hxx
##  #undef Adaptor3d_GenHSurface
##  #undef Adaptor3d_GenHSurface_hxx
##  #undef Handle_Adaptor3d_GenHSurface
