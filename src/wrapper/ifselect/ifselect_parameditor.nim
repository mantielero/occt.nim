import ../tcollection/tcollection_types
import ../standard/standard_types
import ifselect_types
import ../tcolstd/tcolstd_types
import "../interface/interface_types"




##  Created on: 1998-07-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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





proc newIFSelectParamEditor*(nbmax: cint = 100; label: cstring = ""): IFSelectParamEditor {.
    cdecl, constructor, importcpp: "IFSelect_ParamEditor(@)", header: "IFSelect_ParamEditor.hxx".}
proc addValue*(this: var IFSelectParamEditor; val: Handle[InterfaceTypedValue];
              shortname: cstring = "") {.cdecl, importcpp: "AddValue", header: "IFSelect_ParamEditor.hxx".}
proc addConstantText*(this: var IFSelectParamEditor; val: cstring; shortname: cstring;
                     completename: cstring = "") {.cdecl,
    importcpp: "AddConstantText", header: "IFSelect_ParamEditor.hxx".}
proc label*(this: IFSelectParamEditor): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_ParamEditor.hxx".}
proc recognize*(this: IFSelectParamEditor; form: Handle[IFSelectEditForm]): bool {.
    noSideEffect, cdecl, importcpp: "Recognize", header: "IFSelect_ParamEditor.hxx".}
proc stringValue*(this: IFSelectParamEditor; form: Handle[IFSelectEditForm];
                 num: cint): Handle[TCollectionHAsciiString] {.noSideEffect, cdecl,
    importcpp: "StringValue", header: "IFSelect_ParamEditor.hxx".}
proc load*(this: IFSelectParamEditor; form: Handle[IFSelectEditForm];
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, cdecl, importcpp: "Load", header: "IFSelect_ParamEditor.hxx".}
proc apply*(this: IFSelectParamEditor; form: Handle[IFSelectEditForm];
           ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, cdecl, importcpp: "Apply", header: "IFSelect_ParamEditor.hxx".}
proc staticEditor*(list: Handle[TColStdHSequenceOfHAsciiString];
                  label: cstring = ""): Handle[IFSelectParamEditor] {.cdecl,
    importcpp: "IFSelect_ParamEditor::StaticEditor(@)", header: "IFSelect_ParamEditor.hxx".}


