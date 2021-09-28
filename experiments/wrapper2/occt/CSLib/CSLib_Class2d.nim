##  Created on: 1995-03-08
##  Created by: Laurent BUCHARD
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

discard "forward decl of gp_Pnt2d"
type
  CSLibClass2d* {.importcpp: "CSLib_Class2d", header: "CSLib_Class2d.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## the
                                                                                     ## 2D-polygon.
                                                                                     ##
                                                                                     ## !
                                                                                     ## thePnts2d
                                                                                     ## is
                                                                                     ## the
                                                                                     ## set
                                                                                     ## of
                                                                                     ## the
                                                                                     ## vertices
                                                                                     ## (closed
                                                                                     ## polygon
                                                                                     ##
                                                                                     ## !
                                                                                     ## will
                                                                                     ## always
                                                                                     ## be
                                                                                     ## created
                                                                                     ## inside
                                                                                     ## of
                                                                                     ## this
                                                                                     ## constructor;
                                                                                     ##
                                                                                     ## !
                                                                                     ## consequently,
                                                                                     ## there
                                                                                     ## is
                                                                                     ## no
                                                                                     ## point
                                                                                     ## in
                                                                                     ## repeating
                                                                                     ## first
                                                                                     ## and
                                                                                     ##
                                                                                     ## !
                                                                                     ## last
                                                                                     ## point
                                                                                     ## in
                                                                                     ## thePnts2d).
                                                                                     ##
                                                                                     ## !
                                                                                     ## theTolu
                                                                                     ## and
                                                                                     ## theTolv
                                                                                     ## are
                                                                                     ## tolerances.
                                                                                     ##
                                                                                     ## !
                                                                                     ## theUmin,
                                                                                     ## theVmin,
                                                                                     ## theUmax,
                                                                                     ## theVmax
                                                                                     ## are
                                                                                     ##
                                                                                     ## !
                                                                                     ## UV-bounds
                                                                                     ## of
                                                                                     ## the
                                                                                     ## polygon.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Initializes
                                                                                     ## theObj


proc constructCSLibClass2d*(thePnts2d: TColgpArray1OfPnt2d; theTolU: cfloat;
                           theTolV: cfloat; theUMin: cfloat; theVMin: cfloat;
                           theUMax: cfloat; theVMax: cfloat): CSLibClass2d {.
    constructor, importcpp: "CSLib_Class2d(@)", header: "CSLib_Class2d.hxx".}
proc constructCSLibClass2d*(thePnts2d: TColgpSequenceOfPnt2d; theTolU: cfloat;
                           theTolV: cfloat; theUMin: cfloat; theVMin: cfloat;
                           theUMax: cfloat; theVMax: cfloat): CSLibClass2d {.
    constructor, importcpp: "CSLib_Class2d(@)", header: "CSLib_Class2d.hxx".}
proc siDans*(this: CSLibClass2d; p: Pnt2d): cint {.noSideEffect, importcpp: "SiDans",
    header: "CSLib_Class2d.hxx".}
proc siDansOnMode*(this: CSLibClass2d; p: Pnt2d; tol: cfloat): cint {.noSideEffect,
    importcpp: "SiDans_OnMode", header: "CSLib_Class2d.hxx".}
proc internalSiDans*(this: CSLibClass2d; x: cfloat; y: cfloat): cint {.noSideEffect,
    importcpp: "InternalSiDans", header: "CSLib_Class2d.hxx".}
proc internalSiDansOuOn*(this: CSLibClass2d; x: cfloat; y: cfloat): cint {.noSideEffect,
    importcpp: "InternalSiDansOuOn", header: "CSLib_Class2d.hxx".}

























