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

discard "forward decl of Geom_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of GeomAdaptor_GHSurface"
discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of GeomAdaptor_GHCurve"
discard "forward decl of GeomAdaptor_HCurve"
type
  GeomAdaptor* {.importcpp: "GeomAdaptor", header: "GeomAdaptor.hxx", bycopy.} = object


proc `new`*(this: var GeomAdaptor; theSize: csize_t): pointer {.
    importcpp: "GeomAdaptor::operator new", header: "GeomAdaptor.hxx".}
proc `delete`*(this: var GeomAdaptor; theAddress: pointer) {.
    importcpp: "GeomAdaptor::operator delete", header: "GeomAdaptor.hxx".}
proc `new[]`*(this: var GeomAdaptor; theSize: csize_t): pointer {.
    importcpp: "GeomAdaptor::operator new[]", header: "GeomAdaptor.hxx".}
proc `delete[]`*(this: var GeomAdaptor; theAddress: pointer) {.
    importcpp: "GeomAdaptor::operator delete[]", header: "GeomAdaptor.hxx".}
proc `new`*(this: var GeomAdaptor; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomAdaptor::operator new", header: "GeomAdaptor.hxx".}
proc `delete`*(this: var GeomAdaptor; a2: pointer; a3: pointer) {.
    importcpp: "GeomAdaptor::operator delete", header: "GeomAdaptor.hxx".}
proc makeCurve*(c: Adaptor3dCurve): Handle[GeomCurve] {.
    importcpp: "GeomAdaptor::MakeCurve(@)", header: "GeomAdaptor.hxx".}
proc makeSurface*(theS: Adaptor3dSurface; theTrimFlag: StandardBoolean = true): Handle[
    GeomSurface] {.importcpp: "GeomAdaptor::MakeSurface(@)",
                  header: "GeomAdaptor.hxx".}