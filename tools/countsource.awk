BEGIN{
    linecount = 0;
    proccount = 0;
}

// {linecount++;}
/^begin/ { proccount++; }

END{
    print "Line count " linecount;
    print "Procedure Count " proccount;
}
