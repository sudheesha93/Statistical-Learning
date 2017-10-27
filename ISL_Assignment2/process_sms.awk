#
# for processing SMS data http://www.dt.fee.unicamp.br/~tiago/smsspamcollection/smsspamcollection.zip
#       - "\t" is to be replaced by ",". 
#       - Double quote (") in the free text needs to be replaced by single quote (').
#       - Then, the sms text is to be included in "
# usage
# works on linux or mac, unless you've awk on your windows machinage
# command:
#
#    % awk -f process_sms.awk source_SMS_file > output_SMS_file
#
#  in some systems, awk may need to be replaced with gawk or nawk
#
{
   gsub("\t",",",$0)
   gsub("\"","'",$0)
   split($0,a,",")
   printf("%s,\"%s\"\n", a[1] , a[2]) 
}
