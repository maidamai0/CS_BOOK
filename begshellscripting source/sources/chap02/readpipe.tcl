# Opening a pipe for reading.

#
# Opens command as a pipe for reading.
# Pass command without the leading | character.
#
proc read_pipe { command } {

    # Initialize
    set data ""

    # Start piped command.
    set fileid [open |$command r]

    if { $fileid != "" } {

        # Read data.
        set data [read $fileid]

        close $fileid
    }

    return $data
}

# readpipe.tcl

