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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of GeomAdaptor_GHSurface"
type
  HandleGeomAdaptorGHSurface* = Handle[GeomAdaptorGHSurface]
  GeomAdaptorGHSurface* {.importcpp: "GeomAdaptor_GHSurface",
                         header: "GeomAdaptor_GHSurface.hxx", bycopy.} = object of Adaptor3dHSurface ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## GenHSurface.


proc newGeomAdaptorGHSurface*(): GeomAdaptorGHSurface {.cdecl, constructor,
    importcpp: "GeomAdaptor_GHSurface(@)", dynlib: tkg3d.}
proc newGeomAdaptorGHSurface*(s: GeomAdaptorSurface): GeomAdaptorGHSurface {.cdecl,
    constructor, importcpp: "GeomAdaptor_GHSurface(@)", dynlib: tkg3d.}
proc set*(this: var GeomAdaptorGHSurface; s: GeomAdaptorSurface) {.cdecl,
    importcpp: "Set", dynlib: tkg3d.}
proc surface*(this: GeomAdaptorGHSurface): Adaptor3dSurface {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkg3d.}
proc changeSurface*(this: var GeomAdaptorGHSurface): var GeomAdaptorSurface {.cdecl,
    importcpp: "ChangeSurface", dynlib: tkg3d.}
type
  GeomAdaptorGHSurfacebaseType* = Adaptor3dHSurface

##  #define TheSurface GeomAdaptor_Surface
##  #define TheSurface_hxx <GeomAdaptor_Surface.hxx>
##  #define Adaptor3d_GenHSurface GeomAdaptor_GHSurface
##  #define Adaptor3d_GenHSurface_hxx <GeomAdaptor_GHSurface.hxx>
##  #define Handle_Adaptor3d_GenHSurface Handle(GeomAdaptor_GHSurface)
##
##  #include <Adaptor3d_GenHSurface.lxx>
##
##  #undef TheSurface
##  #undef TheSurface_hxx
##  #undef Adaptor3d_GenHSurface
##  #undef Adaptor3d_GenHSurface_hxx
##  #undef Handle_Adaptor3d_GenHSurface
