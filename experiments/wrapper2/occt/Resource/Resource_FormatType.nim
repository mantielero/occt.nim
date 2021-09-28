##  Created on: 1995-04-20
##  Created by: Tony GEORGIADES
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

## ! List of non ASCII format types which may be converted into the Unicode 16 bits format type.
## ! Use the functions provided by the Resource_Unicode class to convert a string
## ! from one of these non ASCII format to Unicode, and vice versa.

type
  ResourceFormatType* {.size: sizeof(cint), importcpp: "Resource_FormatType",
                       header: "Resource_FormatType.hxx".} = enum
    ResourceFormatTypeSJIS,   ## !< SJIS (Shift Japanese Industrial Standards) encoding
    ResourceFormatTypeEUC,    ## !< EUC (Extended Unix Code) multi-byte encoding primarily for Japanese, Korean, and simplified Chinese
    ResourceFormatTypeNoConversion, ## !< format type indicating non-conversion behavior
    ResourceFormatTypeGB,     ## !< GB (Guobiao) encoding for Simplified Chinese
    ResourceFormatTypeUTF8,   ## !< multi-byte UTF-8 encoding
    ResourceFormatTypeSystemLocale, ## !< active system-defined locale; this value is strongly NOT recommended to use
                                   ##  Windows-native ("ANSI") 8-bit code pages
    ResourceFormatTypeCP1250, ## !< cp1250 (Central European) encoding
    ResourceFormatTypeCP1251, ## !< cp1251 (Cyrillic) encoding
    ResourceFormatTypeCP1252, ## !< cp1252 (Western European) encoding
    ResourceFormatTypeCP1253, ## !< cp1253 (Greek) encoding
    ResourceFormatTypeCP1254, ## !< cp1254 (Turkish) encoding
    ResourceFormatTypeCP1255, ## !< cp1255 (Hebrew) encoding
    ResourceFormatTypeCP1256, ## !< cp1256 (Arabic) encoding
    ResourceFormatTypeCP1257, ## !< cp1257 (Baltic) encoding
    ResourceFormatTypeCP1258, ## !< cp1258 (Vietnamese) encoding
                             ##  ISO8859 8-bit code pages
    ResourceFormatTypeIso88591, ## !< ISO 8859-1 (Western European) encoding
    ResourceFormatTypeIso88592, ## !< ISO 8859-2 (Central European) encoding
    ResourceFormatTypeIso88593, ## !< ISO 8859-3 (Turkish) encoding
    ResourceFormatTypeIso88594, ## !< ISO 8859-4 (Northern European) encoding
    ResourceFormatTypeIso88595, ## !< ISO 8859-5 (Cyrillic) encoding
    ResourceFormatTypeIso88596, ## !< ISO 8859-6 (Arabic) encoding
    ResourceFormatTypeIso88597, ## !< ISO 8859-7 (Greek) encoding
    ResourceFormatTypeIso88598, ## !< ISO 8859-8 (Hebrew) encoding
    ResourceFormatTypeIso88599, ## !< ISO 8859-9 (Turkish) encoding
                               ##  Addition code pages
    ResourceFormatTypeGBK,    ## !< GBK  (UnifiedChinese) encoding
    ResourceFormatTypeBig5,   ## !< Big5 (TradChinese) encoding
                           ##  old aliases
    ResourceFormatTypeANSI = resourceFormatTypeNoConversion,
    ResourceSJIS = resourceFormatTypeSJIS, ResourceEUC = resourceFormatTypeEUC,
    ResourceANSI = resourceFormatTypeANSI, ResourceGB = resourceFormatTypeGB



























