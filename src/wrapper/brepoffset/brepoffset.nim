import brepoffset_types
import ../tkernel/standard/standard_types
import ../tkg3d/geom/geom_types
import ../tkbrep/topods/topods_types


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

discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"

proc Surface*(Surface: Handle[Geom_Surface]; Offset: cfloat;
             theStatus: var BRepOffset_Status; allowC0: bool = false): Handle[
    Geom_Surface] {.cdecl, importcpp: "BRepOffset::Surface(@)".}
proc CollapseSingularities*(theSurface: Handle[Geom_Surface]; theFace: TopoDS_Face;
                           thePrecision: cfloat): Handle[Geom_Surface] {.cdecl,
    importcpp: "BRepOffset::CollapseSingularities(@)".}