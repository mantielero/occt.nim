#import std/strformat

import wrapper/occt_wrapper
export occt_wrapper


# <iomanip>
import lib/foundation/[std]
export std

# Porqué no está accesible `$` desde point.
import lib/foundation/[gp]
export gp

import lib/primitives/[primitives]
export primitives

import lib/exporter/[toStep]
export toStep

import lib/foundation/[iter, types]
export iter, types

import lib/gc/[gc]
export gc

import lib/tkoffset/tkoffset
export tkoffset

import lib/tktopalgo/[breplib]
export breplib


import lib/explorer/explorer
export explorer

import lib/geom/[cartesian_point, geom]
export cartesian_point, geom

import lib/geom2d/[geom2d, gce2d]
export geom2d, gce2d

import lib/topology/[edge, wire, compound]
export edge, wire, compound



#========== NEW API ===============
import lib/sketcher/[common, sketcher2d, ellipse, circle, rectangle]
export common, sketcher2d, ellipse, circle, rectangle

import lib/topo2d/topo2d
export topo2d

import lib/geom2d/[api2d]
export api2d
#proc `$`*(pnt:gp_Pnt):string =
#  &"Pnt(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

#include lib/point
#[
import tkmath/gp/[gp_types, gp_ax1, gp_dir, gp_pnt, gp_trsf, gp_vec, gp_xyz, gp_sugar]
export gp_types, gp_ax1, gp_dir, gp_pnt, gp_trsf, gp_vec, gp_xyz, gp_sugar

import tkernel/standard/[standard_types, standard_handle]
export standard_types, standard_handle

import tkg3d/geom/[geom_types, geom_cartesianpoint, geom_point, geom_sugar]
export geom_types, geom_cartesianpoint, geom_point, geom_sugar

import tkprim/brepprimapi/[brepprimapi_types, brepprimapi_makebox, brepprimapi_makecylinder]
export brepprimapi_types, brepprimapi_makebox, brepprimapi_makecylinder
import tkprim/brepprimapi/[brepprimapi_makeoneaxis]
export brepprimapi_makeoneaxis


import tktopalgo/brepbuilderapi/[brepbuilderapi_types, brepbuilderapi_makeshape]
export brepbuilderapi_types, brepbuilderapi_makeshape


import tkbo/brepalgoapi/[brepalgoapi_types, brepalgoapi_cut]
export brepalgoapi_types, brepalgoapi_cut
]#
#include wrapper/tkstep/tkstep