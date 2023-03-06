{.passL:"-lTKernel".}
{.passC:"-I/usr/include/opencascade/" .}

import message_types

import message
import message_alert
import message_alertextended
import message_algorithm
import message_attribute
import message_attributemeter
import message_attributeobject
import message_attributestream
import message_compositealerts
#import message_consolecolor
import message_execstatus
#import message_gravity
#import message_harrayofmsg
import message_level
import message_listiteratoroflistofmsg
#import message_listofalert
#import message_listofmsg
import message_messenger
#import message_metrictype
import message_msg
import message_msgfile
import message_printer
import message_printerostream
import message_printersystemlog
import message_printertoreport
import message_progressindicator
import message_progressrange
import message_progressscope
import message_progresssentry
import message_report
#import message_sequenceofprinters
#import message_status
#import message_statustype

export message_types, message, message_alert, message_alertextended
export message_algorithm, message_attribute, message_attributemeter
export message_attributeobject, message_attributestream
export message_compositealerts, message_execstatus #  message_consolecolor,
export message_level # message_gravity, message_harrayofmsg, 
export message_listiteratoroflistofmsg#, message_listofmsg  # message_listofalert, 
export message_messenger, message_msg, message_msgfile # message_metrictype,
export message_printer, message_printerostream, message_printersystemlog
export message_printertoreport, message_progressindicator, message_progressrange
export message_progressscope, message_progresssentry, message_report
#export message_statustype # message_status, message_sequenceofprinters, 
