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

import
  ../Standard/Standard_Macro, AdvApp2Var_Data_f2c


type
  mdnombr_1_* {.importcpp: "mdnombr_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    pi* {.importc: "pi".}: doublereal
    deuxpi* {.importc: "deuxpi".}: doublereal
    pisur2* {.importc: "pisur2".}: doublereal
    pis180* {.importc: "pis180".}: doublereal
    c180pi* {.importc: "c180pi".}: doublereal
    zero* {.importc: "zero".}: doublereal
    one* {.importc: "one".}: doublereal
    a180* {.importc: "a180".}: doublereal
    a360* {.importc: "a360".}: doublereal
    a90* {.importc: "a90".}: doublereal



type
  minombr_1_* {.importcpp: "minombr_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    nbr* {.importc: "nbr".}: array[1001, integer]



type
  maovpar_1_* {.importcpp: "maovpar_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    r8und* {.importc: "r8und".}: doublereal
    r8ovr* {.importc: "r8ovr".}: doublereal
    x4und* {.importc: "x4und".}: doublereal
    x4ovr* {.importc: "x4ovr".}: doublereal
    r4und* {.importc: "r4und".}: real
    r4ovr* {.importc: "r4ovr".}: real
    r4nbe* {.importc: "r4nbe".}: integer
    r8nbm* {.importc: "r8nbm".}: integer
    r8nbe* {.importc: "r8nbe".}: integer
    i4ovr* {.importc: "i4ovr".}: integer
    i4ovn* {.importc: "i4ovn".}: integer
    r4exp* {.importc: "r4exp".}: integer
    r8exp* {.importc: "r8exp".}: integer
    r4exn* {.importc: "r4exn".}: integer
    r8exn* {.importc: "r8exn".}: integer
    r4ncs* {.importc: "r4ncs".}: integer
    r8ncs* {.importc: "r8ncs".}: integer
    r4nbm* {.importc: "r4nbm".}: integer
    i2ovr* {.importc: "i2ovr".}: shortint
    i2ovn* {.importc: "i2ovn".}: shortint



type
  maovpch_1_* {.importcpp: "maovpch_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    cnmmac* {.importc: "cnmmac".}: array[16, char]
    frmr4* {.importc: "frmr4".}: array[8, char]
    frmr8* {.importc: "frmr8".}: array[8, char]
    cdcode* {.importc: "cdcode".}: array[8, char]



type
  mlgdrtl_1_* {.importcpp: "mlgdrtl_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    rootab* {.importc: "rootab".}: array[930, doublereal] ##  was [465][2]
    hiltab* {.importc: "hiltab".}: array[930, doublereal] ##  was [465][2]
    hi0tab* {.importc: "hi0tab".}: array[31, doublereal]



type
  mmjcobi_1_* {.importcpp: "mmjcobi_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    plgcan* {.importc: "plgcan".}: array[3968, doublereal] ##  was [496][2][4]
    canjac* {.importc: "canjac".}: array[3968, doublereal] ##  was [496][2][4]



type
  mmcmcnp_1_* {.importcpp: "mmcmcnp_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    cnp* {.importc: "cnp".}: array[3721, doublereal] ##  was [61][61] ;



type
  mmapgss_1_* {.importcpp: "mmapgss_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxjs* {.importc: "gslxjs".}: array[5017, doublereal]
    gsl0js* {.importc: "gsl0js".}: array[52, doublereal]



type
  mmapgs0_1_* {.importcpp: "mmapgs0_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxj0* {.importc: "gslxj0".}: array[4761, doublereal]
    gsl0j0* {.importc: "gsl0j0".}: array[49, doublereal]



type
  mmapgs1_1_* {.importcpp: "mmapgs1_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxj1* {.importc: "gslxj1".}: array[4505, doublereal]
    gsl0j1* {.importc: "gsl0j1".}: array[46, doublereal]



type
  mmapgs2_1_* {.importcpp: "mmapgs2_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxj2* {.importc: "gslxj2".}: array[4249, doublereal]
    gsl0j2* {.importc: "gsl0j2".}: array[43, doublereal]


## //

type
  AdvApp2Var_Data* {.importcpp: "AdvApp2Var_Data", header: "AdvApp2Var_Data.hxx",
                    bycopy.} = object


proc Getmdnombr*(): var mdnombr_1_ {.importcpp: "AdvApp2Var_Data::Getmdnombr(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getminombr*(): var minombr_1_ {.importcpp: "AdvApp2Var_Data::Getminombr(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getmaovpar*(): var maovpar_1_ {.importcpp: "AdvApp2Var_Data::Getmaovpar(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getmaovpch*(): var maovpch_1_ {.importcpp: "AdvApp2Var_Data::Getmaovpch(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getmlgdrtl*(): var mlgdrtl_1_ {.importcpp: "AdvApp2Var_Data::Getmlgdrtl(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getmmjcobi*(): var mmjcobi_1_ {.importcpp: "AdvApp2Var_Data::Getmmjcobi(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getmmcmcnp*(): var mmcmcnp_1_ {.importcpp: "AdvApp2Var_Data::Getmmcmcnp(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getmmapgss*(): var mmapgss_1_ {.importcpp: "AdvApp2Var_Data::Getmmapgss(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getmmapgs0*(): var mmapgs0_1_ {.importcpp: "AdvApp2Var_Data::Getmmapgs0(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getmmapgs1*(): var mmapgs1_1_ {.importcpp: "AdvApp2Var_Data::Getmmapgs1(@)",
                                 header: "AdvApp2Var_Data.hxx".}
proc Getmmapgs2*(): var mmapgs2_1_ {.importcpp: "AdvApp2Var_Data::Getmmapgs2(@)",
                                 header: "AdvApp2Var_Data.hxx".}

const
  mdnombr_* = Getmdnombr()
  minombr_* = Getminombr()
  maovpar_* = Getmaovpar()
  maovpch_* = Getmaovpch()
  mlgdrtl_* = Getmlgdrtl()
  mmjcobi_* = Getmmjcobi()
  mmcmcnp_* = Getmmcmcnp()
  mmapgss_* = Getmmapgss()
  mmapgs0_* = Getmmapgs0()
  mmapgs1_* = Getmmapgs1()
  mmapgs2_* = Getmmapgs2()

