##  Created on: 1995-10-12
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepOffset_Status

discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
type
  BRepOffset* {.importcpp: "BRepOffset", header: "BRepOffset.hxx", bycopy.} = object ## !
                                                                             ## returns   the
                                                                             ## Offset
                                                                             ## surface
                                                                             ## computed
                                                                             ## from  the
                                                                             ## !
                                                                             ## surface
                                                                             ## <Surface> at an
                                                                             ## OffsetDistance
                                                                             ## <Offset>.
                                                                             ## !
                                                                             ## ! If
                                                                             ## possible,
                                                                             ## this
                                                                             ## method
                                                                             ## returns  the
                                                                             ## real
                                                                             ## type of
                                                                             ## ! the
                                                                             ## surface (
                                                                             ## e.g. An
                                                                             ## Offset of a
                                                                             ## plane is a
                                                                             ## plane).
                                                                             ## !
                                                                             ## ! If  no
                                                                             ## particular
                                                                             ## case  is
                                                                             ## detected, the
                                                                             ## returned
                                                                             ## !
                                                                             ## surface
                                                                             ## will
                                                                             ## have the
                                                                             ## Type
                                                                             ## Geom_OffsetSurface.
                                                                             ## !
                                                                             ## Parameter
                                                                             ## allowC0 is
                                                                             ## then
                                                                             ## passed as
                                                                             ## last
                                                                             ## argument to
                                                                             ## !
                                                                             ## constructor of
                                                                             ## Geom_OffsetSurface.


proc Surface*(Surface: handle[Geom_Surface]; Offset: Standard_Real;
             theStatus: var BRepOffset_Status;
             allowC0: Standard_Boolean = Standard_False): handle[Geom_Surface] {.
    importcpp: "BRepOffset::Surface(@)", header: "BRepOffset.hxx".}
proc CollapseSingularities*(theSurface: handle[Geom_Surface]; theFace: TopoDS_Face;
                           thePrecision: Standard_Real): handle[Geom_Surface] {.
    importcpp: "BRepOffset::CollapseSingularities(@)", header: "BRepOffset.hxx".}