#import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tdf/tdf_types


##  Created on: 1999-06-11
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



proc set*(label: TDF_Label; localID: StandardGUID): Handle[TDataStdUAttribute] {.
    cdecl, importcpp: "TDataStd_UAttribute::Set(@)",
    header: "TDataStd_UAttribute.hxx".}
proc newTDataStdUAttribute*(): TDataStdUAttribute {.cdecl, constructor,
    importcpp: "TDataStd_UAttribute(@)", header: "TDataStd_UAttribute.hxx".}
proc setID*(this: var TDataStdUAttribute; localID: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_UAttribute.hxx".}
proc id*(this: TDataStdUAttribute): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_UAttribute.hxx".}
proc restore*(this: var TDataStdUAttribute; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_UAttribute.hxx".}
proc newEmpty*(this: TDataStdUAttribute): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_UAttribute.hxx".}
proc paste*(this: TDataStdUAttribute; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_UAttribute.hxx".}
proc references*(this: TDataStdUAttribute; ds: Handle[TDF_DataSet]) {.noSideEffect,
    cdecl, importcpp: "References", header: "TDataStd_UAttribute.hxx".}
proc dump*(this: TDataStdUAttribute; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_UAttribute.hxx".}
proc dumpJson*(this: TDataStdUAttribute; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_UAttribute.hxx".}

