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

## ! List of all physical quantities(Afnor)

type
  QuantityPhysicalQuantity* {.size: sizeof(cint),
                             importcpp: "Quantity_PhysicalQuantity",
                             header: "Quantity_PhysicalQuantity.hxx".} = enum
    QuantityMASS, QuantityPLANEANGLE, QuantitySOLIDANGLE, QuantityLENGTH,
    QuantityAREA, QuantityVOLUME, QuantitySPEED, QuantityVELOCITY,
    QuantityACCELERATION, QuantityANGULARVELOCITY, QuantityFREQUENCY,
    QuantityTEMPERATURE, QuantityAMOUNTOFSUBSTANCE, QuantityDENSITY,
    QuantityMASSFLOW, QuantityVOLUMEFLOW, QuantityCONSUMPTION, QuantityMOMENTUM,
    QuantityKINETICMOMENT, QuantityMOMENTOFINERTIA, QuantityFORCE,
    QuantityMOMENTOFAFORCE, QuantityTORQUE, QuantityWEIGHT, QuantityPRESSURE,
    QuantityVISCOSITY, QuantityKINEMATICVISCOSITY, QuantityENERGY, QuantityWORK,
    QuantityPOWER, QuantitySURFACETENSION, QuantityCOEFFICIENTOFEXPANSION,
    QuantityTHERMALCONDUCTIVITY, QuantitySPECIFICHEATCAPACITY, QuantityENTROPY,
    QuantityENTHALPY, QuantityLUMINOUSINTENSITY, QuantityLUMINOUSFLUX,
    QuantityLUMINANCE, QuantityILLUMINANCE, QuantityLUMINOUSEXPOSITION,
    QuantityLUMINOUSEFFICACITY, QuantityELECTRICCHARGE, QuantityELECTRICCURRENT,
    QuantityELECTRICFIELDSTRENGTH, QuantityELECTRICPOTENTIAL,
    QuantityELECTRICCAPACITANCE, QuantityMAGNETICFLUX,
    QuantityMAGNETICFLUXDENSITY, QuantityMAGNETICFIELDSTRENGTH,
    QuantityRELUCTANCE, QuantityRESISTANCE, QuantityINDUCTANCE,
    QuantityCAPACITANCE, QuantityIMPEDANCE, QuantityADMITTANCE,
    QuantityRESISTIVITY, QuantityCONDUCTIVITY, QuantityMOLARMASS,
    QuantityMOLARVOLUME, QuantityCONCENTRATION, QuantityMOLARCONCENTRATION,
    QuantityMOLARITY, QuantitySOUNDINTENSITY, QuantityACOUSTICINTENSITY,
    QuantityACTIVITY, QuantityABSORBEDDOSE, QuantityDOSEEQUIVALENT



























