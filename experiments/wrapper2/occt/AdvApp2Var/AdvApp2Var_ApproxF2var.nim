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
##  AdvApp2Var_ApproxF2var.hxx
## ---------------------------------------------------------------
## |  description de la macro et du prototype des routines
## |  de l'approximation a deux variables
## |  a utiliser dans AdvApp2Var
## |--------------------------------------------------------------

import
  ../Standard/Standard_Macro, AdvApp2Var_Data_f2c, AdvApp2Var_EvaluatorFunc2Var


type
  AdvApp2Var_ApproxF2var* {.importcpp: "AdvApp2Var_ApproxF2var",
                           header: "AdvApp2Var_ApproxF2var.hxx", bycopy.} = object


proc mma2fnc_*(ndimen: ptr integer; nbsesp: ptr integer; ndimse: ptr integer;
              uvfonc: ptr doublereal; foncnp: AdvApp2Var_EvaluatorFunc2Var;
              tconst: ptr doublereal; isofav: ptr integer; nbroot: ptr integer;
              rootlg: ptr doublereal; iordre: ptr integer; ideriv: ptr integer;
              ndgjac: ptr integer; nbcrmx: ptr integer; ncflim: ptr integer;
              epsapr: ptr doublereal; ncoeff: ptr integer; courbe: ptr doublereal;
              nbcrbe: ptr integer; somtab: ptr doublereal; diftab: ptr doublereal;
              contr1: ptr doublereal; contr2: ptr doublereal; tabdec: ptr doublereal;
              errmax: ptr doublereal; errmoy: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2fnc_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2roo_*(nbpntu: ptr integer; nbpntv: ptr integer; urootl: ptr doublereal;
              vrootl: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2roo_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2jmx_*(ndgjac: ptr integer; iordre: ptr integer; xjacmx: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2jmx_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mmapptt_*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr doublereal;
              a5: ptr integer): cint {.importcpp: "AdvApp2Var_ApproxF2var::mmapptt_(@)",
                                   header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2cdi_*(ndimen: ptr integer; nbpntu: ptr integer; urootl: ptr doublereal;
              nbpntv: ptr integer; vrootl: ptr doublereal; iordru: ptr integer;
              iordrv: ptr integer; contr1: ptr doublereal; contr2: ptr doublereal;
              contr3: ptr doublereal; contr4: ptr doublereal; sotbu1: ptr doublereal;
              sotbu2: ptr doublereal; ditbu1: ptr doublereal; ditbu2: ptr doublereal;
              sotbv1: ptr doublereal; sotbv2: ptr doublereal; ditbv1: ptr doublereal;
              ditbv2: ptr doublereal; sosotb: ptr doublereal; soditb: ptr doublereal;
              disotb: ptr doublereal; diditb: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2cdi_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ds1_*(ndimen: ptr integer; uintfn: ptr doublereal; vintfn: ptr doublereal;
              foncnp: AdvApp2Var_EvaluatorFunc2Var; nbpntu: ptr integer;
              nbpntv: ptr integer; urootb: ptr doublereal; vrootb: ptr doublereal;
              isofav: ptr integer; sosotb: ptr doublereal; disotb: ptr doublereal;
              soditb: ptr doublereal; diditb: ptr doublereal; fpntab: ptr doublereal;
              ttable: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2ds1_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ce1_*(numdec: ptr integer; ndimen: ptr integer; nbsesp: ptr integer;
              ndimse: ptr integer; ndminu: ptr integer; ndminv: ptr integer;
              ndguli: ptr integer; ndgvli: ptr integer; ndjacu: ptr integer;
              ndjacv: ptr integer; iordru: ptr integer; iordrv: ptr integer;
              nbpntu: ptr integer; nbpntv: ptr integer; epsapr: ptr doublereal;
              sosotb: ptr doublereal; disotb: ptr doublereal; soditb: ptr doublereal;
              diditb: ptr doublereal; patjac: ptr doublereal; errmax: ptr doublereal;
              errmoy: ptr doublereal; ndegpu: ptr integer; ndegpv: ptr integer;
              itydec: ptr integer; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2ce1_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2can_*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
              a5: ptr integer; a6: ptr integer; a7: ptr integer; a8: ptr doublereal;
              a9: ptr doublereal; a10: ptr doublereal; a11: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2can_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma1her_*(a1: ptr integer; a2: ptr doublereal; a3: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma1her_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ac2_*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
              a5: ptr integer; a6: ptr integer; a7: ptr doublereal; a8: ptr integer;
              a9: ptr doublereal; a10: ptr doublereal; a11: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2ac2_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ac3_*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
              a5: ptr integer; a6: ptr integer; a7: ptr doublereal; a8: ptr integer;
              a9: ptr doublereal; a10: ptr doublereal; a11: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2ac3_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ac1_*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
              a5: ptr integer; a6: ptr doublereal; a7: ptr doublereal;
              a8: ptr doublereal; a9: ptr doublereal; a10: ptr doublereal;
              a11: ptr doublereal; a12: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2ac1_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2fx6_*(ncfmxu: ptr integer; ncfmxv: ptr integer; ndimen: ptr integer;
              nbsesp: ptr integer; ndimse: ptr integer; nbupat: ptr integer;
              nbvpat: ptr integer; iordru: ptr integer; iordrv: ptr integer;
              epsapr: ptr doublereal; epsfro: ptr doublereal; patcan: ptr doublereal;
              errmax: ptr doublereal; ncoefu: ptr integer; ncoefv: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2fx6_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}