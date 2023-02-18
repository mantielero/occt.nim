#import std/strformat

import wrapper/occt_wrapper
export occt_wrapper

# Porqué no está accesible `$` desde point.
import lib/primitives/[point, primitives]
export point, primitives

import lib/handles/[cartesian_point]
export cartesian_point

import lib/exporter/[toStep]
export toStep



#proc `$`*(pnt:PntObj):string =
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