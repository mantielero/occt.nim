#import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tdf/tdf_types


##  Created on: 1999-06-25
##  Created by: Sergey RUIN
##  Copyright (c) 1999 Matra Datavision
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





proc find*(current: TDF_Label; d: var Handle[TDataStdDirectory]): bool {.cdecl,
    importcpp: "TDataStd_Directory::Find(@)", header: "TDataStd_Directory.hxx".}
proc new*(label: TDF_Label): Handle[TDataStdDirectory] {.cdecl,
    importcpp: "TDataStd_Directory::New(@)", header: "TDataStd_Directory.hxx".}
proc addDirectory*(dir: Handle[TDataStdDirectory]): Handle[TDataStdDirectory] {.
    cdecl, importcpp: "TDataStd_Directory::AddDirectory(@)",
    header: "TDataStd_Directory.hxx".}
proc makeObjectLabel*(dir: Handle[TDataStdDirectory]): TDF_Label {.cdecl,
    importcpp: "TDataStd_Directory::MakeObjectLabel(@)",
    header: "TDataStd_Directory.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_Directory::GetID(@)",
                           header: "TDataStd_Directory.hxx".}
proc newTDataStdDirectory*(): TDataStdDirectory {.cdecl, constructor,
    importcpp: "TDataStd_Directory(@)", header: "TDataStd_Directory.hxx".}
proc id*(this: TDataStdDirectory): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_Directory.hxx".}
proc dump*(this: TDataStdDirectory; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_Directory.hxx".}

