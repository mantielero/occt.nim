import quantity_types
import ../tcolstd/tcolstd_types
##  Created on: 1994-02-08
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1994-1999 Matra Datavision
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



proc newQuantityHArray1OfColor*(theLower: cint; theUpper: cint): QuantityHArray1OfColor {.
    cdecl, constructor, importcpp: "Quantity_HArray1OfColor(@)", header: "Quantity_HArray1OfColor.hxx".}
proc newQuantityHArray1OfColor*(theLower: cint; theUpper: cint; theValue: ValueType): QuantityHArray1OfColor {.
    cdecl, constructor, importcpp: "Quantity_HArray1OfColor(@)", header: "Quantity_HArray1OfColor.hxx".}
proc newQuantityHArray1OfColor*(theOther: QuantityArray1OfColor): QuantityHArray1OfColor {.
    cdecl, constructor, importcpp: "Quantity_HArray1OfColor(@)", header: "Quantity_HArray1OfColor.hxx".}
proc array1*(this: QuantityHArray1OfColor): QuantityArray1OfColor {.noSideEffect,
    cdecl, importcpp: "Array1", header: "Quantity_HArray1OfColor.hxx".}
