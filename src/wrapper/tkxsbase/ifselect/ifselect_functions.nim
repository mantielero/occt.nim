import ../../tkernel/standard/standard_types
import ifselect_types
import ../../tkernel/tcolstd/tcolstd_types





##  Created on: 1993-07-28
##  Created by: Christian CAILLET
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



proc giveEntity*(ws: Handle[IFSelectWorkSession]; name: cstring = ""): Handle[
    StandardTransient] {.cdecl, importcpp: "IFSelect_Functions::GiveEntity(@)",
                        header: "IFSelect_Functions.hxx".}
proc giveEntityNumber*(ws: Handle[IFSelectWorkSession]; name: cstring = ""): cint {.
    cdecl, importcpp: "IFSelect_Functions::GiveEntityNumber(@)", header: "IFSelect_Functions.hxx".}
proc giveList*(ws: Handle[IFSelectWorkSession]; first: cstring = "";
              second: cstring = ""): Handle[TColStdHSequenceOfTransient] {.cdecl,
    importcpp: "IFSelect_Functions::GiveList(@)", header: "IFSelect_Functions.hxx".}
proc giveDispatch*(ws: Handle[IFSelectWorkSession]; name: cstring; mode: bool = true): Handle[
    IFSelectDispatch] {.cdecl, importcpp: "IFSelect_Functions::GiveDispatch(@)",
                       header: "IFSelect_Functions.hxx".}
proc initIFSelectFunctions*() {.cdecl, importcpp: "IFSelect_Functions::Init(@)", header: "IFSelect_Functions.hxx".}


