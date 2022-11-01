import interface_types
import ../../tkernel/tcolstd/tcolstd_types







##  Created on: 1992-02-03
##  Created by: Christian CAILLET
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



proc newInterfaceHArray1OfHAsciiString*(theLower: cint; theUpper: cint): InterfaceHArray1OfHAsciiString {.
    cdecl, constructor, importcpp: "Interface_HArray1OfHAsciiString(@)",
    header: "Interface_HArray1OfHAsciiString.hxx".}
proc newInterfaceHArray1OfHAsciiString*(theLower: cint; theUpper: cint;
                                       theValue: ValueType): InterfaceHArray1OfHAsciiString {.
    cdecl, constructor, importcpp: "Interface_HArray1OfHAsciiString(@)",
    header: "Interface_HArray1OfHAsciiString.hxx".}
proc newInterfaceHArray1OfHAsciiString*(theOther: InterfaceArray1OfHAsciiString): InterfaceHArray1OfHAsciiString {.
    cdecl, constructor, importcpp: "Interface_HArray1OfHAsciiString(@)",
    header: "Interface_HArray1OfHAsciiString.hxx".}
proc array1*(this: InterfaceHArray1OfHAsciiString): InterfaceArray1OfHAsciiString {.
    noSideEffect, cdecl, importcpp: "Array1", header: "Interface_HArray1OfHAsciiString.hxx".}



