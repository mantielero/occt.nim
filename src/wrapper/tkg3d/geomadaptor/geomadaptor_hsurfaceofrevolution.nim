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
discard "forward decl of GeomAdaptor_SurfaceOfRevolution"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of GeomAdaptor_HSurfaceOfRevolution"
type
  HandleGeomAdaptorHSurfaceOfRevolution* = Handle[GeomAdaptorHSurfaceOfRevolution]
  GeomAdaptorHSurfaceOfRevolution* {.importcpp: "GeomAdaptor_HSurfaceOfRevolution", header: "GeomAdaptor_HSurfaceOfRevolution.hxx",
                                    bycopy.} = object of Adaptor3dHSurface ## ! Creates an empty
                                                                      ## GenHSurface.


proc newGeomAdaptorHSurfaceOfRevolution*(): GeomAdaptorHSurfaceOfRevolution {.
    cdecl, constructor, importcpp: "GeomAdaptor_HSurfaceOfRevolution(@)",
    header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc newGeomAdaptorHSurfaceOfRevolution*(s: GeomAdaptorSurfaceOfRevolution): GeomAdaptorHSurfaceOfRevolution {.
    cdecl, constructor, importcpp: "GeomAdaptor_HSurfaceOfRevolution(@)",
    header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc set*(this: var GeomAdaptorHSurfaceOfRevolution;
         s: GeomAdaptorSurfaceOfRevolution) {.cdecl, importcpp: "Set", header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc surface*(this: GeomAdaptorHSurfaceOfRevolution): Adaptor3dSurface {.
    noSideEffect, cdecl, importcpp: "Surface", header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
proc changeSurface*(this: var GeomAdaptorHSurfaceOfRevolution): var GeomAdaptorSurfaceOfRevolution {.
    cdecl, importcpp: "ChangeSurface", header: "GeomAdaptor_HSurfaceOfRevolution.hxx".}
type
  GeomAdaptorHSurfaceOfRevolutionbaseType* = Adaptor3dHSurface

##  #define TheSurface GeomAdaptor_SurfaceOfRevolution
##  #define TheSurface_hxx <GeomAdaptor_SurfaceOfRevolution.hxx>
##  #define Adaptor3d_GenHSurface GeomAdaptor_HSurfaceOfRevolution
##  #define Adaptor3d_GenHSurface_hxx <GeomAdaptor_HSurfaceOfRevolution.hxx>
##  #define Handle_Adaptor3d_GenHSurface Handle(GeomAdaptor_HSurfaceOfRevolution)
##
##  #include <Adaptor3d_GenHSurface.lxx>
##
##  #undef TheSurface
##  #undef TheSurface_hxx
##  #undef Adaptor3d_GenHSurface
##  #undef Adaptor3d_GenHSurface_hxx
##  #undef Handle_Adaptor3d_GenHSurface
