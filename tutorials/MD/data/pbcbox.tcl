############################################################
# REQUIREMENTS:
#   VMD Version 1.8.2
#
# DESCRIPTION:
#   Create a box around the periodic unit cell boundaries. The box can
# reflect changes in the unit cell size (e.g. in constant pressure
# simulations). As a by-product, the procedures box_draw and
# box_delete can be used to create/erase arbitrary orthonormal boxes.
# The script does not handle sheared box geometries.
#
# PROCEDURES:
#   pbcbox [state <on|off|toggle>] [molid $molid] [update <on|off>]
#          [width $w] [style <solid|dashed>]
#
#     Creates/Erases a box that shows the boundaries of the unit cell of 
#   molecule $molid. If "update" is on and the unit cell changes, the
#   box will reflect this. The unit cell size is read from [ molinfo get
#   { a b c } ].
#   This script does not handle sheared box geometries (using 
#   [ molinfo get { alpha beta gamma } ]).
#
#   Options:
#     state		turn the box on, off or toggle the state 
#			(default: toggle)
#     molid		the molecule to add the box to (default: top)
#     update		when turned on, the box will reflect changes
# 			in the unit cell in the different timesteps 
#			(default: off)
#     width		the width of the lines used to create the box 
#			(default: 3)
#     style		the style of the lines used to create the box 
#			(default: solid)
#
#   box_draw $molid $x1 $y1 $z1 $x2 $y2 $z2 [style <solid|dashed>]
#            [width $w]
#
#     Creates an orthonormal box in molecule $molid with the corners
#   ($x1, $y1, $z1) and ($x2, $y2, $z2) using the given style and
#   width for the lines. The procedure returns a list of line handles
#   created by the vmd "graphics" procedure.
#
#   box_delete $molid $box
#
#     Deletes the box $box in molecule $molid. $box is the list of line
#   handles as returned by the "box_draw" procedure.
#
# EXAMPLE USAGE:
#   source pbcbox.tcl
#   set box [ box_draw 0 0 0 0 100 100 100 width 5 style dashed ]
#   box_delete $box
#   pbcbox molid top state on update on width 5 style dashed
#
# AUTHOR:
#         Olaf Lenz
#         Condensed Matter Theory
#         Fakultät für Physik
#         D-33501 Bielefeld
#         Germany
#         olenz@Physik.Uni-Bielefeld.DE
#         +49(0)-521-106-6198
#
#
# Feel free to send comments, bugs, etc.
############################################################

package provide pbcbox 1.0

# draw a box in molecule $molid from { $x1 $y1 $z1 } to { $x2 $y2 $z2 }
# returns a box (the list of graphics objects), that can be deleted with delete_box
proc box_draw { molid x1 y1 z1 x2 y2 z2 args } {
    set width 1
    set style "solid"
    foreach { argname argval } $args {
	switch $argname {
	    "width" { set width $argval }
	    "style" { set style $argval }
	    default { puts "box_draw: Argument $argname not understood!" }
	}
    }
    return [list \
	    [ graphics $molid line [ list $x1 $y1 $z1 ] [ list $x2 $y1 $z1 ] width $width style $style ] \
	    [ graphics $molid line [ list $x1 $y1 $z1 ] [ list $x1 $y2 $z1 ] width $width style $style ] \
	    [ graphics $molid line [ list $x1 $y1 $z1 ] [ list $x1 $y1 $z2 ] width $width style $style ] \
	    [ graphics $molid line [ list $x2 $y2 $z2 ] [ list $x2 $y2 $z1 ] width $width style $style ] \
	    [ graphics $molid line [ list $x2 $y2 $z2 ] [ list $x2 $y1 $z2 ] width $width style $style ] \
	    [ graphics $molid line [ list $x2 $y2 $z2 ] [ list $x1 $y2 $z2 ] width $width style $style ] \
	    [ graphics $molid line [ list $x2 $y1 $z1 ] [ list $x2 $y2 $z1 ] width $width style $style ] \
	    [ graphics $molid line [ list $x2 $y1 $z1 ] [ list $x2 $y1 $z2 ] width $width style $style ] \
	    [ graphics $molid line [ list $x1 $y2 $z1 ] [ list $x2 $y2 $z1 ] width $width style $style ] \
	    [ graphics $molid line [ list $x1 $y2 $z1 ] [ list $x1 $y2 $z2 ] width $width style $style ] \
	    [ graphics $molid line [ list $x1 $y1 $z2 ] [ list $x2 $y1 $z2 ] width $width style $style ] \
	    [ graphics $molid line [ list $x1 $y1 $z2 ] [ list $x1 $y2 $z2 ] width $width style $style ] \
	   ]
}

# delete a box created with draw_box
proc box_delete { molid box } {
    foreach line $box {	graphics $molid delete $line }
}

# draw the periodic box
proc pbcbox_draw { molid } {
    global pbcbox pbcbox_width pbcbox_style
    set pbcbox($molid) [ box_draw $molid 0 0 0 \
			     [ molinfo $molid get a ] \
			     [ molinfo $molid get b ] \
			     [ molinfo $molid get c ] \
			     width $pbcbox_width($molid) \
			     style $pbcbox_style($molid) ]
}

# delete the periodic box
proc pbcbox_delete { molid } {
    global pbcbox
    box_delete $molid $pbcbox($molid)
    array unset pbcbox "$molid"
}

# callback function for vmd_frame, used by "pbcbox update on"
proc pbcbox_update { name1 molid op } {
    display update off
    pbcbox_delete $molid
    pbcbox_draw $molid
    display update on
}

# "main" function: creates the box and sets the callback
proc pbcbox { args } {
    global pbcbox pbcbox_style pbcbox_width vmd_frame

    # Set the defaults
    set molid "top"
    set state "toggle"
    set width 3
    set style "solid"
    set update 0

    # Parse the arguments
    foreach {argname argval} $args {
	switch $argname {
	    "molid" { set molid $argval }
	    "state" { set state $argval }
	    "width" { set width $argval }
	    "style" { set style $argval }
	    "update" { set update $argval }
	    default { puts "pbcbox: Argument $argname not understood!" }
	}
    }

    if { $molid == "top" } then { set molid [ molinfo top ] }
    if { $update == "on" } then { set update 1 } \
	elseif { $update == "off" } then { set update 0 }

    set pbcbox_width($molid) $width
    set pbcbox_style($molid) $style

    if { [ info exists pbcbox($molid) ] && \
	 ( $state == "off" || $state == "toggle" ) } then {
	display update off
	# deactivate tracing
	if { $update } then { trace vdelete vmd_frame($molid) w pbcbox_update }
	# delete the box
	pbcbox_delete $molid
	display update on
    } elseif { ! [ info exists pbcbox($molid) ] && \
	       ( $state == "on" || $state == "toggle" ) } then {
	display update off
	# activate tracing
	if { $update } then { trace variable vmd_frame($molid) w pbcbox_update }
	pbcbox_draw $molid
	display update on
    }
}

pbcbox on

